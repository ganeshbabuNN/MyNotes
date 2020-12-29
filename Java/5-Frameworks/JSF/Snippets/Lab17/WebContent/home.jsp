<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
	<html>
	<link href="images/jlc.css" rel="stylesheet" type ="text/css">
	<body>
		<h:form>
		<h:graphicImage value="images/jlclogo.png" style="height:200px;width:200px"/>
		<h:panelGrid id="myGrid" columns="1" border="2">
		<h:outputLink value="DataTableDemo.jlc" style="hello">
		<h:outputText value="See DataTable Demo"/>		
		</h:outputLink>	
		</h:panelGrid>
		</h:form>
	</body>
	</html>	
</f:view>
