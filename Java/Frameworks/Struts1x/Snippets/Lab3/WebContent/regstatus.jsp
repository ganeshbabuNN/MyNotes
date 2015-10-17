<%@ taglib uri ="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri ="/WEB-INF/struts-logic.tld" prefix="logic"%>
<html>
<body>
<h1> Java Learning Center</h1>
<table>
<tr>
<td>
Your Registrations has been completed Sucessfully
<br/> with the following information 
</td>
</tr>

<tr>
<td>Student Name</td>
<td>${regform.sname}</td>
</tr>

<tr>
<td>Email ID </td>
<td>${regform.email}</td>
</tr>

<tr>
<td>Phone No</td>
<td>${regform.phone}</td>
</tr>

<tr>
<td>gender</td>
<td>${regform.gender}</td>
</tr>

<tr>
<td>Courses </td>
<td><logic:iterate id="cou" name="regform" property="course" scope="session">
<bean:write name="cou"/>
</logic:iterate>
</tr>

<tr>
<td>Timinings</td>
<td>${regform.timings}</td>
</tr>

<tr>
<td>remarks</td>
<td>${regform.remarks}</td>
</tr>

</table>
</body>
</html>