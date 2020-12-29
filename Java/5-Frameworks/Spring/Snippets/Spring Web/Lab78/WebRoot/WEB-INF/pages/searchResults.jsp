<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<body>
	<h1>Ganesh Learning Center</h1>
	<h2>Search Results</h2>
	<c:if test="${EDIT eq 'FALSE'}">
	<table>
		<tr><td>Contact ID</td><td>${CTO.cid}</td></tr>
		<tr><td>First name</td><td>${CTO.fname}</td></tr>
		<tr><td>Last name</td><td>${CTO.lname}</td></tr>
		<tr><td>Email ID</td><td>${CTO.email}</td></tr>
		<tr><td>Phone No</td><td>${CTO.phone}</td></tr>		
	</table>
	<a href="editContactSubmit.jlc">Edit Contact</a>
	</c:if>
	<c:if test="${EDIT eq 'TRUE'}">
	<form:form action="updateContactSubmit.jlc" commandName="contactCommand">
	<table>
		<tr><td>Contact ID</td><td>${CTO.cid}
		<form:hidden path="cid" value="${CTO.cid}"/></td></tr>
		<tr><td>First name</td>
		<td><form:input path="fname" value="${CTO.fname}"/></td>
		<td><font color="red" size="4"><form:errors path="fname"/></font></td></tr>
		<tr><td> Last Name </td>
		<td><form:input path="lname" value="${CTO.lname}"/></td>
		<td><font color="red" size="4"><form:errors path="lname"/></font></td></tr>
		<tr><td>Email ID</td>
		<td><form:input path="email" value="${CTO.email}"/></td>
		<td><font color="red" size="4"><form:errors path="email"/></font></td></tr>
		<tr><td>Phone No</td>
		<td><form:input path="phone" value="${CTO.phone}"/></td>
		<td><font color="red" size="4"><form:errors path="phone"/></font></td></tr>		
	</table>
	<tr>
	<td colspan="2" align="center">
	<input type="submit" value="Update Contact"/></td>
	</form:form>
	</c:if>	
	</body>
</html>