<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<f:view>
	<html>
		<body>
		<center>
		<h1>Ganesh Learning Center</h1>
		<h2>Online Fee Payment</h2>
		<h:form>
			<h:panelGrid id="feePanel" columns="3">
			<h:outputText value="Student ID"/>
			<h:inputText id="sid" value="#{feeBean.sid}" required="true"/>
			<h:message for="sid"/>
			<h:outputText value="amt"/>
			<h:inputText id="amt" value="#{feeBean.amount}" required="true"/>
			<h:message for="amt"/>
			<h:outputText value="CCNO"/>
			<h:inputText id="ccn" value="#{feeBean.ccno}" required="true"/>
			<h:message for="ccn"/>
			<h:commandButton value="Pay Now" action="#{feeBean.payFeeNow}"/>			
			</h:panelGrid>
		</h:form>
		</center>
		</body>
	</html>
</f:view>