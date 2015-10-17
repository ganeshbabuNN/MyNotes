<%@ taglib uri ="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<body>
<h1> Java Learning Center</h1>
<html:form action="/RegSubmit">
<table>
<tr>
<td>Student Name </td>
<td><html:text property="sname"/></td>
<td><font color ="red" size ="5">
<html:errors property="sname"/></font></td>
</tr>
<tr>
<td>Email ID </td>
<td><html:text property="email"/></td>
<td><font color ="red" size ="5">
<html:errors property="email"/></font></td>
</tr>
<tr>
<td>DOB[DD/MM/YYYY]</td>
<td><html:text property="dob"/></td>
<td><font color="red" size ="5">
<html:errors property="dob"/></font></td>
</tr>
<tr>
<td>DOR[DD/MM/YYYY]</td>
<td><html:text property="dor"/></td>
<td><font color="red" size ="5">
<html:errors property="dor"/></font></td>
</tr>
<tr>
<td align="center" colspan="3"><html:submit value="Register"/></td>
</tr>
</table>
</html:form>
</body>
</html>