<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head><s:head/></head>
<body>
<h1> Java Learning Center</h1>
<h3>Account Loging</h3>
<s:actionerror/>
<s:form action="LoginSubmit">
<s:textfield name="username" label="Username"/>
<s:textfield name="password" label="Password"></s:textfield>
<s:submit/>
</s:form>
</body>
</html>