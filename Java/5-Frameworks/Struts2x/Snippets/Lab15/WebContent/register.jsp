<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>GANESH Registrations Application</title>
<s:head theme="ajax"/>
</head>
<body>
<h1>GANESH Registration</h1>
<s:actionerror/>
<s:form action="RegisterSubmit">
<s:combobox name="bid" label="Batch Id" list="batches" headerKey="-1" headerValue="Select Ur Batch"/>
<s:textfield name="sname" label="Student name"/>
<s:textfield name="email" label="Email"/>
<s:textfield name="gender" label="Gender"/>
<s:select name="qualification" label="Qualification"  list="qualis" multiple="false"/>
<s:checkboxlist name="paymentOption" label="Payment Option" list="paytypes"/>
<s:submit/>
</s:form>
</body>
</html>