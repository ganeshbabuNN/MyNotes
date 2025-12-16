<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<html>
	<body>
	<h1>Ganesh Learning Center</h1>
	<h2>Search Results</h2>
	<h:form>
	<h:panelGrid id="showPanel" columns="2" rendered="#{!contactBean.editable}">
		<h:outputText value="Contact Id"/>${CTO.cid}
		<h:outputText value="First Name"/>${CTO.fname}
		<h:outputText value="Last Name"/>${CTO.lname}
		<h:outputText value="Email ID"/>${CTO.email}
		<h:outputText value="Phone"/>${CTO.phone}
	<h:commandLink actionListener="#{contactBean.editContact}" value="Edit Contact"/>		
	</h:panelGrid>
	</h:form>
	
	<h:form>
	<h:panelGrid id="editPanel" columns="3" rendered="#{contactBean.editable}">
		<h:outputText value="Contact Id"/>${CTO.cid}
		<h:inputHidden id="cid" value="#{contactBean.cid}"/>
		
		<h:outputText value="First Name"/>
		<h:inputText id="fname" label="First Name" value="#{contactBean.fname}" required="true"/>
		<h:message for="fname" style="color:red"/>
		
		<h:outputText value="Last Name"/>
		<h:inputText id="lname" label="Last Name" value="#{contactBean.lname}" required="true"/>
		<h:message for="lname" style="color:red"/>
		
		<h:outputText value="Email ID"/>
		<h:inputText id="email" label="Email ID" value="#{contactBean.email}" required="true"/>
		<h:message for="email" style="color:red"/>
		
		<h:outputText value="Phone"/>
		<h:inputText id="phone" label="Phone" value="#{contactBean.phone}" required="true"/>
		<h:message for="phone" style="color:red"/>
		
		<h:outputText value=""/>
		<h:commandButton value="Update Contact" action="#{contactBean.updateContact}"/>
		<h:outputText value=""/>
		</h:panelGrid>	
	</h:form>
	</body>
</html>