<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
	<html>
	<body>
	<h1>Ganesh Learning Center</h1>
	<h2>Manged Bean Demo</h2>
	<h:form>
		<h:panelGrid id="myPanel" columns="3">
		<h:outputText value="Name"/>
		<h:inputText id="name" value="#{mbdemoBean.name}" required="true"/>
		<h:message for="name" style="color:red;font-size:10"/>
		<h:outputText value="Email"/>
		<h:inputText id="email" value="#{mbdemoBean.email}" required="true"/>
		<h:message for="email" style="color:red;font-size:10"/>
		<h:commandButton value="Click Here" action="#{mbdemoBean.show}"/>
		</h:panelGrid>
	</h:form>
	</body>
	</body>
	</html>
</f:view>
