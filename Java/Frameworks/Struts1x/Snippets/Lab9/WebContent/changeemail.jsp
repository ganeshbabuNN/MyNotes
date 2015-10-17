<%@ taglib uri ="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<body>
<h1> Java Learning Center</h1>
<html:form action="/ChangeEmailSubmit">
<table>
<tr>
<td>Current Email </td>
<td><html:text property="currentEmail"/></td>
<td><font color ="red" size ="5">
<html:errors property="currentEmail"/></font></td>
</tr>
<tr>

<tr>
<td>New Email </td>
<td><html:text property="newEmail"/></td>
<td><font color ="red" size ="5">
<html:errors property="newEmail"/></font></td>
</tr>
<tr>
<tr>
<td align="center" colspan="3"><html:submit value="Change Now"/></td>
</tr>
</table>
</html:form>
</body>
</html>