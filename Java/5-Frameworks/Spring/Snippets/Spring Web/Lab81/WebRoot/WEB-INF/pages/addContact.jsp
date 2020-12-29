<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
	<h2>Add Contact Form</h2>
	<h:form>
	<h:panelGrid id="addPanel" columns="3">
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
		<h:commandButton value="Add Contact" action="#{contactBean.addContact}"/>
		<h:outputText value=""/>
	</h:panelGrid>
	</h:form>
	</body>
</html>