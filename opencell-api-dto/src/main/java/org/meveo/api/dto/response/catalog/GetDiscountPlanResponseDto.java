package org.meveo.api.dto.response.catalog;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

import org.meveo.api.dto.catalog.DiscountPlanDto;
import org.meveo.api.dto.response.BaseResponse;

@XmlRootElement(name = "GetDiscountPlanResponse")
@XmlAccessorType(XmlAccessType.FIELD)
public class GetDiscountPlanResponseDto extends BaseResponse {

	private static final long serialVersionUID = 1L;
	
	private DiscountPlanDto discountPlanDto;

	public DiscountPlanDto getDiscountPlanDto() {
		return discountPlanDto;
	}

	public void setDiscountPlanDto(DiscountPlanDto discountPlanDto) {
		this.discountPlanDto = discountPlanDto;
	}

	@Override
	public String toString() {
		return "GetDiscountPlanResponseDto [discountPlanDto=" + discountPlanDto
				+ "]";
	}
}
