<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body onload="document.f.j_username.focus();">
	<center>
		<h1>Ganesh Learning Center</h1>
		<c:if test="${not empty param.login_error}">
		<font color="red">
		You login attempt was not successfull, try again <br/><br/>
		Reason : <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>
		<table align="center" width="100%" bgcolor="#495C61" height="10%" background="/images/JLC Header.png">		
		<tr><td align="center"><br>
		<font color="white" face="arial" size="4">&copy;2009 Ganesh Learning Center , All Right Reserved</font>
		</td></tr>
		</table>u
		</font>
		</c:if>
		
		
		<form name="f" action="<c:url value='j_spring_security_check'/>" method="post">
		<table>
			<tr><td>User:</td>
			<td><input type="text" name="j_username" value='<c:if test="${not empty param.login_error}">
			<c:out value="${SPRING_SECURITY_LAST_USERNAME}"/>
			</c:if>'/></td></tr>			
			
			<tr><td>Password:</td>
			<td><input type="password" name="j_password"></td></tr>
			<tr><td></td></tr>
			<tr><td colspan="2" align="center"><input value="login" type="submit"></td></tr>
		</table>	
		</form>
	</center>
	</body>
</html>