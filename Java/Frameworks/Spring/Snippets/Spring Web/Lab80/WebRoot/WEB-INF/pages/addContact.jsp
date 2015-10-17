<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
	<h2>Add Contact Form</h2>
	<s:actionerror/>
	<s:form action="addContactSubmit" method="post">
	<table>		
		<tr><td><s:textfield name="fname" label="First Name"/></td></tr>
		<tr><td><s:textfield name="lname" label="Last Name"/></td></tr>
		<tr><td><s:textfield name="email" label="Email ID"/></td></tr>
		<tr><td><s:textfield name="phone" label="Phone"/></td></tr>
		<tr><td align="center" colspan="2">
		<input type="submit" value="Add Contact"/></td></tr>
	</table>
	</s:form>
	</body>
</html>