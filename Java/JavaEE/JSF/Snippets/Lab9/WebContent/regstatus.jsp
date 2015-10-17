<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>

<f:view>
	<html>
		<body>
		<h1>Ganesh Learning Center</h1>
		<h:panelGrid id="studentFeeInfo" columns="2" border="1" bgcolor="pink">
		
		<h:outputText value="Batch Id"/>
		<h:outputText id="Batchid" value="#{studentBean.bid}" style="color:blue;font-size:20;font-style;bold">
		<f:converter converterId="bidconverter"/>
		</h:outputText>
		
		<h:outputText value="Student Id"/>
		<h:outputText id="StudentId" value="#{studentBean.sid}" style="color:blue;font-size:20;font-style;bold">
		<f:converter converterId="sidconverter"/>
		</h:outputText>
		
		<h:outputText value="Fee Amount"/>
		<h:outputText value="#{studentBean.amount}" style="color:blue;font-size:20;font-style;bold">
		<f:convertNumber minFractionDigits="4" maxFractionDigits="6"
		type="currency" currencySymbol="Rs."/>
		</h:outputText>
		
		<h:outputText value="Fee Amount"/>
		<h:outputText value="#{studentBean.amount}" style="color:blue;font-size:20;font-style;bold">
		<f:convertNumber minFractionDigits="4" maxFractionDigits="6"
		type="currency" currencySymbol="$,"/>
		</h:outputText>
		
		<h:outputText value="Payment Date"/>
		<h:outputText value="#{studentBean.paymentDate}" style="color:blue;font-size:20;font-style;bold">
		<f:convertDateTime dateStyle="short"/>
		</h:outputText>
		
		<h:outputText value="Payment Date"/>
		<h:outputText value="#{studentBean.paymentDate}" style="color:blue;font-size:20;font-style;bold">
		<f:convertDateTime dateStyle="medium"/>
		</h:outputText>
		
		<h:outputText value="Payment Date"/>
		<h:outputText value="#{studentBean.paymentDate}" style="color:blue;font-size:20;font-style;bold">
		<f:convertDateTime dateStyle="long"/>
		</h:outputText>
		
		<h:outputText value="Payment Date"/>
		<h:outputText value="#{studentBean.paymentDate}" style="color:blue;font-size:20;font-style;bold">
		<f:convertDateTime dateStyle="full"/>
		</h:outputText>
		
		<h:outputText value="Payment Date"/>
		<h:outputText value="#{studentBean.paymentDate}" style="color:blue;font-size:20;font-style;bold">
		<f:convertDateTime timeStyle="short"/>
		</h:outputText>
		
		<h:outputText value="Payment Date"/>
		<h:outputText value="#{studentBean.paymentDate}" style="color:blue;font-size:20;font-style;bold">
		<f:convertDateTime timeStyle="medium"/>
		</h:outputText>
		
		<h:outputText value="Payment Date"/>
		<h:outputText value="#{studentBean.paymentDate}" style="color:blue;font-size:20;font-style;bold">
		<f:convertDateTime timeStyle="long"/>
		</h:outputText>
		
		<h:outputText value="Payment Date"/>
		<h:outputText value="#{studentBean.paymentDate}" style="color:blue;font-size:20;font-style;bold">
		<f:convertDateTime timeStyle="full"/>
		</h:outputText>
		
		<h:outputText value="Payment Date"/>
		<h:outputText value="#{studentBean.paymentDate}" style="color:blue;font-size:20;font-style;bold">
		<f:convertDateTime pattern="dd-MM-yyyy"/>
		</h:outputText>
		
		<h:outputText value="Payment Date"/>
		<h:outputText value="#{studentBean.paymentDate}" style="color:blue;font-size:20;font-style;bold">
		<f:convertDateTime pattern="dd/MM/yyy"/>
		</h:outputText>
		
		
		</h:panelGrid>
		
		</body>	
	</html>
</f:view>