package org.meveo.api.catalog;

import javax.inject.Inject;

import org.meveo.admin.exception.BusinessException;
import org.meveo.api.BaseApi;
import org.meveo.api.dto.catalog.DigitalResourcesDto;
import org.meveo.api.exception.EntityAlreadyExistsException;
import org.meveo.api.exception.EntityDoesNotExistsException;
import org.meveo.api.exception.MeveoApiException;
import org.meveo.api.exception.MissingParameterException;
import org.meveo.commons.utils.StringUtils;
import org.meveo.model.admin.User;
import org.meveo.model.catalog.DigitalResource;
import org.meveo.model.crm.Provider;
import org.meveo.service.catalog.impl.DigitalResourceService;

public class DigitalResourceApi extends BaseApi {

	@Inject
	private DigitalResourceService digitalResourceService;

	public DigitalResourcesDto find(String code, User currentUser) throws MeveoApiException {

		if (StringUtils.isBlank(code)) {
			missingParameters.add("digitalResource code");
			handleMissingParameters();
		}

		DigitalResource digitalResource = digitalResourceService.findByCode(code, currentUser.getProvider());
		if (digitalResource == null) {
			throw new EntityDoesNotExistsException(DigitalResource.class, code);
		}

		return new DigitalResourcesDto(digitalResource);
	}

	
	public void createOrUpdate(DigitalResourcesDto digitalResourcesDto, User currentUser) throws MeveoApiException, BusinessException {
		String currentCode = StringUtils.isBlank(digitalResourcesDto.getCurrentCode())?digitalResourcesDto.getCode():digitalResourcesDto.getCurrentCode();
		DigitalResource digitalResource = digitalResourceService.findByCode(currentCode, currentUser.getProvider());

		if (digitalResource == null) {
			create(digitalResourcesDto, currentUser);
		} else {
			update(digitalResourcesDto, currentUser);
		}
	}

	public void create(DigitalResourcesDto postData, User currentUser) throws MeveoApiException, BusinessException {

		if (StringUtils.isBlank(postData.getCode())) {
			missingParameters.add("code");
			handleMissingParameters();
		}

		Provider provider = currentUser.getProvider();

		DigitalResource digitalResource = digitalResourceService.findByCode(postData.getCode(), provider);
		if ( digitalResource != null) {
			throw new EntityAlreadyExistsException(DigitalResource.class, postData.getCode());
		}

		digitalResource = populateDigitalResourceEntity(digitalResource, postData, currentUser);
		digitalResourceService.create(digitalResource, currentUser);
	}

	public void update(DigitalResourcesDto postData, User currentUser) throws MeveoApiException, BusinessException {

		if (StringUtils.isBlank(postData.getCode())) {
			missingParameters.add("code");
			handleMissingParameters();
		}

		Provider provider = currentUser.getProvider();
		String currentCode = StringUtils.isBlank(postData.getCurrentCode())?postData.getCode():postData.getCurrentCode();
		DigitalResource digitalResource = digitalResourceService.findByCode(currentCode, provider);
		if ( digitalResource == null) {
			throw new EntityDoesNotExistsException(DigitalResource.class, currentCode);
		}

		digitalResource = populateDigitalResourceEntity(digitalResource, postData, currentUser);
		digitalResource.setCode(postData.getCode());
		digitalResourceService.update(digitalResource, currentUser);
	}

	public void remove(String code, User currentUser) throws MeveoApiException, BusinessException {

		if (StringUtils.isBlank(code)) {
			missingParameters.add("digitalResource code");
			handleMissingParameters();
		}

		DigitalResource digitalResource = digitalResourceService.findByCode(code, currentUser.getProvider());
		if (digitalResource == null) {
			throw new EntityDoesNotExistsException(DigitalResource.class, code);
		}

		digitalResourceService.remove(digitalResource, currentUser);
	}

	public DigitalResource populateDigitalResourceEntity(DigitalResource digitalResource, DigitalResourcesDto digitalResourcesDto, User user) throws MeveoApiException {
		String code = digitalResourcesDto.getCode();
		if (StringUtils.isBlank(code)) {
			throw new MissingParameterException("DigitalResource code for DTO: " + digitalResourcesDto);
		}
		if(digitalResource == null) {
			digitalResource = new DigitalResource();
			digitalResource.setCode(digitalResourcesDto.getCode());
		}
		digitalResource.setDescription(keepOldValueIfNull(digitalResourcesDto.getDescription(), digitalResource.getDescription()));
		digitalResource.setUri(keepOldValueIfNull(digitalResourcesDto.getUri(), digitalResource.getUri()));
		digitalResource.setMimeType(keepOldValueIfNull(digitalResourcesDto.getMimeType(), digitalResource.getMimeType()));
		digitalResource.setDisabled(keepOldValueIfNull(digitalResourcesDto.isDisabled(), digitalResource.isDisabled()));
		return digitalResource;
	}
}
