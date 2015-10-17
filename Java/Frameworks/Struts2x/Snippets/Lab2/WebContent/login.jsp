<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head><s:head/></head>
<body>
<h1> Java Learning Center</h1>
<h3>Account Loging</h3>
<s:actionerror/>
<s:form action="annotatedLoginSubmit">
<s:textfield key="username" cssStyle="font-size:30;color:green"/>
<s:textfield key="password" cssStyle="font-size:30;color:red"></s:textfield>
<s:submit cssStyle="font-size:30;color:green"/>
</s:form>
</body>
</html>