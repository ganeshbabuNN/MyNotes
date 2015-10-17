<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
	<html>
	<body>
	<h1>Ganesh Learning Center</h1>
	<h1>Hi <h:outputText value="#{userBean.username}"/>, Your Login in success
	</h1>
	<h2>This is JLC Home Page</h2>
	<h:form>
	<h:commandButton value="Try Again" action="#{userBean.gotoLogin}"/>
	</h:form>
	</body>
	</html>
</f:view>
