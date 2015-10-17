<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>

<f:view>
	<html>
		<body>
		<h1>Ganesh Learning Center</h1>
		<h:panelGrid id="myPanelGrid" columns="2" border="1">
		<h:outputText value="Batch Id"/>
		<h:outputText value="#{studentBean.bid}" style="color:blue;font-size:20;font-style:bold"/>
		<h:outputText value="Student Id"/>
		<h:outputText value="#{studentBean.sid}" style="color:blue;font-size:20;font-style:bold"/>
		<h:outputText value="Student Name"/>
		<h:outputText value="#{studentBean.sname}" style="color:blue;font-size:20;font-style:bold"/>
		<h:outputText value="Email Id"/>
		<h:outputText value="#{studentBean.email}" style="color:blue;font-size:20;font-style:bold"/>
		<h:outputText value="Phone No"/>
		<h:outputText value="#{studentBean.phone}" style="color:blue;font-size:20;font-style:bold"/>		
		</h:panelGrid>		
		</body>	
	</html>
</f:view>