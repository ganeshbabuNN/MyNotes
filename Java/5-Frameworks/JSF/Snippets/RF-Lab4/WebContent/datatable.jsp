<?xml version="1.0" encoding="UTF-8"?> 
<%@ taglib uri="http://richfaces.org/rich" prefix="rich"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j"%>
<f:view>
	<head>
	<title>Data Iteration Example</title>
	</head>
	<body>
	<h:outputText escape="false" value="<u><h1>JAVA LEARNING CENTER,</h1></u>" style="color:red">
	</h:outputText>
	<a4j:form id="listForm" rendered="#{studentsListBean.flag}">
	<a4j:commandButton value="get Student Details" action="#{studentsListBean.getStudents}" reRender="listform,slist"></a4j:commandButton>
	</a4j:form>
	
	<h:outputText escape="false" value="<u><b>Students Details</b></u>" rendered="#{!studentsListBean.flag}"></h:outputText>
	<rich:dataTable width="483" id="slist" rows="10" value="#{studentsListBean.studentsList}" var="student" rendered="#{studentsListBean.flag}">
	<f:facet name="header">
	<rich:columnGroup>
	<h:column><h:outputText value="Name"/></h:column>
	<h:column><h:outputText value="Batch"/></h:column>
	<h:column><h:outputText value="Branch"/></h:column>
	<h:column><h:outputText value="Email"/></h:column>
	<h:column><h:outputText value="Phone"/></h:column>
	</rich:columnGroup>
	</f:facet>
	
	<h:column><h:outputText value="#{student.name}"/></h:column>
	<h:column><h:outputText value="#{student.batchId}"/></h:column>
	<h:column><h:outputText value="#{student.branch}"/></h:column>
	<h:column><h:outputText value="#{student.email}"/></h:column>
	<h:column><h:outputText value="#{student.phone}"/></h:column>
	</rich:dataTable>
	</body>
</f:view>
