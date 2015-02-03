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
import javax.inject.Inject;
import javax.persistence.EntityManager;

import org.meveo.admin.exception.BusinessException;
import org.meveo.commons.utils.QueryBuilder;
import org.meveo.model.admin.Seller;
import org.meveo.model.admin.User;
import org.meveo.model.billing.BillingWalletTypeEnum;
import org.meveo.model.billing.CounterInstance;
import org.meveo.model.billing.InstanceStatusEnum;
import org.meveo.model.billing.ServiceInstance;
import org.meveo.model.billing.Subscription;
import org.meveo.model.billing.UsageChargeInstance;
import org.meveo.model.catalog.ServiceChargeTemplateUsage;
import org.meveo.model.catalog.WalletTemplate;
import org.meveo.service.base.BusinessService;

@Stateless
public class UsageChargeInstanceService extends BusinessService<UsageChargeInstance> {

	@EJB
	UsageRatingService usageRatingService;

	@Inject
	private WalletService walletService;

	@Inject
	private CounterInstanceService counterInstanceService;

	public UsageChargeInstance usageChargeInstanciation(Subscription subscription, ServiceInstance serviceInstance,
			ServiceChargeTemplateUsage serviceUsageChargeTemplate, Date startDate, Seller seller, User creator)
			throws BusinessException {
		return usageChargeInstanciation(getEntityManager(), subscription, serviceInstance, serviceUsageChargeTemplate,
				startDate, seller, creator);
	}

	public UsageChargeInstance usageChargeInstanciation(EntityManager em, Subscription subscription,
			ServiceInstance serviceInstance, ServiceChargeTemplateUsage serviceUsageChargeTemplate, Date startDate,
			Seller seller, User creator) throws BusinessException {

		UsageChargeInstance usageChargeInstance = new UsageChargeInstance();
		usageChargeInstance.setSubscription(subscription);
		usageChargeInstance.setChargeTemplate(serviceUsageChargeTemplate.getChargeTemplate());
		usageChargeInstance.setChargeDate(startDate);
		usageChargeInstance.setAmountWithoutTax(null);
		usageChargeInstance.setAmountWithTax(null);
		usageChargeInstance.setStatus(InstanceStatusEnum.INACTIVE);
		usageChargeInstance.setServiceInstance(serviceInstance);
		usageChargeInstance.setUnityDescription(serviceUsageChargeTemplate.getChargeTemplate().getUnityDescription());
		usageChargeInstance.setSeller(seller);
		usageChargeInstance.setCountry(subscription.getUserAccount().getBillingAccount().getTradingCountry());
		usageChargeInstance.setCurrency(subscription.getUserAccount().getBillingAccount().getCustomerAccount()
				.getTradingCurrency());
		ServiceChargeTemplateUsage usaChTmplServ = serviceInstance.getServiceTemplate()
				.getServiceChargeTemplateUsageByChargeCode(serviceUsageChargeTemplate.getChargeTemplate().getCode());
		List<WalletTemplate> walletTemplates = usaChTmplServ.getWalletTemplates();
		if (walletTemplates != null && walletTemplates.size() > 0) {
			for (WalletTemplate walletTemplate : walletTemplates) {
				if(walletTemplate.getWalletType()==BillingWalletTypeEnum.PREPAID){
					usageChargeInstance.setPrepaid(true);
				}
				log.debug("add walletInstance for template {}",walletTemplate.getCode());
				usageChargeInstance.getWalletInstances().add(
						walletService.getWalletInstance(serviceInstance.getSubscription().getUserAccount(),
								walletTemplate, serviceInstance.getAuditable().getCreator(),
								serviceInstance.getProvider()));
			}
		} else {
			usageChargeInstance.setPrepaid(false);
			log.debug("add postpaid walletInstance");
			usageChargeInstance.getWalletInstances()
					.add(serviceInstance.getSubscription().getUserAccount().getWallet());
		}
		create(usageChargeInstance, creator, serviceInstance.getProvider());

		if (serviceUsageChargeTemplate.getCounterTemplate() != null) {
			CounterInstance counterInstance = counterInstanceService.counterInstanciation(serviceInstance
					.getSubscription().getUserAccount(), serviceUsageChargeTemplate.getCounterTemplate(), creator);
			usageChargeInstance.setCounter(counterInstance);
			setProvider(creator.getProvider());
			update(usageChargeInstance, creator);
		}

		return usageChargeInstance;
	}

	public void activateUsageChargeInstance(UsageChargeInstance usageChargeInstance, User currentUser) {
		activateUsageChargeInstance(getEntityManager(), usageChargeInstance, currentUser);
	}

	public void activateUsageChargeInstance(EntityManager em, UsageChargeInstance usageChargeInstance, User currentUser) {
		usageChargeInstance.setStatus(InstanceStatusEnum.ACTIVE);
		setProvider(currentUser.getProvider());
		update(usageChargeInstance, currentUser);
		usageRatingService.updateCache(usageChargeInstance);
	}

	public void terminateUsageChargeInstance(UsageChargeInstance usageChargeInstance, Date terminationDate) {
		terminateUsageChargeInstance(usageChargeInstance, terminationDate, getCurrentUser());
	}

	public void terminateUsageChargeInstance(UsageChargeInstance usageChargeInstance, Date terminationDate,
			User currentUser) {
		terminateUsageChargeInstance(getEntityManager(), usageChargeInstance, terminationDate, currentUser);
	}

	public void terminateUsageChargeInstance(EntityManager em, UsageChargeInstance usageChargeInstance,
			Date terminationDate, User currentUser) {
		usageChargeInstance.setTerminationDate(terminationDate);
		usageChargeInstance.setStatus(InstanceStatusEnum.TERMINATED);
		usageRatingService.updateCache(usageChargeInstance);
		update(usageChargeInstance, currentUser);
	}

	public void suspendUsageChargeInstance(UsageChargeInstance usageChargeInstance, Date suspensionDate) {
		usageChargeInstance.setTerminationDate(suspensionDate);
		usageChargeInstance.setStatus(InstanceStatusEnum.SUSPENDED);
		usageRatingService.updateCache(usageChargeInstance);
		update(usageChargeInstance);
	}

	public void reactivateUsageChargeInstance(UsageChargeInstance usageChargeInstance, Date reactivationDate) {
		usageChargeInstance.setChargeDate(reactivationDate);
		usageChargeInstance.setTerminationDate(null);
		usageChargeInstance.setStatus(InstanceStatusEnum.ACTIVE);
		usageRatingService.updateCache(usageChargeInstance);
		update(usageChargeInstance);
	}

	@SuppressWarnings("unchecked")
	public List<UsageChargeInstance> findUsageChargeInstanceBySubscriptionId(Long subscriptionId) {
		QueryBuilder qb = new QueryBuilder(UsageChargeInstance.class, "c");
		qb.addCriterion("c.subscription.id", "=", subscriptionId, true);
		return qb.getQuery(getEntityManager()).getResultList();
	}

}
