<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head><s:head/></head>
<body>
<font color="red" size="7"><s:text name="label.ganesh.header"/></font>
<h3>Student Search Form</h3>
<s:actionerror/>
<s:form action="BidSearchSubmit">
<s:textfield name="bid" label="Enter Batch ID"/>
<s:submit value="Show now"/>
</s:form>
</body>
</html>