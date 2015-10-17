<%@ taglib uri ="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<body>
<h1> Java Learning Center</h1>
<html:form action="/RegSubmit">
<table>
<tr>
<td>Student ID </td>
<td><html:text property="sid"/></td>
<td><font color ="red" size ="5">
<html:errors property="sid"/></font></td>
</tr>
<tr>

<tr>
<td>Age </td>
<td><html:text property="age"/></td>
<td><font color ="red" size ="5">
<html:errors property="age"/></font></td>
</tr>
<tr>

<tr>
<td>Fee Paid </td>
<td><html:text property="feepaid"/></td>
<td><font color ="red" size ="5">
<html:errors property="feepaid"/></font></td>
</tr>
<tr>

<td>Fee Balance </td>
<td><html:text property="feebal"/></td>
<td><font color ="red" size ="5">
<html:errors property="feebal"/></font></td>
</tr>
<tr>

<tr>
<td align="center" colspan="3"><html:submit value="Register"/></td>
</tr>
</table>
</html:form>
</body>
</html>