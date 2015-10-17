<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
	<html>
	<body>
	<h1>Ganesh Learning Center</h1>
	<h:panelGrid id="showld" columns="2">
	<h:outputText value="First Name"/>
	<h:outputText value="#{userBean.fname}"/>
	<h:outputText value="Email"/>
	<h:outputText value="#{userBean.email}"/>
	<h:outputText value="Age"/>
	<h:outputText value="#{userBean.age}"/>
	<h:outputText value="username"/>
	<h:outputText value="#{userBean.username}"/>
	<h:outputText value="password"/>
	<h:outputText value="#{userBean.password}"/>	
		
	</h:panelGrid>
	</body>
	</html>
</f:view>
