package org.meveo.api.tmforum.rest.impl;

import java.util.ArrayList;
import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.interceptor.Interceptors;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;
import javax.ws.rs.core.UriInfo;

import org.meveo.api.catalog.CatalogApi;
import org.meveo.api.logging.LoggingInterceptor;
import org.meveo.api.rest.impl.BaseRs;
import org.meveo.api.tmforum.rest.CatalogRs;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.tmf.dsmapi.catalog.resource.category.Category;
import org.tmf.dsmapi.catalog.resource.product.ProductOffering;
import org.tmf.dsmapi.catalog.resource.product.ProductSpecification;

@RequestScoped
@Interceptors({ LoggingInterceptor.class })
public class CatalogRsImpl extends BaseRs implements CatalogRs {

	@Inject
	private Logger log = LoggerFactory.getLogger(CatalogRsImpl.class);

	@Context
	private UriInfo uriInfo;
	
	@Inject
	private CatalogApi catalogApi;

	@Override
	public List<Category> findCategories() {
		List<Category> categories = new ArrayList<Category>();
		categories.add(Category.createProto(uriInfo));
		return categories;
	}

	@Override
	public Response findCategoryById(String id) {
		log.debug("find catetegory by id {}", id);
		if (!"1".equals(id)) {
			return Response.status(Status.NOT_FOUND).build();
		}
		return Response.ok().entity(Category.createProto(uriInfo)).build();
	}
	public List<ProductOffering> findProductOfferings() {
		log.debug("find productOfferings ... ");
		List<ProductOffering> productOfferings=catalogApi.findProductOfferings(uriInfo, Category.createProto(uriInfo));
		return productOfferings;
	}

	@Override
	public Response findProductOfferingById(String id) {
		log.debug("find productOffering by id {}",id);
		ProductOffering productOffering = null;
		try {
			productOffering=catalogApi.findProductOffering(id, getCurrentUser(),uriInfo,Category.createProto(uriInfo));
		} catch (Exception e) {
		}
		if(productOffering==null){
			return Response.status(Status.NOT_FOUND).entity("not found").build();
		}
		return Response.ok().entity(productOffering).build();
	}

	@Override
	public List<ProductSpecification> findProductSpecifications() {
		log.debug("find productSpecifications ... ");
		return catalogApi.findProductSpecifications(uriInfo);
	}

	@Override
	public Response findProductSpecificationById(String id) {
		log.debug("find productSpecification by id {}",id);
		ProductSpecification productSpecification = null;
		try{
			productSpecification=catalogApi.findProductSpecification(id, getCurrentUser(), uriInfo);
		}catch(Exception e){}
		if (productSpecification == null) {
			return Response.status(Status.NOT_FOUND).entity("no found!").build();
		}
		return Response.ok().entity(productSpecification).build();
	}
}