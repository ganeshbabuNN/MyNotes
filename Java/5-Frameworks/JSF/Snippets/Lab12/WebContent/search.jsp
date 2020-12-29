<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
	<html>
	<body>
	<h1>Ganesh Learning Center</h1>
	<f:loadBundle basename="com.ganesh.jsf.messages" var="msgs"/>
	<h1><h:outputText value="#{msgs['jlc.header']}"/></h1>
	
	<h:form>
	<h:outputText value="#{msgs['search.header']}"/><br>
	<h:panelGrid columns="1" border="1" bgcolor="pink">
	<h:outputText value="#{msgs['search.sid.label']}"/><br>
	<h:inputText value="#{studentBean.sid}"/>
	<h:commandButton value="#{msgs['search.button.label']}"
	action="#{studentBean.searchStudentBySid}"/>
	</h:panelGrid>	
	</h:form>
	<br><br><br>
	<h:form>
	<h:panelGrid id="localeChangeLinks" columns="5">
	<h:commandLink value="English" actionListener="#{studentBean.changeToEnglish}"/>
	<h:commandLink value="Kannada" actionListener="#{studentBean.changeToKannada}"/>
	<h:commandLink value="Telugu" actionListener="#{studentBean.changeToTelugu}"/>
	<h:commandLink value="Hindi" actionListener="#{studentBean.changeToHindi}"/>
	<h:commandLink value="Tamil" actionListener="#{studentBean.changeToTamail}"/>
	</h:panelGrid>
	</h:form>
	</html>
</f:view>
