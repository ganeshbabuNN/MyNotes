<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<s:head/>
</head>
<body>
<s:actionerror/>
<h2>File Upload Example</h2>
<s:form action="UploadSubmit" method="post" enctype="multipart/form-data">
<s:textfield name="name" label="Your Name"/>
<s:file name="photo" label="Upload Your Photo"></s:file>
<s:submit/>
</s:form>
</body>
</html>