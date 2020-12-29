<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head><s:head/></head>
<body>
<s:text name="label.ganesh.header"/>
<h1>XML Validation Text Form</h1>
<s:actionerror/>
<s:form action="TestSubmit">
<s:textfield name="name" label="Name" cssStyle="font-size:20px;color:green"/>
<s:textfield name="age" label="Age" cssStyle="font-size:20px;color:green"/>
<s:textfield name="fee" label="Fee" cssStyle="font-size:20px;color:green"/>
<s:textfield name="dob" label="D.O.B" cssStyle="font-size:20px;color:green"/>
<s:textfield name="email" label="Email" cssStyle="font-size:20px;color:green"/>
<s:textfield name="web" label="Web" cssStyle="font-size:20px;color:green"/>
<s:submit cssStyle="font-size:20px;color:green"/>
</s:form>
</body>
</html>