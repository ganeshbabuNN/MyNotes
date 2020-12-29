<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>GANESH Registrations Application</title>
<s:head theme="ajax"/>
</head>
<body><br><font size="9">
<s:tree theme="ajax" id="root" label="JLCINDIA">
	<s:treenode theme="ajax" id="HYD" label="<b>Hyderabad</b>">
		<s:treenode theme="ajax" id="AMT" label="Ameerpet"/>
	</s:treenode>
	<s:treenode theme="ajax" id="MKR" label="<b>BANGALORE</b>">
		<s:treenode theme="ajax" id="MKR" label="Mathikere"/>
		<s:treenode theme="ajax" id="BTM" label="BTM Layout"/>		
		<s:treenode theme="ajax" id="MHA" label="Marathahalli"/>
	</s:treenode>
		<s:treenode theme="ajax" id="CHN" label="<b>CHENNAI</b>"/>
	</s:tree>	
	<s:form action="RegisterSubmit">
	<s:optiontransferselect label="Required Technologies" name="reqTechLeft" list="{'Struts','Hibernate','JSF','Web Services','EJB','JPA'}" 
	 doubleName="reqTechsRight" doubleList="{'Spring','Adobe Flex','XML'}"/>
	
	<s:updownselect label="Please Order" list="#{'J2SE':'J2SE','Technologies':'Technologies','Frameworks':'Frameworks'}" name="learning Order"
	headerKey="-1" headerValue="----- Please Order----" emptyOption="true"/>
	<s:submit/>
	</s:form>
	</font>
</body>
</html>
