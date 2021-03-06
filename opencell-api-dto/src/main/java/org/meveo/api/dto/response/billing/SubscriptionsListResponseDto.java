package org.meveo.api.dto.response.billing;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

import org.meveo.api.dto.billing.SubscriptionsListDto;
import org.meveo.api.dto.response.BaseResponse;

@XmlRootElement(name = "SubscriptionsListResponse")
@XmlAccessorType(XmlAccessType.FIELD)
public final class SubscriptionsListResponseDto extends BaseResponse {

	private static final long serialVersionUID = 5980154480190489704L;
	
	public SubscriptionsListDto subscriptions;

	public SubscriptionsListDto getSubscriptions() {
		return subscriptions;
	}

	public void setSubscriptions(SubscriptionsListDto   subscriptions) {
		this.subscriptions = subscriptions;
	}

	@Override
	public String toString() {
		return "ListSubscriptionResponseDto [subscriptions=" + subscriptions + ", toString()=" + super.toString() + "]";
	}

}
