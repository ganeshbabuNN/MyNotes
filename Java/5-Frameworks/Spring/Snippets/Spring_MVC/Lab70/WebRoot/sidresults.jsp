<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<body>
		<h1>Ganesh Learning Center</h1>
		<h2>Student Search Results</h2>
		<table>
			<tr><td>Student ID </td>
			<td>${STO.sid}</td></tr>
			<tr><td>Batch ID</td>
			<td>${STO.bid}</td></tr>
			<tr><td>Student Name</td>
			<td>${STO.sname}</td></tr>
			<tr><td>Email ID</td>
			<td>${STO.email}</td></tr>
			<tr><td>Phone No</td>
			<td>${STO.phone}</td></tr>
		</table>		
	</body>	
</html>