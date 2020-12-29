package com.ganesh.jaxws.account;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;

/**
 * This object contains factory methods for each Java content interface and Java
 * element interface generated in the com.ganesh.jaxws.account package.
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

	private final static QName _GetBal_QNAME = new QName(
			"http://account.ejb3.ganesh.com/", "getBal");
	private final static QName _Deposit_QNAME = new QName(
			"http://account.ejb3.ganesh.com/", "deposit");
	private final static QName _DepositResponse_QNAME = new QName(
			"http://account.ejb3.ganesh.com/", "depositResponse");
	private final static QName _Withdraw_QNAME = new QName(
			"http://account.ejb3.ganesh.com/", "withdraw");
	private final static QName _GetBalResponse_QNAME = new QName(
			"http://account.ejb3.ganesh.com/", "getBalResponse");
	private final static QName _WithdrawResponse_QNAME = new QName(
			"http://account.ejb3.ganesh.com/", "withdrawResponse");

	/**
	 * Create a new ObjectFactory that can be used to create new instances of
	 * schema derived classes for package: com.ganesh.jaxws.account
	 * 
	 */
	public ObjectFactory() {
	}

	/**
	 * Create an instance of {@link DepositResponse }
	 * 
	 */
	public DepositResponse createDepositResponse() {
		return new DepositResponse();
	}

	/**
	 * Create an instance of {@link GetBalResponse }
	 * 
	 */
	public GetBalResponse createGetBalResponse() {
		return new GetBalResponse();
	}

	/**
	 * Create an instance of {@link GetBal }
	 * 
	 */
	public GetBal createGetBal() {
		return new GetBal();
	}

	/**
	 * Create an instance of {@link WithdrawResponse }
	 * 
	 */
	public WithdrawResponse createWithdrawResponse() {
		return new WithdrawResponse();
	}

	/**
	 * Create an instance of {@link Deposit }
	 * 
	 */
	public Deposit createDeposit() {
		return new Deposit();
	}

	/**
	 * Create an instance of {@link Withdraw }
	 * 
	 */
	public Withdraw createWithdraw() {
		return new Withdraw();
	}

	/**
	 * Create an instance of {@link JAXBElement }{@code <}{@link GetBal }{@code >}
	 * 
	 */
	@XmlElementDecl(namespace = "http://account.ejb3.ganesh.com/", name = "getBal")
	public JAXBElement<GetBal> createGetBal(GetBal value) {
		return new JAXBElement<GetBal>(_GetBal_QNAME, GetBal.class, null, value);
	}

	/**
	 * Create an instance of {@link JAXBElement }{@code <}{@link Deposit }{@code >}
	 * 
	 */
	@XmlElementDecl(namespace = "http://account.ejb3.ganesh.com/", name = "deposit")
	public JAXBElement<Deposit> createDeposit(Deposit value) {
		return new JAXBElement<Deposit>(_Deposit_QNAME, Deposit.class, null,
				value);
	}

	/**
	 * Create an instance of {@link JAXBElement }{@code <}{@link DepositResponse }
	 * {@code >}
	 * 
	 */
	@XmlElementDecl(namespace = "http://account.ejb3.ganesh.com/", name = "depositResponse")
	public JAXBElement<DepositResponse> createDepositResponse(
			DepositResponse value) {
		return new JAXBElement<DepositResponse>(_DepositResponse_QNAME,
				DepositResponse.class, null, value);
	}

	/**
	 * Create an instance of {@link JAXBElement }{@code <}{@link Withdraw }
	 * {@code >}
	 * 
	 */
	@XmlElementDecl(namespace = "http://account.ejb3.ganesh.com/", name = "withdraw")
	public JAXBElement<Withdraw> createWithdraw(Withdraw value) {
		return new JAXBElement<Withdraw>(_Withdraw_QNAME, Withdraw.class, null,
				value);
	}

	/**
	 * Create an instance of {@link JAXBElement }{@code <}{@link GetBalResponse }
	 * {@code >}
	 * 
	 */
	@XmlElementDecl(namespace = "http://account.ejb3.ganesh.com/", name = "getBalResponse")
	public JAXBElement<GetBalResponse> createGetBalResponse(GetBalResponse value) {
		return new JAXBElement<GetBalResponse>(_GetBalResponse_QNAME,
				GetBalResponse.class, null, value);
	}

	/**
	 * Create an instance of {@link JAXBElement }{@code <}
	 * {@link WithdrawResponse }{@code >}
	 * 
	 */
	@XmlElementDecl(namespace = "http://account.ejb3.ganesh.com/", name = "withdrawResponse")
	public JAXBElement<WithdrawResponse> createWithdrawResponse(
			WithdrawResponse value) {
		return new JAXBElement<WithdrawResponse>(_WithdrawResponse_QNAME,
				WithdrawResponse.class, null, value);
	}

}
