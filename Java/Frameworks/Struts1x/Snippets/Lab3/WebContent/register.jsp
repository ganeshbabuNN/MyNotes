<%@ taglib uri ="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<body>
<center>
<h1> Java Learning Center</h1>
<html:form action="/RegisterSubmit">
<table>
<tr>
<td>Student Name </td>
<td><html:text property="sname"/></td>
<td><html:errors property="sname"/></td>
</tr>
<tr>
<td>Email ID </td>
<td><html:text property="email"/></td>
<td><html:errors property="email"/></td>
</tr>
<tr>
<td>Phone No </td>
<td><html:text property="phone"/></td>
<td><html:errors property="phone"/></td>
</tr>
<tr>
<td>Gender</td>
<td><html:radio property="gender" value="female">Female</html:radio></td>
<td><html:radio property="gender" value="male">Male</html:radio></td>
<td><html:errors property="gender"/></td>
</tr>
<tr>
<td>Courses </td>
<td>
<html:checkbox property="course" value="module-1"/>Module-1<br>
<html:checkbox property="course" value="module-2"/>Module-2<br>
<html:checkbox property="course" value="module-3"/>Module-3<br>
</td>
<td><html:errors property="course"/></td>
</tr>
<tr>
<td>Timings</td>
<td><html:select property="timings">
<html:option value="">----Select ----</html:option>
<html:option value="7:00A.M-9.00P.M">7:00A.M-9.00P.M</html:option>
<html:option value="10:00A.M-2.00P.M">10:00A.M-2.00P.M</html:option>
<html:option value="04:00P.M-6.00P.M">04:00P.M-6.00P.M</html:option>
</html:select></td>
<td><html:errors property="timings"/></td>
</tr>
<tr>
<td>Remarks</td>
<td><html:textarea property="remarks" rows="5" cols="15"/></td>
<td><html:errors property="remarks"/></td>
</tr>
<tr>
<td align="center" colspan="3"><html:submit value="Register Now"/></td>
</tr>
</table>
</html:form>
</body>
</center>
</html>