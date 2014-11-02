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
package org.meveo.service.crm.impl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;

import org.meveo.model.crm.CustomerCategory;
import org.meveo.service.base.PersistenceService;

/**
 * Service Template service implementation.
 */
@Stateless
public class CustomerCategoryService extends
		PersistenceService<CustomerCategory> {

	public CustomerCategory findByCode(String code) {
		try {
			return (CustomerCategory) getEntityManager()
					.createQuery(
							"from " + CustomerCategory.class.getSimpleName()
									+ " where code=:code")
					.setParameter("code", code).getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}

	public CustomerCategory findByCode(EntityManager em, String code) {
		try {
			return (CustomerCategory) em
					.createQuery(
							"from " + CustomerCategory.class.getSimpleName()
									+ " where code=:code")
					.setParameter("code", code).getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}
}
