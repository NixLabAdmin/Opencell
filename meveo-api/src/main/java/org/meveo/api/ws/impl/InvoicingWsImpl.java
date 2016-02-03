package org.meveo.api.ws.impl;

import javax.inject.Inject;
import javax.interceptor.Interceptors;
import javax.jws.WebService;

import org.meveo.admin.exception.BusinessException;
import org.meveo.api.MeveoApiErrorCodeEnum;
import org.meveo.api.billing.InvoicingApi;
import org.meveo.api.dto.ActionStatus;
import org.meveo.api.dto.ActionStatusEnum;
import org.meveo.api.dto.billing.CreateBillingRunDto;
import org.meveo.api.dto.response.billing.GetBillingAccountListInRunResponseDto;
import org.meveo.api.dto.response.billing.GetBillingRunInfoResponseDto;
import org.meveo.api.dto.response.billing.GetPostInvoicingReportsResponseDto;
import org.meveo.api.dto.response.billing.GetPreInvoicingReportsResponseDto;
import org.meveo.api.exception.BusinessApiException;
import org.meveo.api.exception.EntityDoesNotExistsException;
import org.meveo.api.exception.MissingParameterException;
import org.meveo.api.logging.LoggingInterceptor;
import org.meveo.api.ws.InvoicingWs;

/**
 * @author anasseh
 **/
@WebService(serviceName = "InvoicingWs", endpointInterface = "org.meveo.api.ws.InvoicingWs")
@Interceptors({ LoggingInterceptor.class })
public class InvoicingWsImpl extends BaseWs implements InvoicingWs {

	@Inject
	InvoicingApi invoicingApi;

	@Override
	public ActionStatus createBillingRun(CreateBillingRunDto createBillingRunDto) {
		ActionStatus result = new ActionStatus(ActionStatusEnum.SUCCESS, "");
		log.info("createBillingRun request={}",createBillingRunDto);
		try {
			
			long billingRunId=invoicingApi.createBillingRun(createBillingRunDto, getCurrentUser());
			result.setMessage(billingRunId+"");
		}catch(MissingParameterException mpe){
			result.setErrorCode(mpe.getErrorCode());
			result.setStatus(ActionStatusEnum.FAIL);
			result.setMessage(mpe.getMessage());
		}catch (EntityDoesNotExistsException ednep) {
			result.setErrorCode(ednep.getErrorCode());
			result.setStatus(ActionStatusEnum.FAIL);
			result.setMessage(ednep.getMessage());
		}catch (BusinessApiException bae) {
			result.setErrorCode(bae.getErrorCode());
			result.setStatus(ActionStatusEnum.FAIL);
			result.setMessage(bae.getMessage());			
		} catch (Exception e) {
			result.setErrorCode(MeveoApiErrorCodeEnum.GENERIC_API_EXCEPTION);
			result.setStatus(ActionStatusEnum.FAIL);
			result.setMessage(e.getMessage());
		}
		log.info("createBillingRun Response={}", result);
		return result;
	}

	@Override
	public GetBillingRunInfoResponseDto getBillingRunInfo(Long billingRunId) {
		GetBillingRunInfoResponseDto result = new GetBillingRunInfoResponseDto();
		log.info("getBillingRunInfo request={}",billingRunId);
		try {
			
			result.setBillingRunDto(invoicingApi.getBillingRunInfo(billingRunId, getCurrentUser()));
			
		}catch(MissingParameterException mpe){
			result.getActionStatus().setErrorCode(mpe.getErrorCode());
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(mpe.getMessage());
		}catch (EntityDoesNotExistsException ednep) {
			result.getActionStatus().setErrorCode(ednep.getErrorCode());
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(ednep.getMessage());
		}catch (BusinessApiException bae) {
			result.getActionStatus().setErrorCode(bae.getErrorCode());
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(bae.getMessage());			
		} catch (Exception e) {
			result.getActionStatus().setErrorCode(MeveoApiErrorCodeEnum.GENERIC_API_EXCEPTION);
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(e.getMessage());
		}
		log.info("getBillingRunInfo Response={}", result);
		return result;
	}

	@Override
	public GetBillingAccountListInRunResponseDto getBillingAccountListInRun(Long billingRunId) {
		GetBillingAccountListInRunResponseDto result = new GetBillingAccountListInRunResponseDto();
		log.info("getBillingAccountListInRun request={}",billingRunId);
		try {
			
			result.setBillingAccountsDto(invoicingApi.getBillingAccountListInRun(billingRunId, getCurrentUser()));
			
		}catch(MissingParameterException mpe){
			result.getActionStatus().setErrorCode(mpe.getErrorCode());
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(mpe.getMessage());
		}catch (EntityDoesNotExistsException ednep) {
			result.getActionStatus().setErrorCode(ednep.getErrorCode());
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(ednep.getMessage());
		}catch (BusinessApiException bae) {
			result.getActionStatus().setErrorCode(bae.getErrorCode());
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(bae.getMessage());			
		} catch (Exception e) {
			result.getActionStatus().setErrorCode(MeveoApiErrorCodeEnum.GENERIC_API_EXCEPTION);
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(e.getMessage());
		}
		log.info("getBillingAccountListInRun Response={}", result);
		return result;
	}

	@Override
	public GetPreInvoicingReportsResponseDto getPreInvoicingReport(Long billingRunId) {
		GetPreInvoicingReportsResponseDto result = new GetPreInvoicingReportsResponseDto();
		log.info("getPreInvoicingReport request={}",billingRunId);
		try {
			
			result.setPreInvoicingReportsDTO(invoicingApi.getPreInvoicingReport(billingRunId, getCurrentUser()));
			
		}catch(MissingParameterException mpe){
			result.getActionStatus().setErrorCode(mpe.getErrorCode());
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(mpe.getMessage());
		}catch (EntityDoesNotExistsException ednep) {
			result.getActionStatus().setErrorCode(ednep.getErrorCode());
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(ednep.getMessage());
		}catch (BusinessApiException bae) {
			result.getActionStatus().setErrorCode(bae.getErrorCode());
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(bae.getMessage());	
		}catch (BusinessException be) {
			result.getActionStatus().setErrorCode(MeveoApiErrorCodeEnum.BUSINESS_API_EXCEPTION);
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(be.getMessage());
		} catch (Exception e) {
			result.getActionStatus().setErrorCode(MeveoApiErrorCodeEnum.GENERIC_API_EXCEPTION);
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(e.getMessage());
		}
		log.info("getPreInvoicingReport Response={}", result);
		return result;
	}
	

	@Override
	public GetPostInvoicingReportsResponseDto getPostInvoicingReport(Long billingRunId) {
		GetPostInvoicingReportsResponseDto result = new GetPostInvoicingReportsResponseDto();
		log.info("getPreInvoicingReport request={}",billingRunId);
		try {
			
			result.setPostInvoicingReportsDTO(invoicingApi.getPostInvoicingReport(billingRunId, getCurrentUser()));
			
		}catch(MissingParameterException mpe){
			result.getActionStatus().setErrorCode(mpe.getErrorCode());
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(mpe.getMessage());
		}catch (EntityDoesNotExistsException ednep) {
			result.getActionStatus().setErrorCode(ednep.getErrorCode());
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(ednep.getMessage());
		}catch (BusinessApiException bae) {
			result.getActionStatus().setErrorCode(bae.getErrorCode());
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(bae.getMessage());	
		}catch (BusinessException be) {
			result.getActionStatus().setErrorCode(MeveoApiErrorCodeEnum.BUSINESS_API_EXCEPTION);
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(be.getMessage());
		} catch (Exception e) {
			result.getActionStatus().setErrorCode(MeveoApiErrorCodeEnum.GENERIC_API_EXCEPTION);
			result.getActionStatus().setStatus(ActionStatusEnum.FAIL);
			result.getActionStatus().setMessage(e.getMessage());
		}
		log.info("getPostInvoicingReport Response={}", result);
		return result;
	}

	@Override
	public ActionStatus validateBillingRun(Long billingRunId) {
		ActionStatus result = new ActionStatus(ActionStatusEnum.SUCCESS, "");
		log.info("validateBillingRun request={}",billingRunId);
		try {
			
			invoicingApi.validateBillingRun(billingRunId, getCurrentUser(),null,null);
			
		}catch(MissingParameterException mpe){
			result.setErrorCode(mpe.getErrorCode());
			result.setStatus(ActionStatusEnum.FAIL);
			result.setMessage(mpe.getMessage());
		}catch (EntityDoesNotExistsException ednep) {
			result.setErrorCode(ednep.getErrorCode());
			result.setStatus(ActionStatusEnum.FAIL);
			result.setMessage(ednep.getMessage());
		}catch (BusinessApiException bae) {
			result.setErrorCode(bae.getErrorCode());
			result.setStatus(ActionStatusEnum.FAIL);
			result.setMessage(bae.getMessage());			
		} catch (Exception e) {
			result.setErrorCode(MeveoApiErrorCodeEnum.GENERIC_API_EXCEPTION);
			result.setStatus(ActionStatusEnum.FAIL);
			result.setMessage(e.getMessage());
		}
		log.info("validateBillingRun Response={}", result);
		return result;
	}

	@Override
	public ActionStatus cancelBillingRun(Long billingRunId) {
		ActionStatus result = new ActionStatus(ActionStatusEnum.SUCCESS, "");
		log.info("cancelBillingRun request={}",billingRunId);
		try {
			
			invoicingApi.cancelBillingRun(billingRunId, getCurrentUser());
			
		}catch(MissingParameterException mpe){
			result.setErrorCode(mpe.getErrorCode());
			result.setStatus(ActionStatusEnum.FAIL);
			result.setMessage(mpe.getMessage());
		}catch (EntityDoesNotExistsException ednep) {
			result.setErrorCode(ednep.getErrorCode());
			result.setStatus(ActionStatusEnum.FAIL);
			result.setMessage(ednep.getMessage());
		}catch (BusinessApiException bae) {
			result.setErrorCode(bae.getErrorCode());
			result.setStatus(ActionStatusEnum.FAIL);
			result.setMessage(bae.getMessage());			
		} catch (Exception e) {
			result.setErrorCode(MeveoApiErrorCodeEnum.GENERIC_API_EXCEPTION);
			result.setStatus(ActionStatusEnum.FAIL);
			result.setMessage(e.getMessage());
		}
		log.info("cancelBillingRun Response={}", result);
		return result;
	}
	
	
}
