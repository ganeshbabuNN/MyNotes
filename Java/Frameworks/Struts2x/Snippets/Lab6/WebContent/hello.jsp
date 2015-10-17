<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<s:head/>
</head>
<body>
<h1>Java Learning Center</h1>
<h3>OGNL Test</h3>
<s:form action="HelloSubmit">
<s:textfield name="name" label="Enter Name"/><br/>
<s:textfield name="email" label="Enter Email"/><br/>
<s:textfield name="phone" label="Enter phone"/><br/>
<s:submit align="left"/>
</s:form>
</body>
</html>