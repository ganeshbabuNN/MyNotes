<%@ taglib prefix="form" uri="http://jakarta.apache.org/struts/tags-html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
	<h2>Add Contact Form</h2>
	<form:form action="addContactSubmit.do" method="post">
	<table>
		
		<tr>
		<td>First Name</td>
		<td><form:text property="fname"/></td>
		<td><font color="red" size="4">
		<form:errors property="fname"/></font>
		</td></tr>
		
		<tr>
		<td>Last Name</td>
		<td><form:text property="lname"/></td>
		<td><font color="red" size="4">
		<form:errors property="lname"/></font>
		</td></tr>
		
		<tr>
		<td>Email ID</td>
		<td><form:text property="email"/></td>
		<td><font color="red" size="4">
		<form:errors property="email"/></font>
		</td></tr>
		
		<tr>
		<td>Phone</td>
		<td><form:text property="phone"/></td>
		<td><font color="red" size="4">
		<form:errors property="phone"/></font>
		</td></tr>
		
		<tr><td align="center" colspan="2">
		<input type="submit" value="Add Contact"/></td></tr>
	</table>
	</form:form>
	</body>
</html>