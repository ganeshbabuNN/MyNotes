<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
	<html>
	<link href="images/jlc.css" rel="stylesheet" type ="text/css">
	<body>
		<h:form>
		
		<h:panelGrid id="myGrid" columns="1" border="2">
		<h:outputText value="Enter Phone" style="color:red;font-size=20px"/>
		<h:inputText value="#{hello.phone}"/>
		<h:commandButton value="Show Users" actionListener="#{hello.showUsers}"/>
		</h:panelGrid>	
		
		<h:dataTable id="users" rendered="#{hello.showTable}" var="user" value="#{hello.users}" border="2"
		bgcolor="#cc9900" first="2">
		<h:column>
		<f:facet name="header">
		<h:outputText value="First Name"/>
		</f:facet>
		<h:outputText value="#{user.firstName}"/>
		</h:column>
		
		<h:column>
		<f:facet name="header">
		<h:outputText value="Last Name"/>
		</f:facet>
		<h:outputText value="#{user.lastName}"/>
		</h:column>
		
		<h:column>
		<f:facet name="header">
		<h:outputText value="Email"/>
		</f:facet>
		<h:outputText value="#{user.email}"/>
		</h:column>
		
		<h:column>
		<f:facet name="header">
		<h:outputText value="phone"/>
		</f:facet>
		<h:outputText value="#{user.phone}"/>
		</h:column>
		
		</h:dataTable>	
		</h:form>
		
	</body>
	</html>	
</f:view>