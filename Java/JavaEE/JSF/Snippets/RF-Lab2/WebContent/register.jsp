<?xml version="1.0" encoding="UTF-8"?> 
<%@ taglib uri="http://richfaces.org/rich" prefix="rich"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<f:view>
	<body>
		<br> <h:form>
		<rich:panel header="Student Registration" style="background-color:#ebf3fd;font-size:30px">
		<h:panelGrid id="registerPanel" columns="3" border="1" headerClass="gridHeader" footerClass="gridHeader">
		<h:outputText value="Name"/>
		<rich:inplaceInput id="name" value="#{studentBean.name}" required="true" defaultLabel="Click to enter your name"/>
		<rich:message for="name" style="color:red"/>
		
		<h:outputText value="Email"/>
		<rich:inplaceInput id="email" value="#{studentBean.email}" required="true" defaultLabel="Click to enter your email" showControls="true"/>
		<rich:message for="email" style="color:red"/>
		
		<h:outputText value="Date Of Birth"/>
		<rich:calendar id="dob" datePattern="dd-MM-yyyy" value="#{studentBean.dob}" required="true"/>
		<rich:message for="dob" style="color:red"/>
		
		<h:outputText value="Qualification"/>
		<h:panelGroup>
			<h:inputText id="qualification" value="#{studentBean.qualification}" required="true"/>
			<rich:suggestionbox for="qualification" ignoreDupResponses="true" suggestionAction="#{studentBean.autocomplete}" var="result">
			<h:column><h:outputText value="#{result}"/></h:column>
			</rich:suggestionbox>
		</h:panelGroup>
		<rich:message for="qualification" style="color:red"/>
		
		<h:outputText value="Gender"/>
		<rich:inplaceSelect id="gender" value="#{studentBean.gender}" required="true" defaultLabel="Click here to select" listHeight="100%" listWidth="100%">
		<f:selectItem itemLabel="Male" itemValue="Male"/>
		<f:selectItem itemLabel="Female" itemValue="Female"/>
		</rich:inplaceSelect>		
		<rich:message for="gender" style="color:rea"/>
		
		<h:outputText value="Selet Batch"/>
		<h:panelGroup>
			<h:inputText id="batchId" value="#{studentBean.batchId}" required="true"/>
			<rich:suggestionbox for="batchId" fetchValue="#{batchBean.batchId}" ignoreDupResponses="true" suggestionAction="#{studentBean.suggestBatch}" var="batchBean">
			<rich:column><h:outputText value="#{batchBean.batchId}"/></rich:column>
			<rich:column><h:outputText value="#{batchBean.branch}"/></rich:column>
			<rich:column><h:outputText value="#{batchBean.faculty}"/></rich:column>
			</rich:suggestionbox>
		</h:panelGroup>
		<rich:message for="batchId" style="color:red"/>
		
		<h:outputText value="Select Courses"/>
		<rich:pickList id="course" value="#{studentBean.course}" required="true">
		<f:selectItem itemLabel="Module1" itemValue="Module1"/>
		<f:selectItem itemLabel="Module2" itemValue="Module2"/>
		<f:selectItem itemLabel="Module3" itemValue="Module3"/>
		<f:selectItem itemLabel="Module4" itemValue="Module4"/>
		</rich:pickList>
		<rich:message for="course" style="color:red"/>
		
		<h:outputText value="Prior Knowledge Level in selected course(10 as the highest)"/>
		<rich:inputNumberSlider id="KnowledgeLevel" minValue="0" maxValue="10" value="#{studentBean.knowledgeLevel}" required="true"/>
		<rich:message for="KnowledgeLevel" style="color:red"/>		
		
		<h:outputText value="First Installation Fees"/>
		<rich:inputNumberSpinner id="regPanel" step="1000" minValue="8000" maxValue="15000" value="#{studentBean.fees}" required="true"/>
		<rich:message for="fees" style="color:red"/>
		
		<h:outputText value="Select your Referal"/>
		<rich:comboBox id="reference" selectFirstOnUpdate="false" defaultLabel="Select" value="#{studentBean.reference}" required="true">
		<f:selectItem itemLabel="JLC Student" itemValue="JLC Student"/>
		<f:selectItem itemLabel="Google Ads" itemValue="Google Ads"/>
		<f:selectItem itemLabel="Internet Ads" itemValue="Internet Ads"/>
		<f:selectItem itemLabel="JLC Website" itemValue="JLC Website"/>
		<f:selectItem itemLabel="News Papers" itemValue="News Papers"/>
		<f:selectItem itemLabel="JLC Institue" itemValue="JLC Institue"/>
		</rich:comboBox>
		<rich:message for="reference" style="color:red"/>
		
		<h:outputText value="Remarks"/>
		<rich:editor viewMode="visual" theme="advanced" id="remarks" value="#{studentBean.remarks}"/>
		<rich:message for="remarks" style="color:red"/>
		</h:panelGrid>
		
		<h:commandButton id="register" value="Register" action="#{studentBean.registerStudent}"/>
		</rich:panel>
		</h:form>
	</body>
</f:view>
