<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>GANESH Registerations Application</title>
</head>
<body>
<h1>Congratulation  you Registrations is successfull</h1>
<table bgcolor="#C3D599" width=50% border="1">
<tr>
<td>Code</td>
<td><s:property value="code"/></td>
</tr>
<tr>
<td>bid</td>
<td><s:property value="bid"/></td>
</tr>
<tr>
<td>sid</td>
<td><s:property value="sid"/></td>
</tr>
<tr>
<td>sname</td>
<td><s:property value="sname"/></td>
</tr>
<tr>
<tr>
<td>email</td>
<td><s:property value="email"/></td>
</tr>
<tr>
<tr>
<td>gender</td>
<td><s:property value="gender"/></td>
</tr>
<tr>
<td>qualification</td>
<td><s:property value="qualification"/></td>
</tr>
<tr>
<tr>
<td>Payment Options</td>
<td><s:iterator value="paymentOption"><s:property/><br>
</s:iterator></td>
</tr>
</table> 
</body>
</html>