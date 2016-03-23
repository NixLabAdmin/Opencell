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
package org.meveo.service.payments.impl;

import java.util.List;

import javax.ejb.Stateless;
import javax.inject.Inject;

import org.meveo.commons.utils.QueryBuilder;
import org.meveo.model.crm.Provider;
import org.meveo.model.payments.OCCTemplate;
import org.meveo.service.base.PersistenceService;
import org.meveo.service.crm.impl.CustomFieldInstanceService;

/**
 * OCCTemplate service implementation.
 */
@Stateless
public class OCCTemplateService extends PersistenceService<OCCTemplate> {

	private static final String DUNNING_OCC_CODE = "bayad.dunning.occCode";
	private static final String DDREQUEST_OCC_CODE = "bayad.ddrequest.occCode";
		
    @Inject
    private CustomFieldInstanceService customFieldInstanceService;

	public OCCTemplate findByCode(String code, String providerCode) {
		OCCTemplate occTemplate = null;
		log.debug("start of find {} by code (code={}) ..", "OCCTemplate", code);
		try {
			QueryBuilder qb = new QueryBuilder(OCCTemplate.class, "c");
			qb.addCriterion("c.code", "=", code, true);
			qb.addCriterion("c.provider.code", "=", providerCode, true);
			occTemplate = (OCCTemplate) qb.getQuery(getEntityManager()).getSingleResult();
			log.debug("end of find {} by code (code={}). Result found={}.", new Object[] { "OCCTemplate", code, occTemplate != null });
		} catch (Exception e) {
			return null;
		}

		return occTemplate;
	}

	@SuppressWarnings("unchecked")
	public List<OCCTemplate> getListOccSortedByName(String providerCode) {
		log.debug("start of find list {} SortedByName for provider (code={}) ..", "OCCTemplate", providerCode);
		QueryBuilder qb = new QueryBuilder(OCCTemplate.class, "c");
		qb.addCriterion("c.provider.code", "=", providerCode, true);
		qb.addOrderCriterion("description", true);
		List<OCCTemplate> occTemplates = (List<OCCTemplate>) qb.getQuery(getEntityManager()).getResultList();
		log.debug("start of find list {} SortedByName for provider (code={})  result {}", new Object[] { "OCCTemplate", providerCode, occTemplates == null ? "null" : occTemplates.size() });
		return occTemplates;
	}

	public OCCTemplate getDunningOCCTemplate(Provider provider) throws Exception {
		String occCodeDefaultValue = "OD_PREL";				
		return getOccTemplateByCFKeyOrProperty(DUNNING_OCC_CODE, occCodeDefaultValue, provider);
	}

	public OCCTemplate getDirectDebitOCCTemplate(Provider provider) {				
		String occCodeDefaultValue = "DD_OCC";				
		return getOccTemplateByCFKeyOrProperty(DDREQUEST_OCC_CODE, occCodeDefaultValue, provider);
	}

    private OCCTemplate getOccTemplateByCFKeyOrProperty(String occCodeKey, String occCodeDefaultValue, Provider provider) {

        try {
            String occTemplateCode = null;
            occTemplateCode = (String) customFieldInstanceService.getOrCreateCFValueFromParamValue(occCodeKey, occCodeDefaultValue, provider, true, getCurrentUser());
            return findByCode(occTemplateCode, provider);

        } catch (Exception e) {
            log.error("error while getting occ template ", e);
            return null;
        }
    }

	public OCCTemplate findByCode(String code, Provider provider) {
		OCCTemplate occTemplate = null;
		log.debug("start of find {} by code (code={}) ..", "OCCTemplate", code);
		try {
			QueryBuilder qb = new QueryBuilder(OCCTemplate.class, "c");
			qb.addCriterion("c.code", "=", code, true);
			qb.addCriterionEntity("c.provider", provider);
			occTemplate = (OCCTemplate) qb.getQuery(getEntityManager()).getSingleResult();
			log.debug("end of find {} by code (code={}). Result found={}.", new Object[] { "OCCTemplate", code,
					occTemplate != null });
		} catch (Exception e) {
			return null;
		}

		return occTemplate;
	}
}
