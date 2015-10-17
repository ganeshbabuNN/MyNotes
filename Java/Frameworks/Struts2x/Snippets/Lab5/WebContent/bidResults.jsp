<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head><s:head/></head>
<body>
<font color="red" size="7"><s:text name="label.ganesh.header"/></font>
<h3>Student Results</h3>
<table>
<tr>
<td>Student id </td>
<td>Batch id </td>
<td>Student Name </td>
<td>Email ID</td>
<td>Phone No</td>
</tr>
<s:iterator value="students">
<tr>
<td><s:property value="sid"/></td>
<td><s:property value="bid"/></td>
<td><s:property value="sname"/></td>
<td><s:property value="email"/></td>
<td><s:property value="phone"/></td>
</tr>
</s:iterator>
</table>
</body>
</html>