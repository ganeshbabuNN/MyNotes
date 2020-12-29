<?xml version="1.0" encoding="UTF-8"?> 
<%@ taglib uri="http://richfaces.org/rich" prefix="rich"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j"%>
<f:view>
	<body>
		<br>
		<rich:panel header="Tabs,Panels and PanelMenu Example" style="background-color:#ebf3fd">
		<rich:tabPanel id="jlctabs" headerAlignment="left" height="600px" selectedTab="feesTab">
		<rich:tab name="courseTab" label="Course Details">
		CourseDetails
				
		<h:form id="courseDetailsForm">
		<h:panelGrid columns="2" columnClasses="cols" width="500px">
		<rich:panelMenu id="coursemenu" label="Available Courses" mode="ajax">
		
		<rich:panelMenuGroup label="Module1">
		<rich:panelMenuGroup label="Course Java" action="#{panelMenuBean.updateSelectedMenu}">
		<f:param name="selectedMenu" value="Core Java"/>
		</rich:panelMenuGroup>
		
		<rich:panelMenuGroup label="JDBC" action="#{panelMenuBean.updateSelectedMenu}">
		<f:param name="selectedMenu" value="JDBC"/>
		</rich:panelMenuGroup>
		
		<rich:panelMenuGroup label="Servlets" action="#{panelMenuBean.updateSelectedMenu}">
		<f:param name="selectedMenu" value="Servlets"/>
		</rich:panelMenuGroup>
		
		<rich:panelMenuGroup label="JSP" action="#{panelMenuBean.updateSelectedMenu}">
		<f:param name="selectedMenu" value="JSP"/>
		</rich:panelMenuGroup>
		</rich:panelMenuGroup>
		
		<rich:panelMenuGroup label="Module2">
		<rich:panelMenuItem label="Struts" action="#{panelMenuBean.updateSelectedMenu}">
		<f:param name="selectedMenu" value="struts"/>
		</rich:panelMenuItem>
		
		<rich:panelMenuItem label="JSF" action="#{panelMenuBean.updateSelectedMenu}">
		<f:param name="selectedMenu" value="JSF"/>
		</rich:panelMenuItem>
		
		<rich:panelMenuItem label="Flex" action="#{panelMenuBean.updateSelectedMenu}">
		<f:param name="selectedMenu" value="Flex"/>
		</rich:panelMenuItem>
		
		<rich:panelMenuItem label="JDK1.5" action="#{panelMenuBean.updateSelectedMenu}">
		<f:param name="selectedMenu" value="JDK1.5"/>
		</rich:panelMenuItem>
		</rich:panelMenuGroup>
		
		<rich:panelMenuGroup label="Module3">
		<rich:panelMenuItem label="Hibernate" action="#{panelMenuBean.updateSelectedMenu}">
		<f:param name="selectedMenu" value="Hibernate"/>
		</rich:panelMenuItem>
		
		<rich:panelMenuItem label="Spring" action="#{panelMenuBean.updateSelectedMenu}">
		<f:param name="selectedMenu" value="Spring"/>
		</rich:panelMenuItem>		
		</rich:panelMenuGroup>
		
		<rich:panelMenuGroup label="Module4">
		<rich:panelMenuItem label="EJB" action="#{panelMenuBean.updateSelectedMenu}">
		<f:param name="selectedMenu" value="EJB"/>
		</rich:panelMenuItem>
		
		<rich:panelMenuItem label="WebServices" action="#{panelMenuBean.updateSelectedMenu}">
		<f:param name="selectedMenu" value="WebServices"/>
		</rich:panelMenuItem>
		
		<rich:panelMenuItem label="XML" action="#{panelMenuBean.updateSelectedMenu}">
		<f:param name="selectedMenu" value="XML"/>
		</rich:panelMenuItem>				
		</rich:panelMenuGroup>
		</rich:panelMenu>
		
		<rich:panel bodyClass="rich-laguna-panel-no-header">
		<a4j:outputPanel ajaxRendered="true">
		<h:outputText value="#{panelMenuBean.selectedMenu}" id="selectedMenu"/>
		</a4j:outputPanel>
		</rich:panel>
		</h:panelGrid>
		</h:form>
		</rich:tab>
		
		<rich:tab name="branchTab" label="JLC Branches">
		<rich:panelBar height="400" width="500" selectedPanel="adddr4">
		<rich:panelBarItem id="addr1" label="Mathikere">Java Learning Center<br>KNN Complex, 2nd Flr,<br>HMT Main Road,<br>Mathikere,<br>Bangalore-5600054<br>ph:080-40926699<br>
		</rich:panelBarItem>
		
		<rich:panelBarItem id="addr2" label="Madiwala">Java Learning Center<br>Madiwala,<br>Bangalore<br>
		</rich:panelBarItem>
		
		<rich:panelBarItem id="addr3" label="Marathahalli">Java Learning Center<br>Marathahalli,<br>Bangalore<br>
		</rich:panelBarItem>
		
		<rich:panelBarItem id="addr4" label="HSR Layout">Java Learning Center<br>HSR Layout,<br>Bangalore<br>
		</rich:panelBarItem>		
		</rich:panelBar>		
		</rich:tab>
		
		<rich:tab name="feesTab" label="Fees">Fees Details
		</rich:tab>
		</rich:tabPanel>		
		</rich:panel>
	</body>
</f:view>
