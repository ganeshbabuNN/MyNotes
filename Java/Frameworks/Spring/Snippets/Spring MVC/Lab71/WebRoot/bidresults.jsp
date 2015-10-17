<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<body>
		<h1>Ganesh Learning Center</h1>
		<br/><h2>Student Search Results</h2>
		<table>
			<tr><td>Student ID </td>
			<td>Batch ID</td>
			<td>Student Name</td>
			<td>Email ID</td>
			<td>Phone No</td>
			</tr>
			
			<c:forEach items="${LIST}" var="STO">
			<tr><td>${STO.sid}</td>
			<td>${STO.bid}</td>
			<td>${STO.sname}</td>
			<td>${STO.email}</td>
			<td>${STO.phone}</td>
			</tr>
			</c:forEach>			
		</table>		
	</body>	
</html>