<%@ taglib prefix="html" uri="/WEB-INF/struts-html.tld"%>
<html>
<body>
<h1> Java Learning Center</h1>
<h2> Student Search Form</h2>
<html:form action="/BidSearchSubmit">
<table>
<tr><td><h1> Enter Batch ID </h1></td></tr>
<tr><td><html:text property="bid"/></td></tr>
<tr><td><font color="red" size="5"><html:errors property="bid"/></font></td></tr>
<tr><td><html:submit value="Search" /></td></tr>
</table>
</html:form>
</body>
</html>