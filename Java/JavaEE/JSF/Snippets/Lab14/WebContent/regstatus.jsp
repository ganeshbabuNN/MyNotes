<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
	<html>
	<body>
		<h1>Your Registration has been completed successfully with following informations</h1>
		<h:form>
			<h:panelGrid id="regTable" columns="2" style="border:2;">
			<h:outputText value="name"/>
			<h:outputText value="#{user.name}"/>
			<h:outputText value="Email"/>
			<h:outputText value="#{user.email}"/>
			<h:outputText value="Batch 1"/>
			<h:outputText value="#{user.batch1}"/>
			<h:outputText value="Topics 1"/>
			<h:outputText value="#{user.topics1}"/>
			<h:outputText value="Batch 2"/>
			<h:outputText value="#{user.batch2}"/>
			<h:outputText value="Topics 2"/>
			<h:outputText value="#{user.topics2}"/>
			<h:outputText value="Placement Service"/>
			<h:outputText value="#{user.pservice}"/>
			<h:outputText value="Batch 3"/>
			<h:outputText value="#{user.batch3}"/>
			<h:outputText value="Topics 3"/>
			<h:outputText value="#{user.topics3}"/>
			<h:outputText value="Your Comments on JLC"/>
			<h:outputText value="#{user.comments}"/>
			</h:panelGrid>
			
		</h:form>
	</body>
	</html>	
</f:view>
