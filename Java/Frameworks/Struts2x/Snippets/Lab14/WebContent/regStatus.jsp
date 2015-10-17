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
<tr>
<td>dob</td>
<td><s:property value="dob"/></td>
</tr>
<tr>
<tr>
<td>qualification</td>
<td><s:property value="qualification"/></td>
</tr>
<tr>
<tr>
<td>Courses</td>
<td><s:property value="courses"/></td>
</tr>
<tr>
<tr>
<td>Payment Options</td>
<td><s:iterator value="paymentOption"><s:property/><br>
</s:iterator></td>
</tr>
<tr>
<td>How did you U know JLC: </td>
<td><s:property value="aboutus"/></td>
</tr>
<tr>
<td>comments</td>
<td><s:property value="comments"/></td>
</tr>
<tr>
<td>TermsAcceptance</td>
<td>
<s:if test="%{termsAcceptance == true}">
<div>Student Has Accepted Terms</div>
</s:if>
<s:elseif test="%{termsAcceptance == false}">
<div>Student has NOT accepted Terms</div>
</s:elseif>
</td>
</tr>
<tr>
<td>Token </td>
<td><s:property value="token"/></td>
</tr>
</table> 
</body>
</html>