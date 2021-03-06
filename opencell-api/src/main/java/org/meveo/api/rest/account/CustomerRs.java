package org.meveo.api.rest.account;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.meveo.api.dto.ActionStatus;
import org.meveo.api.dto.account.CustomerBrandDto;
import org.meveo.api.dto.account.CustomerCategoryDto;
import org.meveo.api.dto.account.CustomerDto;
import org.meveo.api.dto.response.account.CustomersResponseDto;
import org.meveo.api.dto.response.account.GetCustomerResponseDto;
import org.meveo.api.rest.IBaseRs;

/**
 * @author Edward P. Legaspi
 **/
@Path("/account/customer")
@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })

public interface CustomerRs extends IBaseRs {

    /**
     * Create a new customer
     * 
     * @param postData The customer's data
     * @return Request processing status
     */
    @POST
    @Path("/")
    ActionStatus create(CustomerDto postData);

    /**
     * Update an existing customer
     * 
     * @param postData The customer's data
     * @return Request processing status
     */
    @PUT
    @Path("/")
    ActionStatus update(CustomerDto postData);

    /**
     * Search for a customer with a given code 
     * 
     * @param customerCode The customer's code
     * @return The customer's data
     */
    @GET
    @Path("/")
    GetCustomerResponseDto find(@QueryParam("customerCode") String customerCode);

    /**
     * Remove customer with a given code 
     * 
     * @param customerCode The customer's code
     * @return Request processing status
     */
    @DELETE
    @Path("/{customerCode}")
    ActionStatus remove(@PathParam("customerCode") String customerCode);

    /**
     * Filters are: category, seller, brand and provider
     * 
     * @param postData The customer's data
     * @return
     */
    @POST
    @Path("/list")
    CustomersResponseDto list(CustomerDto postData, @QueryParam("firstRow") int firstRow, @QueryParam("numberOfRows") int numberOfRows);

    /**
     * Create a new customer brand
     * 
     * @param postData The customer brand's data
     * @return Request processing status
     */
    @POST
    @Path("/createBrand")
    ActionStatus createBrand(CustomerBrandDto postData);

    /**
     * Update an existing customer brand
     * 
     * @param postData The customer brand's data
     * @return Request processing status
     */
    @PUT
    @Path("/updateBrand")
    ActionStatus updateBrand(CustomerBrandDto postData);

    /**
     * Create new or update an existing customer brand
     * 
     * @param postData The customer brand's data
     * @return Request processing status
     */
    @POST
    @Path("/createOrUpdateBrand")
    ActionStatus createOrUpdateBrand(CustomerBrandDto postData);

    /**
     * Create a new customer category
     * 
     * @param postData The customer category's data
     * @return Request processing status
     */
    @POST
    @Path("/createCategory")
    ActionStatus createCategory(CustomerCategoryDto postData);

    /**
     * Update an existing customer category
     * 
     * @param postData The customer category's data
     * @return Request processing status
     */
    @PUT
    @Path("/updateCategory")
    ActionStatus updateCategory(CustomerCategoryDto postData);

    /**
     * Create new or update an existing customer category
     * 
     * @param postData The customer category's data
     * @return Request processing status
     */
    @POST
    @Path("/createOrUpdateCategory")
    ActionStatus createOrUpdateCategory(CustomerCategoryDto postData);

    /**
     * Remove existing customer brand with a given brand code 
     * 
     * @param brandCode The brand's code
     * @return Request processing status
     */
    @DELETE
    @Path("/removeBrand/{brandCode}")
    ActionStatus removeBrand(@PathParam("brandCode") String brandCode);

    /**
     * Remove an existing customer category with a given category code 
     * 
     * @param categoryCode The category's code
     * @return Request processing status
     */
    @DELETE
    @Path("/removeCategory/{categoryCode}")
    ActionStatus removeCategory(@PathParam("categoryCode") String categoryCode);

    /**
     * Create new or update existing customer
     * 
     * @param postData The customer's data
     * @return Request processing status
     */
    @POST
    @Path("/createOrUpdate")
    ActionStatus createOrUpdate(CustomerDto postData);

}
