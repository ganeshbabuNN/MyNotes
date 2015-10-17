<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
	 <br>
	 <h1>Student Home page<br></h1>
	 This is a protected page. You can only see me if you are a Manager or Student.
	 <br><sec:authorize ifAllGranted="ROLE_DIRECTOR">you have "ROLE_DIRECTOR"</sec:authorize>
	 <br><sec:authorize ifAllGranted="ROLE_MANAGER">you have "ROLE_MANAGER"</sec:authorize>
	 <br><sec:authorize ifAllGranted="ROLE_STUDENT">you have "ROLE_STUDENT"</sec:authorize>
	 <br><br><sec:authentication property="name"/>
	 <br>
	 <sec:authentication property="principal.username"/>
	 <br><p><a href="../index.jsp">Home</a>
	 <p><a href="../j_spring_security_logout">Logout</a>
	 </body>	
</html>