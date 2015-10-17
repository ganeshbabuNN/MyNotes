<?xml version="1.0" encoding="UTF-8"?> 
<%@ taglib uri="http://richfaces.org/rich" prefix="rich"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<html>
<head>
<title>Login Page</title>
</head>
<body>
<f:view>
<rich:message id="loginError" for="loginError" style="color:red"/>
<h:form><rich:panel header="User Login" style="background-color:#ebf3fd;">
<h:panelGrid id="lpg" columns="3" border="0">
<h:outputText value="Username"/>
<rich:inplaceInput id="userName" value="#{loginBean.userName}" required="true"
defaultLabel="click to enter User Name"/>
<rich:message for="userName"/>

<h:outputText value="Password"/>
<rich:inplaceInput id="password" value="#{loginBean.password}" required="true"
defaultLabel="click to enter password" showControls="true"/>
<rich:message for="password"/>
<h:outputText value=""/>
<h:commandButton value="Login" action="#{loginBean.verifyUserAccount}"/>
</h:panelGrid>
</rich:panel>
</h:form>
</f:view>
</body>
</html>