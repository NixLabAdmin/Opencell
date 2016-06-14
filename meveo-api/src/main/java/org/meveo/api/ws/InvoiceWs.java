package org.meveo.api.ws;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

import org.meveo.api.dto.ActionStatus;
import org.meveo.api.dto.invoice.CreateInvoiceResponseDto;
import org.meveo.api.dto.invoice.GenerateInvoiceRequestDto;
import org.meveo.api.dto.invoice.GenerateInvoiceResponseDto;
import org.meveo.api.dto.invoice.GetInvoiceResponseDto;
import org.meveo.api.dto.invoice.GetPdfInvoiceResponseDto;
import org.meveo.api.dto.invoice.GetXmlInvoiceResponseDto;
import org.meveo.api.dto.invoice.InvoiceDto;
import org.meveo.api.dto.response.CustomerInvoicesResponse;

/**
 * @author Edward P. Legaspi
 **/
@WebService
public interface InvoiceWs extends IBaseWs {

	@WebMethod
	public CreateInvoiceResponseDto createInvoice(@WebParam(name = "invoice") InvoiceDto invoiceDto);

	@WebMethod
	public CustomerInvoicesResponse findInvoice(@WebParam(name = "customerAccountCode") String customerAccountCode);
	
	@WebMethod
	public GenerateInvoiceResponseDto generateInvoiceData(
			@WebParam(name = "generateInvoiceRequest") GenerateInvoiceRequestDto generateInvoiceRequestDto);

	@WebMethod
	public GetXmlInvoiceResponseDto findXMLInvoice(@WebParam(name = "invoiceNumber") String invoiceNumber);
	
	@WebMethod
	public GetXmlInvoiceResponseDto findXMLInvoiceWithType(@WebParam(name = "invoiceNumber") String invoiceNumber,
			@WebParam(name = "invoiceType") String invoiceType);

	@WebMethod
	public GetPdfInvoiceResponseDto findPdfInvoice(@WebParam(name = "invoiceNumber") String invoiceNumber);
	
	@WebMethod
	public GetPdfInvoiceResponseDto findPdfInvoiceWithType(@WebParam(name = "invoiceNumber") String invoiceNumber,
			@WebParam(name = "invoiceType") String invoiceType);
	
	@WebMethod
	public ActionStatus cancelInvoice(@WebParam(name = "invoiceId") Long invoiceId);
	
	@WebMethod
	public ActionStatus validateInvoice(@WebParam(name = "invoiceId") Long invoiceId);	
	
	@WebMethod
	public GetInvoiceResponseDto findInvoiceByIdOrType(@WebParam(name = "id") Long id, @WebParam(name = "invoiceNumber") String invoiceNumber,
			@WebParam(name = "invoiceType") String invoiceType);

}
