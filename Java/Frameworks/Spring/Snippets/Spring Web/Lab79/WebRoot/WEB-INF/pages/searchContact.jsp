<%@taglib prefix="form" uri="http://jakarta.apache.org/struts/tags-html" %>

<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
		<h1>Ganesh Learning Center</h1>
		<h2>Search Contact Form</h2>
		<font color="red" size="4">${NOT_FOUND}</font><br/>
		<form:form action="searchContactSubmit.do">
		<table>
			<tr><td>Enter Email ID</td></tr>
			<tr><td><form:text property="email"/></td></tr>
			<tr><td><font color="red" size="4">
			<form:errors property="email"/></font></td></tr>
			<tr><td>
			<input type="submit" value="Search Contact"/></td></tr>			
		</table>		
		</form:form>	
	</body>
</html>