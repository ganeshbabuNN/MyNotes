<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body onload="document.f.j_username.focus();">
	<center>
		<table height="90%" width="90%" align="center">
		<tr><td align="center"><%@ include file="header.jsp"%>
		</td></tr>
		<tr><td align="center">
		<table border="1">
		<tr>
		<td><h1>Hi: <sec:authentication property="name"/></h1>
		<sec:authorize ifAllGranted="ROLE_DIRECTOR"><h1>You are a DIRECTOR!.</h1></sec:authorize>
		<sec:authorize ifAllGranted="ROLE_MANAGER"><h1>You are a MANAGER!.</h1></sec:authorize>
		<sec:authorize ifAllGranted="ROLE_STUDENT"><h1>You are a STUDENT!.</h1></sec:authorize>
		</td>
		<td><h1>
		<a href="j_spring_security_logout">logout</a></h1></td></tr>
		</table></td>
		
		<td align="center">
		<h1><a href="addContact.jlc">Add Contact</a></h1><br>
		<h1><a href="updateContact.jlc">Update Contact</a></h1><br>
		<h1><a href="searchContact.jlc">Search Contact</a></h1><br>
		<h1><a href="deleteContact.jlc">Delete Contact</a></h1><br></td></tr>
		<tr><td align="center"><%@ include file="footer.jsp"%></td></tr>
		</table>
	</center>
	</body>
</html>