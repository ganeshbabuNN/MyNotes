<?xml version="1.0" encoding="UTF-8"?> 
<%@ taglib uri="http://richfaces.org/rich" prefix="rich"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j"%>
<html>
<f:view>
	<body>
	<h:outputText escape="false" value="<u><h1> GANESH LEARNING CENTER </h1></u>" style="color:red">
	</h:outputText>
	<a4j:form id="listForm" rendered="#{studentsListBean.flag}">
	<a4j:commandButton value="get Students Details" action="#{studentsListBean.getStudents}" reRender="listForm,slist">
	</a4j:commandButton>
	</a4j:form>
	
	<h:outputText escape="false" value="<u><b>Students Details</b></u>" rendered="#{!studentsListBean.flag}"></h:outputText>
	
	<h:form>
	<a4j:keepAlive beanName="studentsListBean"></a4j:keepAlive>
	
	<rich:scrollableDataTable width="483" id="slist" height="150" frozenColCount="0" sortMode="single"
	value="#{studentsListBean.studentsList}" var="student" rendered="#{studentsListBean.flag}">
	
	<rich:column sortable="false">
	<f:facet name="header">	<h:outputText value="Name"/></f:facet>
	<h:outputText value="#{student.name}"/>
	</rich:column>
		
	<rich:column sortable="true" sortExpression="#{student.batchId}">
	<f:facet name="header">	<h:outputText value="Batch"/></f:facet>
	<h:outputText value="#{student.batchId}"/>
	</rich:column>
	
	<rich:column sortable="false">
	<f:facet name="header">	<h:outputText value="Branch"/></f:facet>
	<h:outputText value="#{student.branch}"/>
	</rich:column>
	
	<rich:column sortable="false" >
	<f:facet name="header">	<h:outputText value="Email"/></f:facet>
	<h:outputText value="#{student.email}"/>
	</rich:column>
	
	<rich:column sortable="false" >
	<f:facet name="header">	<h:outputText value="Phone"/></f:facet>
	<h:outputText value="#{student.phone}"/>	
	</rich:column>	
	</rich:scrollableDataTable>
	</h:form>
	</body>
</f:view>
</html>