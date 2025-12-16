<%@ taglib prefix="form" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib prefix="logic" uri="http://jakarta.apache.org/struts/tags-logic" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<body>
	<h1>Ganesh Learning Center</h1>
	<h2>Search Results</h2>
	<logic:equal value="FALSE" name="EDIT">
	<table>
		<tr><td>Contact ID</td><td>${CTO.cid}</td></tr>
		<tr><td>First name</td><td>${CTO.fname}</td></tr>
		<tr><td>Last name</td><td>${CTO.lname}</td></tr>
		<tr><td>Email ID</td><td>${CTO.email}</td></tr>
		<tr><td>Phone No</td><td>${CTO.phone}</td></tr>		
	</table>
	<b><a href="editContactSubmit.do">Edit Contact</a></b>
	</logic:equal>
	<logic:equal value="TRUE" name="EDIT">
	<form:form action="updateContactSubmit.do">
	<table>
		<tr><td>Contact ID</td><td>${CTO.cid}
		<form:hidden property="cid" value="${CTO.cid}"/></td></tr>
		<tr><td>First name</td>
		<td><form:text property="fname" value="${CTO.fname}"/></td>
		<td><font color="red" size="4"><form:errors property="fname"/></font></td></tr>
		<tr><td> Last Name </td>
		<td><form:text property="lname" value="${CTO.lname}"/></td>
		<td><font color="red" size="4"><form:errors property="lname"/></font></td></tr>
		<tr><td>Email ID</td>
		<td><form:text property="email" value="${CTO.email}"/></td>
		<td><font color="red" size="4"><form:errors property="email"/></font></td></tr>
		<tr><td>Phone No</td>
		<td><form:text property="phone" value="${CTO.phone}"/></td>
		<td><font color="red" size="4"><form:errors property="phone"/></font></td></tr>		
	
	<tr>
	<td colspan="3" align="center">
	<form:submit value="Update Contact"/></td></tr>
	</table>
	</form:form>
	</logic:equal>	
	</body>
</html>