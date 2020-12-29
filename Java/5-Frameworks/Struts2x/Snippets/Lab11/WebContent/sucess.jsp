<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
</head>
<body>
	<h1>Struts2 Interceptor Test</h1>
	<s:actionerror/>
	<table width="50%">
		<tr><td>UserName</td><td>
		<s:property value="userId"/></td></tr>
		<tr><td>Email</td><td>
		<s:property value="emailId"/></td></tr>
		<tr><td>Greeting</td><td>
		<s:property value="#session.Greeting"/></td></tr>
		<tr><td>JLC MSG </td><td>
		<s:property value="#session.JLCMSG"/></td></tr>
	</table>
</body>
</html>