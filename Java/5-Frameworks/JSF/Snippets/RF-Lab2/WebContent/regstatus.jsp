<%@ taglib uri="http://richfaces.org/rich" prefix="rich"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>

<f:view>
<html>
	<body><br>
	<rich:panel header="Student Registration status. Details are " style="background-color:#ebf3fd">
	<h:outputText value="Student Registration Success.Details are as follows..."/>
	<rich:separator height="2" lineType="dashed" width="50%" /><br>
	
	<h:panelGrid id="regstatusPanel" columns="2" border="1">
	<h:outputText value="Name"/>
	<h:outputText value="#{studentBean.name}"/>
	<h:outputText value="Email"/>
	<h:outputText value="#{studentBean.email}"/>
	<h:outputText value="Date of Birth"/>
	<h:outputText value="#{studentBean.dob}">
	<f:convertDateTime pattern="dd-MM-yyyy"/>
	</h:outputText>
	<h:outputText value="Qualification"/>
	<h:outputText value="#{studentBean.qualification}"/>
	<h:outputText value="Gender"/>
	<h:outputText value="#{studentBean.gender}"/>
	<h:outputText value="Select Batch"/>
	<h:outputText value="#{studentBean.batchId}"/>
	<h:outputText value="Select Courses"/>
	<h:outputText value="#{studentBean.course}"/>
	<h:outputText value="Prior Knowledge level is select course"/>
	<h:outputText value="#{studentBean.knowledgeLevel}"/>
	<h:outputText value="Fee Paid in 1st installation"/>
	<h:outputText value="#{studentBean.fees}"/>
	<h:outputText value="Select Reference"/>
	<h:outputText value="#{studentBean.reference}"/>	
	<h:outputText value="Remarks"/>
	<h:outputText value="#{studentBean.remarks}"/>
	</h:panelGrid>
	</rich:panel>
	</body>
</html>
</f:view>

