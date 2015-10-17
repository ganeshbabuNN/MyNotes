package com.ganesh.ejb3.webservice.credicard;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;

/**
 * This object contains factory methods for each Java content interface and Java
 * element interface generated in the com.ganesh.ejb3.webservice.credicard
 * package.
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

	private final static QName _DeductAmoutResponse_QNAME = new QName(
			"http://ejb3.ganesh.com/", "deductAmoutResponse");
	private final static QName _DeductAmout_QNAME = new QName(
			"http://ejb3.ganesh.com/", "deductAmout");

	/**
	 * Create a new ObjectFactory that can be used to create new instances of
	 * schema derived classes for package: com.ganesh.ejb3.webservice.credicard
	 * 
	 */
	public ObjectFactory() {
	}

	/**
	 * Create an instance of {@link DeductAmout }
	 * 
	 */
	public DeductAmout createDeductAmout() {
		return new DeductAmout();
	}

	/**
	 * Create an instance of {@link DeductAmoutResponse }
	 * 
	 */
	public DeductAmoutResponse createDeductAmoutResponse() {
		return new DeductAmoutResponse();
	}

	/**
	 * Create an instance of {@link JAXBElement }{@code <}
	 * {@link DeductAmoutResponse }{@code >}
	 * 
	 */
	@XmlElementDecl(namespace = "http://ejb3.ganesh.com/", name = "deductAmoutResponse")
	public JAXBElement<DeductAmoutResponse> createDeductAmoutResponse(
			DeductAmoutResponse value) {
		return new JAXBElement<DeductAmoutResponse>(_DeductAmoutResponse_QNAME,
				DeductAmoutResponse.class, null, value);
	}

	/**
	 * Create an instance of {@link JAXBElement }{@code <}{@link DeductAmout }
	 * {@code >}
	 * 
	 */
	@XmlElementDecl(namespace = "http://ejb3.ganesh.com/", name = "deductAmout")
	public JAXBElement<DeductAmout> createDeductAmout(DeductAmout value) {
		return new JAXBElement<DeductAmout>(_DeductAmout_QNAME,
				DeductAmout.class, null, value);
	}

}
