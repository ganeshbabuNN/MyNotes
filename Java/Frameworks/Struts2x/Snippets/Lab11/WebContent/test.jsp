<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head><s:head/></head>
<body>
<h1>Struts2 Interceptor Test</h1>
<s:actionerror/>
<s:form action="TestAction">
<table width="50%">
<tr><td><s:textfield name="username" label="UserName"/></td></tr>
<tr><td><s:textfield name="email" label="Email ID"/></td></tr>
<tr><td>
<s:submit/>
</td></tr>
</table>
</s:form>
</body>
</html>