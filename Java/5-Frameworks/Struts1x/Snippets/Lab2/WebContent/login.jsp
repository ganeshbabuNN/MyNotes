<%@ taglib prefix="html" uri="/WEB-INF/struts-html.tld"%>
<html>
<body>
<html:form action="/LoginSubmit">
<table>
<tr>
<td align="center" colspan="3"><font size="6" face="ARIAL"> Account Login </font></td>
</tr>
<tr>
<td align="center" colspan="2"><font color="red" size="5">${EMSG}</font></td> 
</tr>
<tr>
<td><h1> UserName </h1></td>
<td><html:text property="username"/></td>
<td><html:errors property="username"/></td>
</tr>
<tr>
<td><h1> Password </h1></td>
<td><html:password property="password"/></td>
<td><font color="red" size="5"><html:errors property="password"/></font></td>
</tr>
<tr>
<td colspan="2" align="right"><html:submit value="Login"/></td>
</tr>
</table>
</html:form>
</body>
</html>