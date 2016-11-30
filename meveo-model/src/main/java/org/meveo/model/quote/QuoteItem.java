package org.meveo.model.quote;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.meveo.commons.utils.StringUtils;
import org.meveo.model.BaseEntity;
import org.meveo.model.ExportIdentifier;
import org.meveo.model.billing.Invoice;
import org.meveo.model.billing.UserAccount;
import org.meveo.model.catalog.ProductOffering;

@Entity
@ExportIdentifier({ "quote.code", "itemId", "provider" })
@Table(name = "ORD_QUOTE_ITEM")
@SequenceGenerator(name = "ID_GENERATOR", sequenceName = "ORD_QUOTE_ITEM_SEQ")
public class QuoteItem extends BaseEntity {

    private static final long serialVersionUID = -6831399734977276174L;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "QUOTE_ID", nullable = false, updatable = false)
    @NotNull
    private Quote quote;

    /**
     * Item id in the quote
     */
    @Column(name = "ITEM_ID", length = 10, nullable = false)
    @NotNull
    private String itemId;

    /**
     * Product offerings associated to an quote item. In case of bundled offers, the first item in a list is the parent offering.
     */
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "ORD_QUOT_ITEM_OFFERINGS", joinColumns = @JoinColumn(name = "QUOTE_ITEM_ID"), inverseJoinColumns = @JoinColumn(name = "PRD_OFFERING_ID"))
    private List<ProductOffering> productOfferings = new ArrayList<>();

    /**
     * Serialized quoteItem dto.
     */
    @Column(name = "SOURCE", nullable = false, columnDefinition = "TEXT")
    private String source;

    /**
     * Quote item processing status as defined by the workflow.
     */
    @Enumerated(EnumType.STRING)
    @Column(name = "status", length = 20, nullable = false)
    @NotNull
    private QuoteStatusEnum status = QuoteStatusEnum.IN_PROGRESS;

    /**
     * Associated invoice
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "INVOICE_ID")
    private Invoice invoice;
    
    /**
     * Associated user account
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "USER_ACCOUNT_ID", nullable = false)
    @NotNull
    private UserAccount userAccount;

    @Transient
    private Object quoteItemDto;

    @Transient
    private ProductOffering mainOffering;

    public Quote getQuote() {
        return quote;
    }

    public void setQuote(Quote quote) {
        this.quote = quote;
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public List<ProductOffering> getProductOfferings() {
        return productOfferings;
    }

    public void setProductOfferings(List<ProductOffering> productOfferings) {
        this.productOfferings = productOfferings;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String oferItemSource) {
        this.source = oferItemSource;
    }

    public QuoteStatusEnum getStatus() {
        return status;
    }

    public void setStatus(QuoteStatusEnum status) {
        this.status = status;
    }

    public Invoice getInvoice() {
        return invoice;
    }

    public void setInvoice(Invoice invoice) {
        this.invoice = invoice;
    }

    public Object getQuoteItemDto() {
        return quoteItemDto;
    }

    public void setQuoteItemDto(Object quoteItemDto) {
        this.quoteItemDto = quoteItemDto;
    }
    
    public UserAccount getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(UserAccount userAccount) {
        this.userAccount = userAccount;
    }

    public ProductOffering getMainOffering() {

        if (mainOffering == null && !productOfferings.isEmpty()) {
            mainOffering = productOfferings.get(0);
        }

        return mainOffering;
    }

    public void setMainOffering(ProductOffering mainOffering) {
        this.mainOffering = mainOffering;
    }

    public void resetMainOffering(ProductOffering newMainOffer) {
        this.mainOffering = newMainOffer;
        productOfferings.clear();
        if (newMainOffer != null) {
            productOfferings.add(newMainOffer);
        }
        quoteItemDto = null;
        source = null;
    }

    /**
     * Interested in comparing quote items within the quote only
     */
    @Override
    public boolean equals(Object obj) {

        if (this == obj) {
            return true;
        } else if (obj == null) {
            return false;
        } else if (!(obj instanceof QuoteItem)) {
            return false;
        }
        
        return StringUtils.compare(getItemId(), ((QuoteItem) obj).getItemId()) == 0;
    }
}