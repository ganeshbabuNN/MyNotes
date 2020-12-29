<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
	<html>
	<body>
		<h1>Register Form</h1>
		<h:form>
			<h:panelGrid id="regTable" columns="3" border="5">
			<h:outputText value="Name"/>
			<h:inputText id="name" value="#{user.name}" required="true"/>
			<h:message for="name" style="color:red;font-style:italic"/>
			
			<h:outputText value="Email"/>
			<h:inputText id="email" value="#{user.email}" required="true"/>
			<h:message for="email" style="color:red;font-style:italic"/>
			
			<h:outputText value="Select Batch"/>
			<h:selectOneMenu id="batch1" value="#{user.batch1}">
			<f:selectItems value="#{user.batchList}"/>
			</h:selectOneMenu>			
			<h:outputText value=""/>
			
			<h:outputText value="Select Batch"/>
			<h:selectOneRadio id="batch2" value="#{user.batch2}">
			<f:selectItems value="#{user.batchList }"/>
			</h:selectOneRadio>
			<h:outputText value=""/>
			
			<h:outputText value="Select Batch"/>
			<h:selectOneListbox id="batch3" value="#{user.batch3}">
			<f:selectItems value="#{user.batchList }"/>
			</h:selectOneListbox>
			<h:outputText value=""/>
			
			<h:outputText value="Select Topics"/>
			<h:selectManyMenu id="topics1" value="#{user.topics1}">
			<f:selectItems value="#{user.topicsList}"/>
			</h:selectManyMenu>
			<h:outputText value=""/>
			
			<h:outputText value="Select Topics"/>
			<h:selectManyCheckbox id="topics2" value="#{user.topics2}">
			<f:selectItems value="#{user.topicsList}"/>
			</h:selectManyCheckbox>
			<h:outputText value=""/>
			
			<h:outputText value="Select Topics"/>
			<h:selectManyListbox id="topics3" value="#{user.topics3}">
			<f:selectItems value="#{user.topicsList}"/>
			</h:selectManyListbox>
			<h:outputText value=""/>
			
			<h:outputText value="Placement Service"/>
			<h:selectBooleanCheckbox id="pservice" value="#{user.pservice}"/>			
			<h:outputText value=""/>
			
			<h:outputText value="Your Comments on JLC"/>
			<h:inputTextarea id="comments" value="#{user.comments}" rows="10" cols="20"/>
			<h:outputText value=""/>
			<h:inputText value=""/>
			
			<h:commandButton value="Register" action="#{user.registerUser}"/>
			<h:outputText value=""/>
			</h:panelGrid>
		</h:form>
	</body>
	</html>	
</f:view>
