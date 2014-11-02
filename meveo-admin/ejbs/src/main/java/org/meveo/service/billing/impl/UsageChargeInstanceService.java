/*
 * (C) Copyright 2009-2014 Manaty SARL (http://manaty.net/) and contributors.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package org.meveo.service.billing.impl;

import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;

import org.meveo.admin.exception.BusinessException;
import org.meveo.commons.utils.QueryBuilder;
import org.meveo.model.admin.Seller;
import org.meveo.model.admin.User;
import org.meveo.model.billing.CounterInstance;
import org.meveo.model.billing.InstanceStatusEnum;
import org.meveo.model.billing.ServiceInstance;
import org.meveo.model.billing.Subscription;
import org.meveo.model.billing.UsageChargeInstance;
import org.meveo.model.catalog.ServiceUsageChargeTemplate;
import org.meveo.service.base.BusinessService;

@Stateless
public class UsageChargeInstanceService extends
		BusinessService<UsageChargeInstance> {

	@EJB
	private WalletOperationService chargeApplicationService;

	@EJB
	UsageRatingService usageRatingService;

	@EJB
	private CounterInstanceService counterInstanceService;

	public UsageChargeInstance usageChargeInstanciation(
			Subscription subscription, ServiceInstance serviceInstance,
			ServiceUsageChargeTemplate serviceUsageChargeTemplate,
			Date startDate, Seller seller, User creator)
			throws BusinessException {
		return usageChargeInstanciation(getEntityManager(), subscription,
				serviceInstance, serviceUsageChargeTemplate, startDate, seller,
				creator);
	}

	public UsageChargeInstance usageChargeInstanciation(EntityManager em,
			Subscription subscription, ServiceInstance serviceInstance,
			ServiceUsageChargeTemplate serviceUsageChargeTemplate,
			Date startDate, Seller seller, User creator)
			throws BusinessException {

		UsageChargeInstance usageChargeInstance = new UsageChargeInstance();
		usageChargeInstance.setSubscription(subscription);
		usageChargeInstance.setChargeTemplate(serviceUsageChargeTemplate
				.getChargeTemplate());
		usageChargeInstance.setChargeDate(startDate);
		usageChargeInstance.setAmountWithoutTax(null);
		usageChargeInstance.setAmountWithTax(null);
		usageChargeInstance.setStatus(InstanceStatusEnum.INACTIVE);
		usageChargeInstance.setServiceInstance(serviceInstance);
		usageChargeInstance.setSeller(seller);
		usageChargeInstance.setCountry(subscription.getUserAccount()
				.getBillingAccount().getTradingCountry());
		usageChargeInstance.setCurrency(subscription.getUserAccount()
				.getBillingAccount().getCustomerAccount().getTradingCurrency());

		create(em, usageChargeInstance, creator, serviceInstance.getProvider());
		if (serviceUsageChargeTemplate.getCounterTemplate() != null) {
			CounterInstance counterInstance = counterInstanceService
					.counterInstanciation(em, serviceInstance.getSubscription()
							.getUserAccount(), serviceUsageChargeTemplate
							.getCounterTemplate(), creator);
			usageChargeInstance.setCounter(counterInstance);
			update(em, usageChargeInstance, creator);
		}

		return usageChargeInstance;
	}

	public void activateUsageChargeInstance(
			UsageChargeInstance usageChargeInstance) {
		activateUsageChargeInstance(getEntityManager(), usageChargeInstance);
	}

	public void activateUsageChargeInstance(EntityManager em,
			UsageChargeInstance usageChargeInstance) {
		usageChargeInstance.setStatus(InstanceStatusEnum.ACTIVE);
		update(em, usageChargeInstance);
		usageRatingService.updateCache(usageChargeInstance);
	}

	public void terminateUsageChargeInstance(
			UsageChargeInstance usageChargeInstance, Date terminationDate) {
		terminateUsageChargeInstance(getEntityManager(), usageChargeInstance,
				terminationDate);
	}

	public void terminateUsageChargeInstance(EntityManager em,
			UsageChargeInstance usageChargeInstance, Date terminationDate) {
		usageChargeInstance.setTerminationDate(terminationDate);
		usageChargeInstance.setStatus(InstanceStatusEnum.TERMINATED);
		usageRatingService.updateCache(usageChargeInstance);
		update(em, usageChargeInstance);
	}

	public void suspendUsageChargeInstance(
			UsageChargeInstance usageChargeInstance, Date suspensionDate) {
		usageChargeInstance.setTerminationDate(suspensionDate);
		usageChargeInstance.setStatus(InstanceStatusEnum.SUSPENDED);
		usageRatingService.updateCache(usageChargeInstance);
		update(usageChargeInstance);
	}

	public void reactivateUsageChargeInstance(
			UsageChargeInstance usageChargeInstance, Date reactivationDate) {
		usageChargeInstance.setChargeDate(reactivationDate);
		usageChargeInstance.setTerminationDate(null);
		usageChargeInstance.setStatus(InstanceStatusEnum.ACTIVE);
		usageRatingService.updateCache(usageChargeInstance);
		update(usageChargeInstance);
	}

	@SuppressWarnings("unchecked")
	public List<UsageChargeInstance> findUsageChargeInstanceBySubscriptionId(
			Long subscriptionId) {
		QueryBuilder qb = new QueryBuilder(UsageChargeInstance.class, "c");
		qb.addCriterion("c.subscription.id", "=", subscriptionId, true);
		return qb.getQuery(getEntityManager()).getResultList();
	}

}
