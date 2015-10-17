<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head><s:head/></head>
<body>
<font color="red" size="7"><s:text name="label.ganesh.header"/></font>
<h3>Student Results</h3>
<table>
<tr>
<td>Student id </td>
<td><s:property value="sto.sid"/></td>
</tr>
<tr>
<td>Student Name </td>
<td><s:property value="sto.bid"/></td>
</tr>
<tr>
<td>Email ID</td>
<td><s:property value="sto.email"/></td>
</tr>
<tr>
<td>Phone No</td>
<td><s:property value="sto.phone"/></td>
</tr>
</table>
</body>
</html>