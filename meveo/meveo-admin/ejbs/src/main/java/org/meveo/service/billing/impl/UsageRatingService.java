package org.meveo.service.billing.impl;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;
import javax.ejb.EJB;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import org.infinispan.Cache;
import org.infinispan.manager.CacheContainer;
import org.meveo.model.billing.CounterInstance;
import org.meveo.model.billing.CounterPeriod;
import org.meveo.model.billing.InstanceStatusEnum;
import org.meveo.model.billing.InvoiceSubCategory;
import org.meveo.model.billing.InvoiceSubcategoryCountry;
import org.meveo.model.billing.Tax;
import org.meveo.model.billing.TradingCountry;
import org.meveo.model.billing.TradingCurrency;
import org.meveo.model.billing.UsageChargeInstance;
import org.meveo.model.billing.WalletOperation;
import org.meveo.model.billing.WalletOperationStatusEnum;
import org.meveo.model.cache.CounterInstanceCache;
import org.meveo.model.cache.CounterPeriodCache;
import org.meveo.model.cache.UsageChargeInstanceCache;
import org.meveo.model.catalog.UsageChargeTemplate;
import org.meveo.model.crm.Provider;
import org.meveo.model.rating.EDR;
import org.meveo.model.rating.EDRStatusEnum;
import org.meveo.util.MeveoJpa;
import org.slf4j.Logger;

@Stateless
@LocalBean
public class UsageRatingService {

    @Inject
    @MeveoJpa
    protected EntityManager em;

    @Inject
    protected Logger log;
    
    //@Resource(lookup="java:jboss/infinispan/container/meveo")
    //private CacheContainer meveoContainer;  
    

    //private org.infinispan.Cache<Long, List<UsageChargeInstanceCache>> chargeCache;
    //private org.infinispan.Cache<Long, CounterInstanceCache> counterCache;
   private static HashMap<Long, List<UsageChargeInstanceCache>> chargeCache;
   private static HashMap<Long, CounterInstanceCache> counterCache;
    
   private static boolean cacheLoaded=false;
   
    @EJB
    private UsageChargeInstanceService usageChargeInstanceService;
    
    @EJB
    private CounterInstanceService counterInstanceService;

    @EJB
    private RatingService ratingService;
    
    @EJB
	private InvoiceSubCategoryCountryService invoiceSubCategoryCountryService;
    
    @EJB
	private WalletOperationService walletOperationService;
    
    @PostConstruct
    public synchronized void updateCacheFromDB() {
     if(!cacheLoaded){
      //this.chargeCache = this.meveoContainer.getCache("usageCharge");
      chargeCache =new HashMap<>();
      //this.counterCache = this.meveoContainer.getCache("counter");
      counterCache=new HashMap<>();
      log.info("loading usage charge cache");
      @SuppressWarnings("unchecked")
	  List<UsageChargeInstance> usageChargeInstances = em.createQuery("From UsageChargeInstance u").getResultList();
      if(usageChargeInstances!=null){
    	  for(UsageChargeInstance usageChargeInstance:usageChargeInstances){
    	      	  updateCache(usageChargeInstance);
    	  }
      }
      cacheLoaded=true;
     }
    }
    
    public void updateCache(UsageChargeInstance usageChargeInstance) {
		if(usageChargeInstance!=null){
			
			UsageChargeInstanceCache cachedValue = new UsageChargeInstanceCache();
			UsageChargeTemplate usageChargeTemplate=(UsageChargeTemplate) usageChargeInstance.getChargeTemplate();
			
			Long key = usageChargeInstance.getServiceInstance().getSubscription().getId();
			log.info("update cache key (subs Id)="+key+ "'for charge"+usageChargeInstance.getId());
			boolean cacheContainsKey=chargeCache.containsKey(key);
			boolean cacheContainsCharge=false;

			List<UsageChargeInstanceCache> charges = null;
			if(cacheContainsKey){
				log.info("the cache contains the key");
				charges = chargeCache.get(key);
				for(UsageChargeInstanceCache charge:charges){
					if(charge.getChargeInstanceId()==usageChargeInstance.getId()){
						if(usageChargeInstance.getStatus()!=InstanceStatusEnum.ACTIVE){
							log.info("the cache contains the charge but its status in db is not active so we remove it");
							charges.remove(charge);
							if(charges.size()==0){
								chargeCache.remove(key);
							}
							return;
						} else {
							cachedValue=charge;
							cacheContainsCharge=true;
							
						}
					}
				}
			} else {
				log.info("the cache does not contains the key");
				charges =  new ArrayList<UsageChargeInstanceCache>();
			}
			if(usageChargeInstance.getStatus()!=InstanceStatusEnum.ACTIVE){
				log.info("the charge is not active, we dont add it to cache");
				return;
			}
			
			cachedValue.setChargeDate(usageChargeInstance.getChargeDate());
			cachedValue.setChargeInstanceId(usageChargeInstance.getId());
			cachedValue.setProvider(usageChargeInstance.getProvider());
			cachedValue.setCurrencyId(usageChargeInstance.getServiceInstance().getSubscription().getUserAccount().getBillingAccount().getCustomerAccount().getTradingCurrency().getId());
			if(usageChargeInstance.getCounter()!=null){
				CounterInstanceCache counterCacheValue = null;
				Long counterKey = CounterInstanceCache.getKey(usageChargeInstance.getCounter());

				log.info("counter key:"+counterKey);
				if(counterCache.containsKey(counterKey)){
					log.info("the counter cache contains the key");
					counterCacheValue=counterCache.get(counterKey);
				}
				else{
					log.info("the counter cache doesnt contain the key, we add it");
					counterCacheValue=CounterInstanceCache.getInstance(usageChargeInstance.getCounter());
					counterCache.put(counterKey, counterCacheValue);
				}
				cachedValue.setCounter(counterCacheValue);
			}
			cachedValue.setFilter1(usageChargeTemplate.getFilterParam1());
			cachedValue.setFilter2(usageChargeTemplate.getFilterParam2());
			cachedValue.setFilter3(usageChargeTemplate.getFilterParam3());
			cachedValue.setFilter4(usageChargeTemplate.getFilterParam4());
			cachedValue.setTerminationDate(usageChargeInstance.getTerminationDate());
			cachedValue.setFilterExpression(usageChargeTemplate.getFilterExpression());
			cachedValue.setUnityMultiplicator(usageChargeTemplate.getUnityMultiplicator());
			cachedValue.setUnityNbDecimal(usageChargeTemplate.getUnityNbDecimal());
			cachedValue.setLastUpdate(new Date());
			if(!cacheContainsCharge){
				log.info("charge added");
				charges.add(cachedValue);
			}
			if(cacheContainsKey){
				log.info("key added to charge cache");
				chargeCache.put(key, charges);
			}
		}
	}
    
    @PreDestroy
    void saveCounters(){
    	for(Long key:counterCache.keySet()){
    	CounterInstanceCache counterInstanceCache= counterCache.get(key);
		if(counterInstanceCache.getCounterPeriods()!=null){
			for(CounterPeriodCache itemPeriodCache:counterInstanceCache.getCounterPeriods()){
				if(itemPeriodCache.isDbDirty()){
					counterInstanceService.updatePeriodValue(itemPeriodCache.getCounterPeriodId(),itemPeriodCache.getValue());
				}
			}
		}
    	}
    }
    
    /**
     * This method use the price plan to rate an EDR knowing what charge must be used
     * 
     * @param edr
     * @param chargeInstance
     * @param provider
     * @param currencyId
     * @param taxId
     * @return
     */
    public WalletOperation rateEDRwithMatchingCharge(EDR edr, UsageChargeInstanceCache chargeCache, UsageChargeInstance chargeInstance, Provider provider){
    	WalletOperation walletOperation = new WalletOperation();
		walletOperation.setSubscriptionDate(null);
		walletOperation.setOperationDate(edr.getEventDate());
		walletOperation.setParameter1(edr.getParameter1());
		walletOperation.setParameter2(edr.getParameter2());
		walletOperation.setParameter3(edr.getParameter3());
		
        walletOperation.setProvider(provider);
        
        //FIXME: copy those info in chargeInstance instead of performing multiple queries
        InvoiceSubCategory invoiceSubCat = chargeInstance
				.getChargeTemplate().getInvoiceSubCategory();
        TradingCountry country=edr.getSubscription().getUserAccount().getBillingAccount()
				.getTradingCountry();
        Long countryId=country.getId();
		InvoiceSubcategoryCountry invoiceSubcategoryCountry = invoiceSubCategoryCountryService
				.findInvoiceSubCategoryCountry(invoiceSubCat.getId(),countryId);
		TradingCurrency currency=edr.getSubscription().getUserAccount().getBillingAccount().getCustomerAccount().getTradingCurrency();
		Tax tax = invoiceSubcategoryCountry.getTax();
        walletOperation.setChargeInstance(chargeInstance); 
        walletOperation.setSeller(edr.getSubscription().getUserAccount().getBillingAccount().getCustomerAccount().getCustomer().getSeller());
        //FIXME: get the wallet from the ServiceUsageChargeTemplate
        walletOperation.setWallet(edr.getSubscription().getUserAccount().getWallet());
        walletOperation.setCode(chargeInstance.getCode());
        walletOperation.setQuantity(edr.getQuantity());
        walletOperation.setTaxPercent(tax.getPercent());
        walletOperation.setStartDate(null);
        walletOperation.setEndDate(null);
        walletOperation.setStatus(WalletOperationStatusEnum.OPEN);
		ratingService.rateBareWalletOperation(walletOperation, null, null, countryId,currency, provider);
		return walletOperation;
    }
    
    /**
     * This method first look if there is a counter and a 
     * @param edr
     * @param charge
     * @return if edr quantity fits partially in the counter, returns the remaining quantity
     */
    BigDecimal deduceCounter(EDR edr,UsageChargeInstanceCache charge){
    	BigDecimal deducedQuantity=BigDecimal.ZERO;
    	CounterInstanceCache counterInstanceCache= counterCache.get(charge.getCounter().getKey());
		CounterPeriodCache periodCache = null;
		if(counterInstanceCache.getCounterPeriods()!=null){
			for(CounterPeriodCache itemPeriodCache:counterInstanceCache.getCounterPeriods()){
				if((itemPeriodCache.getStartDate().before(edr.getEventDate()) || itemPeriodCache.getStartDate().equals(edr.getEventDate())) 
						&& itemPeriodCache.getEndDate().after(edr.getEventDate())){
					periodCache=itemPeriodCache;
					break;
				}
			}
		}
		CounterInstance counterInstance=null;
		if(periodCache==null){
			counterInstance=counterInstanceService.findById(counterInstanceCache.getKey());
			CounterPeriod counterPeriod=counterInstanceService.createPeriod(counterInstance,edr.getEventDate());
			periodCache = CounterPeriodCache.getInstance(counterPeriod,counterInstance.getCounterTemplate());
			
		}
		synchronized (periodCache) {
			BigDecimal countedValue = edr.getQuantity().multiply(charge.getUnityMultiplicator());
    		if(charge.getUnityNbDecimal()>0){
    				countedValue=countedValue.setScale(charge.getUnityNbDecimal(), RoundingMode.HALF_UP);
    		}
			if(periodCache.getValue().compareTo(BigDecimal.ZERO)>0){
				if(periodCache.getValue().compareTo(countedValue)<0){
					deducedQuantity=periodCache.getValue();
					periodCache.setValue(BigDecimal.ZERO);
				} else {
					deducedQuantity=countedValue;
					periodCache.setValue(periodCache.getValue().subtract(countedValue));
				}
				//set the cache element to dirty so it is saved to DB when shutdown the server
				periodCache.setDbDirty(true);
			} 
			//put back the deduced quantity in charge unit
			deducedQuantity = deducedQuantity.divide(charge.getUnityMultiplicator());
		}
    	return deducedQuantity;
    }
    
    /**
     * this method evaluate the EDR against the charge and its counter
     * it returns true if the charge has been rated (either because it has no counter or because the counter can be decremented with the EDR content)
     * @param edr
     * @param charge
     * @return
     */
    public boolean rateEDRonChargeAndCounters(EDR edr,UsageChargeInstanceCache charge){
    	boolean stopEDRRating=false;
    	BigDecimal deducedQuantity=null;
    	if(charge.getCounter()!=null){
    		
    		// if the charge is associated to a counter and we can decrement it then
    		// we rate the charge if not we simply try the next charge
    		// if the counter has been decremented by the full quantity we stop the rating
    		deducedQuantity=deduceCounter(edr, charge);
    		if(edr.getQuantity().equals(deducedQuantity)){
    			stopEDRRating=true;
    		}
    	} else {
    		stopEDRRating=true;
    	}
		if(deducedQuantity==null || deducedQuantity.compareTo(BigDecimal.ZERO)>0){
			Provider provider=charge.getProvider();
			UsageChargeInstance chargeInstance =usageChargeInstanceService.findById(charge.getChargeInstanceId());
			WalletOperation walletOperation = rateEDRwithMatchingCharge(edr, charge,chargeInstance, provider);
			walletOperationService.create(walletOperation, null,provider);
		}
		return stopEDRRating;
    }
    
    /**
     * Rate an EDR using counters if they apply 
     * @param edr
     */
    //TODO: this is only for postpaid wallets, for prepaid we dont need to check counters
    public void ratePostpaidUsage(EDR edr){
    	if(edr.getSubscription()==null){
    		edr.setStatus(EDRStatusEnum.REJECTED);
    		edr.setRejectReason("subscription null");
    	} else {
    		boolean edrIsRated = false;
    		if(chargeCache.containsKey(edr.getSubscription().getId())){
    			//TODO:order charges by priority and id
        		List<UsageChargeInstanceCache> charges = chargeCache.get(edr.getSubscription().getId());
    			for(UsageChargeInstanceCache charge: charges){
    				if(charge.getFilter1()==null || charge.getFilter1().equals(edr.getParameter1())) {
    					if(charge.getFilter2()==null || charge.getFilter1().equals(edr.getParameter1())) {
    						if(charge.getFilter3()==null || charge.getFilter1().equals(edr.getParameter1())) {
    							if(charge.getFilter4()==null || charge.getFilter1().equals(edr.getParameter1())) {
    								if(charge.getFilterExpression()!=null) {
    									//TODO: implement EL expression 
    									//javax.el.ELContext elContext = javax.faces.context.FacesContext.getCurrentInstance().getELContext();
    									//javax.el.ExpressionFactory expressionFactory = 
        		    				}	
    								//we found matching charge, if we rate it we exit the look
    								edrIsRated=rateEDRonChargeAndCounters(edr,charge);
    								if(edrIsRated){
    					        		edr.setStatus(EDRStatusEnum.RATED);
    									break;
    								}
    		    				}	
    	    				}	
        				}		
    				}
    			}
    			if(!edrIsRated){
            		edr.setStatus(EDRStatusEnum.REJECTED);
            		edr.setRejectReason("no matching charge");   
    			}
    		} else {
        		edr.setStatus(EDRStatusEnum.REJECTED);
        		edr.setRejectReason("subscription has no usage charge");    			
    		}
    	}
    }    
}
