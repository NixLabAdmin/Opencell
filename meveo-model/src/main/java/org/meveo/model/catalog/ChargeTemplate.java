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
package org.meveo.model.catalog;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.MapKeyColumn;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;

import org.meveo.model.Auditable;
import org.meveo.model.BusinessEntity;
import org.meveo.model.ICustomFieldEntity;
import org.meveo.model.ObservableEntity;
import org.meveo.model.billing.ChargeInstance;
import org.meveo.model.billing.InvoiceSubCategory;
import org.meveo.model.billing.OperationTypeEnum;
import org.meveo.model.crm.CustomFieldInstance;

@Entity
@ObservableEntity
@Table(name = "CAT_CHARGE_TEMPLATE", uniqueConstraints = @UniqueConstraint(columnNames = { "CODE", "PROVIDER_ID" }))
@SequenceGenerator(name = "ID_GENERATOR", sequenceName = "CAT_CHARGE_TEMPLATE_SEQ")
@Inheritance(strategy = InheritanceType.JOINED)
public class ChargeTemplate extends BusinessEntity implements ICustomFieldEntity {

	private static final long serialVersionUID = 1L;

	@Column(name = "CREDIT_DEBIT_FLAG")
	private OperationTypeEnum type;

	@Column(name = "AMOUNT_EDITABLE")
	private Boolean amountEditable;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "INVOICE_SUB_CATEGORY", nullable = false)
	@NotNull
	private InvoiceSubCategory invoiceSubCategory;

	@OneToMany(mappedBy = "chargeTemplate", fetch = FetchType.LAZY)
	private List<ChargeInstance> chargeInstances = new ArrayList<ChargeInstance>();

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "CAT_CHRG_EDR", joinColumns = @JoinColumn(name = "CHARGE_TMPL_ID"), inverseJoinColumns = @JoinColumn(name = "TRIGG_EDR_ID"))
	private List<TriggeredEDRTemplate> edrTemplates = new ArrayList<TriggeredEDRTemplate>();

	@OneToMany(mappedBy = "chargeTemplate", cascade = CascadeType.ALL, fetch = FetchType.LAZY, orphanRemoval = true)
	@MapKeyColumn(name = "code")
	private Map<String, CustomFieldInstance> customFields = new HashMap<String, CustomFieldInstance>();

	public OperationTypeEnum getType() {
		return type;
	}

	public void setType(OperationTypeEnum type) {
		this.type = type;
	}

	public Boolean getAmountEditable() {
		return amountEditable;
	}

	public void setAmountEditable(Boolean amountEditable) {
		this.amountEditable = amountEditable;
	}

	public InvoiceSubCategory getInvoiceSubCategory() {
		return invoiceSubCategory;
	}

	public void setInvoiceSubCategory(InvoiceSubCategory invoiceSubCategory) {
		this.invoiceSubCategory = invoiceSubCategory;
	}

	public List<ChargeInstance> getChargeInstances() {
		return chargeInstances;
	}

	public void setChargeInstances(List<ChargeInstance> chargeInstances) {
		this.chargeInstances = chargeInstances;
	}

	public List<TriggeredEDRTemplate> getEdrTemplates() {
		return edrTemplates;
	}

	public void setEdrTemplates(List<TriggeredEDRTemplate> edrTemplates) {
		this.edrTemplates = edrTemplates;
	}

	public Map<String, CustomFieldInstance> getCustomFields() {
		return customFields;
	}

	public void setCustomFields(Map<String, CustomFieldInstance> customFields) {
		this.customFields = customFields;
	}
	   private CustomFieldInstance getOrCreateCustomFieldInstance(String code) {
	        CustomFieldInstance cfi = null;

	        if (customFields.containsKey(code)) {
	            cfi = customFields.get(code);
	        } else {
	            cfi = new CustomFieldInstance();
	            Auditable au = new Auditable();
	            au.setCreated(new Date());
	            if (this.getAuditable() != null) {
	                au.setCreator(this.getAuditable().getCreator());
	            }
	            cfi.setAuditable(au);
	            cfi.setCode(code);
	            cfi.setChargeTemplate(this);
	            cfi.setProvider(this.getProvider());
	            customFields.put(code, cfi);
	        }

	        return cfi;
	    }

	    public String getStringCustomValue(String code) {
	        String result = null;
	        if (customFields.containsKey(code)) {
	            result = customFields.get(code).getStringValue();
	        }

	        return result;
	    }

	    public void setStringCustomValue(String code, String value) {
	        getOrCreateCustomFieldInstance(code).setStringValue(value);
	    }

	    public Date getDateCustomValue(String code) {
	        Date result = null;
	        if (customFields.containsKey(code)) {
	            result = customFields.get(code).getDateValue();
	        }

	        return result;
	    }

	    public void setDateCustomValue(String code, Date value) {
	        getOrCreateCustomFieldInstance(code).setDateValue(value);
	    }

	    public Long getLongCustomValue(String code) {
	        Long result = null;
	        if (customFields.containsKey(code)) {
	            result = customFields.get(code).getLongValue();
	        }
	        return result;
	    }

	    public void setLongCustomValue(String code, Long value) {
	        getOrCreateCustomFieldInstance(code).setLongValue(value);
	    }

	    public Double getDoubleCustomValue(String code) {
	        Double result = null;

	        if (customFields.containsKey(code)) {
	            result = customFields.get(code).getDoubleValue();
	        }

	        return result;
	    }

	    public void setDoubleCustomValue(String code, Double value) {
	        getOrCreateCustomFieldInstance(code).setDoubleValue(value);
	    }

	    public String getCustomFieldsAsJson() {
	        String result = "";
	        String sep = "";

	        for (Entry<String, CustomFieldInstance> cf : customFields.entrySet()) {
	            result += sep + cf.getValue().toJson();
	            sep = ";";
	        }

	        return result;
	    }

	
	public String getInheritedCustomStringValue(String code){
		String stringValue=null;
		if (getCustomFields().containsKey(code)&& getCustomFields().get(code).getStringValue()!=null) {
			stringValue=getCustomFields().get(code).getStringValue();}
		return stringValue;
		}
	
	public Long getInheritedCustomLongValue(String code){
		Long result=null; 
		if (getCustomFields().containsKey(code)&& getCustomFields().get(code).getLongValue()!=null) {
			result=getCustomFields().get(code).getLongValue();
		}
		return result;
		}
	
	public Date getInheritedCustomDateValue(String code){
		Date result=null; 
		if (getCustomFields().containsKey(code)&& getCustomFields().get(code).getDateValue()!=null) {
			result=getCustomFields().get(code).getDateValue();
		}
		return result;
		}
	

	public Double getInheritedCustomDoubleValue(String code){
		Double result=null; 
		if (getCustomFields().containsKey(code)&& getCustomFields().get(code).getDoubleValue()!=null) {
			result=getCustomFields().get(code).getDoubleValue();
		}
		return result;
		}
	
	public String getICsv(String code){
		return getInheritedCustomStringValue(code);
	}
	
	public Long getIClv(String code){
		return getInheritedCustomLongValue(code);
	}
	
	public Date getICdav(String code){
		return getInheritedCustomDateValue(code);
	}
	
	public Double getICdov(String code){
		return getInheritedCustomDoubleValue(code);
	}

}
