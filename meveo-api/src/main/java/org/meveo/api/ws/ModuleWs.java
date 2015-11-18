package org.meveo.api.ws;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

import org.meveo.api.dto.ActionStatus;
import org.meveo.api.dto.module.ModuleDto;
import org.meveo.api.dto.response.module.MeveoModuleDtoResponse;
import org.meveo.api.dto.response.module.MeveoModuleDtosResponse;

/**
 * @author Tyshan Shi(tyshan@manaty.net)
 *
 **/
@WebService
public interface ModuleWs extends IBaseWs {

	@WebMethod
	ActionStatus create(@WebParam(name = "module") ModuleDto moduleDto);

	@WebMethod
	ActionStatus update(@WebParam(name = "module") ModuleDto moduleDto);

	@WebMethod
	ActionStatus delete(@WebParam(name = "code") String code);

	@WebMethod
	MeveoModuleDtosResponse list();

	@WebMethod
	MeveoModuleDtoResponse get(@WebParam(name = "code") String code);
}