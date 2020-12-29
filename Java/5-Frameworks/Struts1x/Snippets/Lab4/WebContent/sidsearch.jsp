<%@ taglib prefix="html" uri="/WEB-INF/struts-html.tld"%>
<html>
<body>
<h1> Java Learning Center</h1>
<h2> Student Search Form</h2>
<html:form action="/SidSearchSubmit">

<table>
<tr><td><h1> Enter Student ID </h1></td></tr>
<tr><td><html:text property="sid"/></td></tr>
<tr><td><font color="red" size="5"><html:errors/> </font></td></tr>
<tr><td><html:submit value="Search" /></td></tr>
</table>
</html:form>
</body>
</html>