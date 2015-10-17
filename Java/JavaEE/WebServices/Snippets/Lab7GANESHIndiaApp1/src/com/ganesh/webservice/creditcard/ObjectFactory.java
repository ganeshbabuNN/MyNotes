package com.ganesh.webservice.creditcard;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;

/**
 * This object contains factory methods for each Java content interface and Java
 * element interface generated in the com.ganesh.webservice.creditcard package.
 * <p>
 * An ObjectFactory allows you to programatically construct new instances of the
 * Java representation for XML content. The Java representation of XML content
 * can consist of schema derived interfaces and classes representing the binding
 * of schema type definitions, element declarations and model groups. Factory
 * methods for each of these are provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

	private final static QName _DeductAmount_QNAME = new QName(
			"http://service.creditcard.ganesh.com/", "deductAmount");
	private final static QName _DeductAmountResponse_QNAME = new QName(
			"http://service.creditcard.ganesh.com/", "deductAmountResponse");

	/**
	 * Create a new ObjectFactory that can be used to create new instances of
	 * schema derived classes for package: com.ganesh.webservice.creditcard
	 * 
	 */
	public ObjectFactory() {
	}

	/**
	 * Create an instance of {@link DeductAmountResponse }
	 * 
	 */
	public DeductAmountResponse createDeductAmountResponse() {
		return new DeductAmountResponse();
	}

	/**
	 * Create an instance of {@link DeductAmount }
	 * 
	 */
	public DeductAmount createDeductAmount() {
		return new DeductAmount();
	}

	/**
	 * Create an instance of {@link JAXBElement }{@code <}{@link DeductAmount }
	 * {@code >}
	 * 
	 */
	@XmlElementDecl(namespace = "http://service.creditcard.ganesh.com/", name = "deductAmount")
	public JAXBElement<DeductAmount> createDeductAmount(DeductAmount value) {
		return new JAXBElement<DeductAmount>(_DeductAmount_QNAME,
				DeductAmount.class, null, value);
	}

	/**
	 * Create an instance of {@link JAXBElement }{@code <}
	 * {@link DeductAmountResponse }{@code >}
	 * 
	 */
	@XmlElementDecl(namespace = "http://service.creditcard.ganesh.com/", name = "deductAmountResponse")
	public JAXBElement<DeductAmountResponse> createDeductAmountResponse(
			DeductAmountResponse value) {
		return new JAXBElement<DeductAmountResponse>(
				_DeductAmountResponse_QNAME, DeductAmountResponse.class, null,
				value);
	}

}
