<%@ taglib prefix="s" uri="/struts-tags" %>
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
	<b><a href="editContactSubmit.jlc">Edit Contact</a></b>
	</c:if>
	<c:if test="${EDIT eq 'TRUE'}">
	<s:form action="updateContactSubmit.jlc">
	<table>
		<tr><td>Contact ID</td><td>${CTO.cid}
		<s:hidden name="cid"/></td></tr>
		<tr><td><s:textfield name="fname" label="First Name"/></td></tr>
		<tr><td><s:textfield name="lname" label="Last Name"/></td></tr>
		<tr><td><s:textfield name="email" label="Email ID"/></td></tr>
		<tr><td><s:textfield name="phone" label="Phone"/></td></tr>
	<tr>
	<td  align="center" colspan="2">
	<s:submit label="Update Contact"/></td></tr>
	</table>
	</s:form>
	</c:if>	
	</body>
</html>