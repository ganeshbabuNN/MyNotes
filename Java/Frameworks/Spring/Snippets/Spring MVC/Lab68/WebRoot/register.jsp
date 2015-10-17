<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<body>
	<form:form method="post" commandName="student">
	<table>
		<tr><td align="center" colspan="3">Student Registration Form </td></tr>
		
		<tr><td><p>Student ID:</td>
		<td><form:input path="sid"/></td>
		<td><form:errors path="sid"/></td></tr>
		
		<tr><td>Name:</td>
		<td><form:input path="sname"/></td>
		<td><font color="red" size="4"><form:errors path="sname"/></font></td></tr>
		
		<tr><td>Email ID:</td>
		<td><form:input path="email"/></td>
		<td><font color="red" size="4"><form:errors path="email"/></font></td></tr>
		
		<tr><td>Phone No:</td>
		<td><form:input path="phone"/></td>
		<td><font color="red" size="4"><form:errors path="phone"/></font></td></tr>
		
		<tr><td>Suitable Timings:</td>
		<td><form:checkbox path="timings" value="07:30A.M-09:30A.M"/>07:30A.M-09:30A.M<br>
		<form:checkbox path="timings" value="10:30A.M-02:30P.M"/>10:30A.M-02:30P.M<br>
		<form:checkbox path="timings" value="04:00A.M-06:00P.M"/>04:00A.M-06:00P.M<br>
		<form:checkbox path="timings" value="06:30A.M-08:30P.M"/>06:30A.M-08:30P.M<br>
		<form:checkbox path="timings" value="Weekends"/>Weekends (Only Advance)<br></td>
		<td> <font color="red" size="4"><form:errors path="timings"/></font></td></tr>
		
		<tr><td> Gender </td>
		<td><form:radiobutton path="gender" value="male"/>Male <br/>
		<form:radiobutton path="gender" value="female"/>Female<br/></td>
		<td><font color="red" size="4"> <form:errors path="gender"/></font></td></tr>
		
		<tr><td>Qualification</td>
		<td><form:select path="qualification">
		<form:option value="----Select option"/>
		<form:option value="M.Sc"/>
		<form:option value="B.Sc"/>
		<form:option value="M.C.A"/>
		<form:option value="B.C.A"/>
		<form:option value="M.Tech"/>
		<form:option value="B.Tech"/>
		</form:select>
		</td><td><font color="red" size="4"><form:errors path="qualification"/></font></td></tr>
		
		<tr><td>Remarks</td>
		<td><form:textarea path="remarks" rows="5" cols="40"/></td>
		<td><font color="red" size="4"><form:errors path="remarks"/></font></td></tr>
		<tr><td align="center" colspan="3">
		<input type="submit" value="Register Now"/></td></tr>
	</table>
	</form:form>
	</body>
</html>