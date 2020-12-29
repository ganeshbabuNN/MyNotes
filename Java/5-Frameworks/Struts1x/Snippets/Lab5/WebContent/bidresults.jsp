<%@ taglib prefix="html" uri="/WEB-INF/struts-html.tld"%>
<%@ taglib prefix="logic" uri="/WEB-INF/struts-logic.tld"%>
<html>
<body>
<h1> Java Learning Center</h1>
<h2> Search Results </h2>
<table>
<tr><td>Batch ID</td>
<td>Student Name </td>
<td>Email ID </td>
<td>Phone no</td>
<tr>
<logic:iterate id="STO" name="LIST" scope="request">
<tr><td>${STO.sid}</td>
<td>${STO.bid}</td>
<td>${STO.sname}</td>
<td>${STO.email}</td>
<td>${STO.phone}</td>
</tr>
</logic:iterate>
</table>
</body>
</html>