<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<h1>
		<br/>RESULT OF REQUEST <hr/> <br/>
		<c:if test="${STUD ne null}">
			Student ld:${STUD.sid}<br/>
			Student Name:${STUD.name}<br/>
			Student email:${STUD.email}
			<br/>Student Phone:${STUD.phone}<br/>
		</c:if>
		<c:if test="${ADDED ne null}">${ADDED}</c:if>
		<c:if test="${LIST ne null}">
			<table border='2' width='75%'>
				<tr bgcolor="lightgreen">
				<td>SID</td>
				<td>NAME</td>
				<td>EMAIL</td>
				<td>PHONE</td>
		    </tr>
			<c:forEach items="${LIST.studList}" var="st">
				<tr>
					<td>${st.sid}</td>
					<td>${st.name}</td>
					<td>${st.email}</td>
					<td>${st.phone}</td>
				</tr>				
			</c:forEach>
			</table>
		</c:if>
	</h1>
</html>