<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head><s:head/></head>
<body>
<font color="red" size="7"><s:text name="label.ganesh.header"/></font>
<h3>Student Search Form</h3>
<font color="red" size="5" >${exception.message}</font>
<s:form action="SidSearchSubmit">
<s:textfield name="sid" label="Enter Student ID"/>
<s:submit value="Show now"/>
</s:form>
</body>
</html>