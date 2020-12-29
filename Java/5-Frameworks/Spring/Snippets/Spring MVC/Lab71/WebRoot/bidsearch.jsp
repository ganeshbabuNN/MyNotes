<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<body>
		<h1>Ganesh Learning Center</h1>
		<h2>Student Search Form</h2>
		<form:form action="searchStudent.jlc" method="post" commandName="bidSearchCommand">
		<table>
			<tr><td>Enter Batch ID </td></tr>
			<tr><td><form:input path="bid"/></td></tr>
			<tr><td><font color="red" size="5">
			<form:errors path="bid"/></font></td></tr>
			<tr><td><input type="submit" value="Search"/></td></tr>
		</table>
		</form:form>
	</body>	
</html>