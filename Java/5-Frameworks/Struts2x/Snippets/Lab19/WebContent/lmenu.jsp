<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
</head>
<body>
<h3><s:url id="addstuurl" action="jlcindia/AddStuDisplay.jlc"/></h3>
<s:url id="updatestuurl" action="jlcindia/UpdateStuDisplay.jlc"></s:url>
<s:url id="searchstuurl" action="jlcindia/SearchStuDisplay.jlc"></s:url>
<s:a href="%{addstuurl}">Add Student</s:a><br/>
<s:a href="%{updatestuurl}">Update Student</s:a><br/>
<s:a href="%{searchstuurl}">Search Student</s:a><br/>

</body>
</html>