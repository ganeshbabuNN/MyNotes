<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
		<h1>Ganesh Learning Center</h1>
		<h2>Search Contact Form</h2>
		<font color="red" size="4">${NOT_FOUND}</font><br/>
		<s:form action="searchContactSubmit">
		<table>
			<tr><td><s:textfield name="email" label="Email ID"/></td></tr>
			<tr><td><input type="submit" value="Search Contact"/></td></tr>			
		</table>		
		</s:form>	
	</body>
</html>