<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
		<h1>Ganesh Learning Center</h1>
		<h2>Search Contact Form</h2>
		<font color="red" size="4">${NOT_FOUND}</font><br/>
		<h:form>
		<h:panelGrid id="searchPanel" columns="3">
			<h:outputText value="Enter Email Id"/>
			<h:inputText id="email" label="Email" value="#{contactBean.email}" required="true"/>
			<h:message for="email" style="color:red"/>
			
			<h:outputText value=""/>
			<h:commandButton value="Search Contact" action="#{contactBean.searchContact}"/>
			<h:outputText value=""/>
		</h:panelGrid>	
		</h:form>
	</body>
</html>