<%@ taglib prefix="html" uri="/WEB-INF/struts-html.tld" %>

<html>
<body>
<h1>Java Learning Center</h1>
<h1> Student Login Form</h1>
<font color="red" size="5"> <html:errors property="login.invalid"/></font>
<html:form action="/LoginSubmit">
<table>
<tr>
<td><h1> UserName </h1></td>
<td><html:text property="username"/></td>
<td><font color="red" size="5"><html:errors property="username"/> </font></td>
</tr>
<tr>
<td><h1> Password </h1></td>
<td><html:password property="password"/></td>
<td><font color="red" size="5"><html:errors property="password"/></font></td>
</tr>
<tr>
<td colspan="2" align="right"> <html:submit value="Login Now"/></td>
</tr>
</table>
</html:form>
</body>
</html>