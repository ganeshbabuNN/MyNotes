<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
	<html>
	<body>
	<h1>Ganesh Learning Center</h1>
	<h2>User Form</h2>
	<h:form>
		<h:panelGrid id="loginGrid" columns="3">
		
		<h:outputText value="Full Name"/>
		<h:inputText id="fname" value="#{userBean.fname}" required="true" label="Full Name">
		<f:validateLength minimum="4"/>
		</h:inputText>
		<h:message for="fname" style="color:red;font-size:15px"/>
		
		<h:outputText value="Email"/>
		<h:inputText id="email" value="#{userBean.email}" required="true" label="Email ID">
		<f:validateLength minimum="6"/>
		<f:validator validatorId="jlcemail"/>
		</h:inputText>
		<h:message for="email" style="color:red;font-size:15px"/>
		
		<h:outputText value="Age"/>
		<h:inputText id="age" value="#{userBean.age}" required="true" label="Age">
		<f:validateLongRange minimum="20" maximum="30"/>
		</h:inputText>
		<h:message for="age" style="color:red;font-size:15px"/>
		
		<h:outputText value="Balance"/>
		<h:inputText id="bal" value="#{userBean.bal}" required="true" label="Balance">
		<f:validateDoubleRange minimum="900.00" maximum="5000.00"/>
		</h:inputText>
		<h:message for="bal" style="color:red;font-size:15px"/>
		
		<h:outputText value="Username"/>
		<h:inputText id="uname" value="#{userBean.username}" required="true" label="User Name">
		<f:validateLength minimum="5" maximum="8"/>
		<f:validator validatorId="jlcun"/>
		</h:inputText>
		<h:message for="uname" style="color:red;font-size:15px"/>
		
		<h:outputText value="Password"/>
		<h:inputSecret id="pword" value="#{userBean.password}" required="true" label="Password">
		<f:validateLength minimum="4" maximum="9"/>
		</h:inputSecret>
		<h:message for="pword" style="color:red;font-size:15px"/>
		
		<h:commandButton value="Submit Now" action="#{userBean.show}"/>		
		</h:panelGrid>
	</h:form>
	</body>
	</html>
</f:view>
