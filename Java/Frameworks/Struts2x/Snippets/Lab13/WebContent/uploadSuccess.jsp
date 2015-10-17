<%@taglib prefix="s" uri="/struts-tags" %>
<html>
	<body>
	<h1>File Upload Example</h1>
	<br><br> HI <s:property value="name"/><br/>
	Uploaded File Details <br/>
	File Name: <s:property value="photoFileName"/>
	<br/>Content Type: <s:property value="photoContentType"/>
	</body>
</html>