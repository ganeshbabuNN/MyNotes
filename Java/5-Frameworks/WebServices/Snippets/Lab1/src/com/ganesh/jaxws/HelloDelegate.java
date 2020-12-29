package com.ganesh.jaxws;

@javax.jws.WebService(targetNamespace = "http://jaxws.ganesh.com/", serviceName = "HelloService", portName = "HelloPort", wsdlLocation = "WEB-INF/wsdl/HelloService.wsdl")
public class HelloDelegate {

	com.ganesh.jaxws.Hello hello = new com.ganesh.jaxws.Hello();

	public String getMessage(String name) {
		return hello.getMessage(name);
	}

}