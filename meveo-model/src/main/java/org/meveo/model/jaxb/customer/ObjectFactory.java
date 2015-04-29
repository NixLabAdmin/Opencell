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
//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vhudson-jaxb-ri-2.2-147 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2011.02.01 at 08:25:37 PM WET 
//


package org.meveo.model.jaxb.customer;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;

import org.meveo.model.jaxb.account.Address;
import org.meveo.model.jaxb.account.Name;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the org.meveo.model.jaxb.customer package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _State_QNAME = new QName("", "state");
    private final static QName _Address1_QNAME = new QName("", "address1");
    private final static QName _Address2_QNAME = new QName("", "address2");
    private final static QName _Firstname_QNAME = new QName("", "firstname");
    private final static QName _Address3_QNAME = new QName("", "address3");
    private final static QName _City_QNAME = new QName("", "city");
    private final static QName _Country_QNAME = new QName("", "country");
    private final static QName _Tel1_QNAME = new QName("", "tel1");
    private final static QName _ExternalRef2_QNAME = new QName("", "externalRef2");
    private final static QName _Tel2_QNAME = new QName("", "tel2");
    private final static QName _Title_QNAME = new QName("", "title");
    private final static QName _ExternalRef1_QNAME = new QName("", "externalRef1");
    private final static QName _SIRET_QNAME = new QName("", "SIRET");
    private final static QName _Email_QNAME = new QName("", "email");
    private final static QName _Description_QNAME = new QName("", "description");
    private final static QName _Company_QNAME = new QName("", "company");
    private final static QName _ZipCode_QNAME = new QName("", "zipCode");
    private final static QName _PaymentMethod_QNAME = new QName("", "paymentMethod");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: org.meveo.model.jaxb.customer
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Errors }
     * 
     */
    public Errors createErrors() {
        return new Errors();
    }

    /**
     * Create an instance of {@link Warnings }
     * 
     */
    public Warnings createWarnings() {
        return new Warnings();
    }

    /**
     * Create an instance of {@link Customers }
     * 
     */
    public Customers createCustomers() {
        return new Customers();
    }

    /**
     * Create an instance of {@link Name }
     * 
     */
    public Name createName() {
        return new Name();
    }

    /**
     * Create an instance of {@link CustomerAccounts }
     * 
     */
    public CustomerAccounts createCustomerAccounts() {
        return new CustomerAccounts();
    }

    /**
     * Create an instance of {@link ErrorCustomer }
     * 
     */
    public ErrorCustomer createErrorCustomer() {
        return new ErrorCustomer();
    }

    /**
     * Create an instance of {@link WarningCustomerAccount }
     * 
     */
    public WarningCustomerAccount createWarningCustomerAccount() {
        return new WarningCustomerAccount();
    }

    /**
     * Create an instance of {@link Address }
     * 
     */
    public Address createAddress() {
        return new Address();
    }

    /**
     * Create an instance of {@link ErrorCustomerAccount }
     * 
     */
    public ErrorCustomerAccount createErrorCustomerAccount() {
        return new ErrorCustomerAccount();
    }

    /**
     * Create an instance of {@link Customer }
     * 
     */
    public Customer createCustomer() {
        return new Customer();
    }

    /**
     * Create an instance of {@link CustomerAccount }
     * 
     */
    public CustomerAccount createCustomerAccount() {
        return new CustomerAccount();
    }

    /**
     * Create an instance of {@link WarningCustomer }
     * 
     */
    public WarningCustomer createWarningCustomer() {
        return new WarningCustomer();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "state")
    public JAXBElement<String> createState(String value) {
        return new JAXBElement<String>(_State_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "address1")
    public JAXBElement<String> createAddress1(String value) {
        return new JAXBElement<String>(_Address1_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "address2")
    public JAXBElement<String> createAddress2(String value) {
        return new JAXBElement<String>(_Address2_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "firstname")
    public JAXBElement<String> createFirstname(String value) {
        return new JAXBElement<String>(_Firstname_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "address3")
    public JAXBElement<String> createAddress3(String value) {
        return new JAXBElement<String>(_Address3_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "city")
    public JAXBElement<String> createCity(String value) {
        return new JAXBElement<String>(_City_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "country")
    public JAXBElement<String> createCountry(String value) {
        return new JAXBElement<String>(_Country_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "tel1")
    public JAXBElement<String> createTel1(String value) {
        return new JAXBElement<String>(_Tel1_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "externalRef2")
    public JAXBElement<String> createExternalRef2(String value) {
        return new JAXBElement<String>(_ExternalRef2_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "tel2")
    public JAXBElement<String> createTel2(String value) {
        return new JAXBElement<String>(_Tel2_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "title")
    public JAXBElement<String> createTitle(String value) {
        return new JAXBElement<String>(_Title_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "externalRef1")
    public JAXBElement<String> createExternalRef1(String value) {
        return new JAXBElement<String>(_ExternalRef1_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "SIRET")
    public JAXBElement<String> createSIRET(String value) {
        return new JAXBElement<String>(_SIRET_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "email")
    public JAXBElement<String> createEmail(String value) {
        return new JAXBElement<String>(_Email_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "description")
    public JAXBElement<String> createDescription(String value) {
        return new JAXBElement<String>(_Description_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "company")
    public JAXBElement<String> createCompany(String value) {
        return new JAXBElement<String>(_Company_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "zipCode")
    public JAXBElement<String> createZipCode(String value) {
        return new JAXBElement<String>(_ZipCode_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "", name = "paymentMethod")
    public JAXBElement<String> createPaymentMethod(String value) {
        return new JAXBElement<String>(_PaymentMethod_QNAME, String.class, null, value);
    }

}
