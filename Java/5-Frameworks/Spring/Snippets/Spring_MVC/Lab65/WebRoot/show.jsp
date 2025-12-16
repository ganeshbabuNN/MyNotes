<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
	<h2>Course Information</h2>
	<ul><c:forEach var="cou" items="${AL}">
	<li><h1>${cou}</h1>	
	</c:forEach></ul>
