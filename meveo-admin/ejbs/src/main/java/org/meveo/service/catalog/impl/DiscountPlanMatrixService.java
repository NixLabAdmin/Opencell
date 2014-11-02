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
package org.meveo.service.catalog.impl;

import java.util.Set;

import javax.ejb.Stateless;

import org.meveo.model.admin.User;
import org.meveo.model.catalog.DiscountPlanMatrix;
import org.meveo.service.base.PersistenceService;
import org.meveo.service.billing.impl.RatingService;

@Stateless
public class DiscountPlanMatrixService extends
		PersistenceService<DiscountPlanMatrix> {
	public void create(DiscountPlanMatrix e) {
		super.create(e);
		RatingService.setDiscountPlanDirty();
	}

	public void update(DiscountPlanMatrix e) {
		super.update(e);
		RatingService.setDiscountPlanDirty();
	}

	public void remove(Long id) {
		super.remove(id);
		RatingService.setDiscountPlanDirty();
	}

	public void disable(Long id) {
		super.disable(id);
		RatingService.setDiscountPlanDirty();
	}

	public void remove(DiscountPlanMatrix e) {
		super.remove(e);
		RatingService.setDiscountPlanDirty();
	}

	public void remove(Set<Long> ids) {
		super.remove(ids);
		RatingService.setDiscountPlanDirty();
	}

	public void update(DiscountPlanMatrix e, User updater) {
		super.update(e, updater);
		RatingService.setDiscountPlanDirty();
	}

	public void create(DiscountPlanMatrix e, User creator) {
		super.create(e, creator);
		RatingService.setDiscountPlanDirty();
	}
}
