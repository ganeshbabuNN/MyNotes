<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
	<html>
	<body>
	<h1>Ganesh Learning Center</h1>
	<h2>Registeration Form</h2>
	<h:form>
		<h:panelGrid id="myGrid1" columns="1" border="2" rendered="#{studentBean.showMyGrid1}">
		<h:commandLink value="Student Registration" actionListener="#{studentBean.registerPart1}" style="font-szie:25"/>
		</h:panelGrid>
		
		<h:panelGrid id="myGrid2" columns="2" border="1" rendered="#{studentBean.showMyGrid2}">
		<h:outputText value="Please Select Batch" style="font-size:25"/>
		<h:selectOneMenu id="batch" value="#{studentBean.bid}" onchange="submit()"
		valueChangeListener="#{studentBean.registerPart2}">
		<f:selectItem itemLabel="B-46" itemValue="B-46"/>
		<f:selectItem itemLabel="B-47" itemValue="B-47"/>
		<f:selectItem itemLabel="B-48" itemValue="B-48"/>
		<f:selectItem itemLabel="B-49" itemValue="B-49"/>
		<f:selectItem itemLabel="B-50" itemValue="B-50"/>		
		</h:selectOneMenu>
		</h:panelGrid>
		
		<h:panelGrid id="myGrid3" columns="2" border="1" rendered="#{studentBean.showMyGrid3}">
		<h:outputText value="Batch ID Selected"/>
		<h:panelGroup>
		<h:outputText id="batchld" value="#{studentBean.bid}"/>
		<h:inputHidden value="#{studentBean.bid}"/>
		</h:panelGroup>
		<h:outputText value="Student Id"/>
		<h:inputText id="sid" value="#{studentBean.sid}"/>
		<h:outputText value="Student Name"/>
		<h:inputText id="sname" value="#{studentBean.sname}"/>
		<h:outputText value="Email Id"/>
		<h:inputText id="email" value="#{studentBean.email}"/>
		<h:outputText value="Phone No"/>
		<h:inputText id="phone" value="#{studentBean.phone}"/>		
		</h:panelGrid>
		<h:commandButton value="Register Now" action="#{studentBean.registerNow}" rendered="#{studentBean.showMyGrid3}"/>
		</h:form>
	</body>
	</html>
</f:view>
