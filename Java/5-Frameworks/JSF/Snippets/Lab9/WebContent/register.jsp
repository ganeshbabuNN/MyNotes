<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
	<html>
	<body>
	<h1>Ganesh Learning Center</h1>
	<h2>Registeration Form</h2>
	<h:form>
		<h:outputText value="Please Enter Student Information"/>
		<h:panelGrid id="studentFeeInfo" columns="3" border="1" bgcolor="pink">		
		<h:outputText value="Batch Id"/>
		<h:inputText id="Batchid" value="#{studentBean.bid}" required="true" label="Batch Id" size="25" style="color:blue;font-size:30;font-style:bold">
		<f:converter converterId="bidconverter"/>
		</h:inputText>
		<h:message for="Batchid" style="color:red;font-size=30"></h:message>
		
		<h:outputText value="Student Id"/>
		<h:inputText id="Studentid" value="#{studentBean.sid}" required="true" label="Student Id" size="25" style="color:blue;font-size:30;font-style:bold">
		<f:converter converterId="sidconverter"/>
		</h:inputText>
		<h:message for="Studentid" style="color:red;font-size=30"/>
		
		<h:outputText value="Fee Amount"/>
		<h:inputText id="FeeAmount" value="#{studentBean.amount}" required="true" label="Fee Amount" size="25" style="color:blue;font-size:30;font-style:bold">
		<f:validateDoubleRange minimum="5555.00" maximum="9999.00"/>
		<f:convertNumber minFractionDigits="4" maxFractionDigits="6"/>
		</h:inputText>
		<h:message for="FeeAmount" style="color:red;font-size=30"/>
		
		<h:outputText value="Payment Date"/>
		<h:inputText id="PaymentDate" value="#{studentBean.paymentDate}" required="true" label="Payment Date" size="25" style="color:blue;font-size:30;font-style:bold">
		<f:convertDateTime pattern="dd/MM/yyyy"/>
		</h:inputText>
		<h:message for="PaymentDate" style="color:red;font-size=30"/>
		</h:panelGrid>
		<h:commandButton id="submit" value="Add Fee" action="#{studentBean.register}"/>
	</h:form>
	</body>
	</html>
</f:view>
