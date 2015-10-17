<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head><s:head/></head>
<body>
<s:text name="label.ganesh.header"/>
<h3>Account Login</h3>
<s:actionerror/>
<s:form action="LoginSubmit">
<s:textfield name="username" label="Username"/>
<s:textfield name="password" label="Password"/>
<s:submit/>
</s:form>
</body>
</html>