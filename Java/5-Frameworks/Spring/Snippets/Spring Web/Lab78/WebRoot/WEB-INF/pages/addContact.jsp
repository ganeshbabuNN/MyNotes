<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
	<h2>Add Contact Form</h2>
	<form:form action="addContactSubmit.jlc" commandName="contactCommand">
	<table>
		
		<tr>
		<td>First Name</td>
		<td><form:input path="fname"/></td>
		<td><font color="red" size="4">
		<form:errors path="fname"/></font>
		</td></tr>
		
		<tr>
		<td>Last Name</td>
		<td><form:input path="lname"/></td>
		<td><font color="red" size="4">
		<form:errors path="lname"/></font>
		</td></tr>
		
		<tr>
		<td>Email ID</td>
		<td><form:input path="email"/></td>
		<td><font color="red" size="4">
		<form:errors path="email"/></font>
		</td></tr>
		
		<tr>
		<td>Phone</td>
		<td><form:input path="phone"/></td>
		<td><font color="red" size="4">
		<form:errors path="phone"/></font>
		</td></tr>
		
		<tr><td align="center" colspan="2">
		<input type="submit" value="Add Contact"/></td></tr>
	</table>
	</form:form>
	</body>
</html>