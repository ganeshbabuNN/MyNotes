<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
	<html>
	<link href="images/jlc.css" rel="stylesheet" type ="text/css">
	<body>
		<h:form>
		<h:panelGrid id="helloGrid" columns="1" >
		<h:outputFormat value="My name is {0}.I know {1} only" style="hello">
		<f:param value="#{hello.name}"/>
		<f:param value="java"/>		
		</h:outputFormat>	
		</h:panelGrid>
		
		<h:panelGrid id="myGrid" columns="1" >
		<h:outputText value="Enter Name" style="color:red;font-size=20px"/>
		<h:inputText value="#{hello.name}"/>
		<h:commandLink value="Submit Form" actionListener="#{hello.show}"/>
		</h:panelGrid>		
		</h:form>
				
		<h:panelGrid id="haiGrid" columns="1" rendered="#{hello.showGrid}">
		<h:outputText value="I am outputText" styleClass="hello"/>
		</h:panelGrid>
	</body>
	</html>	
</f:view>