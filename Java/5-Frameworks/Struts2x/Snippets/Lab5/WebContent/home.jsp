<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<body>
	<s:url id="addstudent" action="AddStudentDisplay"/>
	<s:url id="sidsearch" action="SidSearchDisplay"/>
	<s:url id="bidsearch" action="BidSearchDisplay"/>
<h1>
<s:a href="%{addstudent}"> Add Student </s:a><br>
<s:a href="%{sidsearch}">Search Student ID</s:a><br>
<s:a href="%{bidsearch}">Search By Batch ID </s:a><br>
</h1>
</body>
</html>