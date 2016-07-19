/*
 * (C) Copyright 2015-2016 Opencell SAS (http://opencellsoft.com/) and contributors.
 * (C) Copyright 2009-2014 Manaty SARL (http://manaty.net/) and contributors.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
 * This program is not suitable for any direct or indirect application in MILITARY industry
 * See the GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package org.meveo.service.catalog.impl;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.meveo.admin.exception.BusinessException;
import org.meveo.commons.utils.QueryBuilder;
import org.meveo.model.admin.User;
import org.meveo.model.catalog.ServiceChargeTemplateRecurring;
import org.meveo.model.catalog.ServiceChargeTemplateSubscription;
import org.meveo.model.catalog.ServiceChargeTemplateTermination;
import org.meveo.model.catalog.ServiceChargeTemplateUsage;
import org.meveo.model.catalog.ServiceTemplate;
import org.meveo.model.crm.Provider;
import org.meveo.service.base.BusinessService;
import org.meveo.service.crm.impl.CustomFieldInstanceService;

/**
 * Service Template service implementation.
 * 
 */
@Stateless
public class ServiceTemplateService extends BusinessService<ServiceTemplate> {
	
	@Inject
	private ServiceChargeTemplateSubscriptionService serviceChargeTemplateSubscriptionService;
	
	@Inject
	private ServiceChargeTemplateTerminationService serviceChargeTemplateTerminationService;
	
	@Inject
	private ServiceChargeTemplateRecurringService serviceChargeTemplateRecurringService;
	
	@Inject
	private ServiceChargeTemplateUsageService serviceChargeTemplateUsageService;
	
	@Inject
    private CustomFieldInstanceService customFieldInstanceService;
	
	@Override
	public void create(ServiceTemplate serviceTemplate, User creator) throws BusinessException {
		super.create(serviceTemplate, creator);
	}

	@Override
	public ServiceTemplate update(ServiceTemplate serviceTemplate, User updater) throws BusinessException {
		ServiceTemplate result = super.update(serviceTemplate, updater);
		return result;
	}

	public void removeByCode(EntityManager em, String code, Provider provider) {
		Query query = em.createQuery("DELETE ServiceTemplate t WHERE t.code=:code AND t.provider=:provider");
		query.setParameter("code", code);
		query.setParameter("provider", provider);
		query.executeUpdate();
	}

	public int getNbServiceWithNotOffer(Provider provider) {
		return ((Long) getEntityManager().createNamedQuery("serviceTemplate.getNbServiceWithNotOffer", Long.class)
				.setParameter("provider", provider).getSingleResult()).intValue();
	}

	public List<ServiceTemplate> getServicesWithNotOffer(Provider provider) {
		return (List<ServiceTemplate>) getEntityManager()
				.createNamedQuery("serviceTemplate.getServicesWithNotOffer", ServiceTemplate.class)
				.setParameter("provider", provider).getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<ServiceTemplate> listAllActiveExcept(ServiceTemplate st, Provider provider) {
		QueryBuilder qb = new QueryBuilder(ServiceTemplate.class, "s", null, provider);
		qb.addCriterion("id", "<>", st.getId(), true);

		try {
			return (List<ServiceTemplate>) qb.getQuery(getEntityManager()).getResultList();
		} catch (NoResultException e) {
			return null;
		}
	}
	
	private String findDuplicateCode(ServiceTemplate service,User currentUser){
		String code=service.getCode()+" - Copy";
		int id=1;
		String criteria=code;
		ServiceTemplate entity=null;
		while(true){
			entity=findByCode(criteria, currentUser.getProvider());
			if(entity==null){
				break;
			}
			id++;
			criteria=code+" "+id;
		}
		return criteria;
	}
	public void duplicate(ServiceTemplate entity,User currentUser) throws BusinessException{
		entity = refreshOrRetrieve(entity);
        
        // Lazy load related values first 
		entity.getServiceRecurringCharges().size();
		entity.getServiceSubscriptionCharges().size();
		entity.getServiceTerminationCharges().size();
		entity.getServiceUsageCharges().size();
		String code=findDuplicateCode(entity,currentUser);

		// Detach and clear ids of entity and related entities
		detach(entity);
		entity.setId(null);
        String sourceAppliesToEntity = entity.clearUuid();
        
		List<ServiceChargeTemplateRecurring> recurrings=entity.getServiceRecurringCharges();
		entity.setServiceRecurringCharges(new ArrayList<ServiceChargeTemplateRecurring>());
		for(ServiceChargeTemplateRecurring recurring:recurrings){
			recurring.getWalletTemplates().size();
			serviceChargeTemplateRecurringService.detach(recurring);
			recurring.setId(null);
			recurring.setServiceTemplate(entity);
			entity.getServiceRecurringCharges().add(recurring);
		}
		List<ServiceChargeTemplateSubscription> subscriptions=entity.getServiceSubscriptionCharges();
		entity.setServiceSubscriptionCharges(new ArrayList<ServiceChargeTemplateSubscription>());
		for(ServiceChargeTemplateSubscription subscription:subscriptions){
			subscription.getWalletTemplates().size();
			serviceChargeTemplateSubscriptionService.detach(subscription);
			subscription.setId(null);
			subscription.setServiceTemplate(entity);
			entity.getServiceSubscriptionCharges().add(subscription);
		}
		List<ServiceChargeTemplateTermination> terminations=entity.getServiceTerminationCharges();
		entity.setServiceTerminationCharges(new ArrayList<ServiceChargeTemplateTermination>());
		for(ServiceChargeTemplateTermination termination:terminations){
			termination.getWalletTemplates().size();
			serviceChargeTemplateTerminationService.detach(termination);
			termination.setId(null);
			termination.setServiceTemplate(entity);
			entity.getServiceTerminationCharges().add(termination);
		}
		List<ServiceChargeTemplateUsage> usages=entity.getServiceUsageCharges();
		entity.setServiceUsageCharges(new ArrayList<ServiceChargeTemplateUsage>());
		for(ServiceChargeTemplateUsage usage:usages){
			usage.getWalletTemplates().size();
			serviceChargeTemplateUsageService.detach(usage);
			usage.setId(null);
			usage.setServiceTemplate(entity);
			entity.getServiceUsageCharges().add(usage);
		}
		entity.setCode(code);
		
		create(entity, getCurrentUser());
		customFieldInstanceService.duplicateCfValues(sourceAppliesToEntity, entity, getCurrentUser());
	}
            
}