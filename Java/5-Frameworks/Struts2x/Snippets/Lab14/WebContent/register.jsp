<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>GANESH Registerations Application</title>
<s:head theme="ajax"/>
</head>
<body>
<h1>GANESH Registration</h1>
<s:actionerror/>
<s:form action="RegistrationSubmit">
<s:hidden name="code" value="JLC-99"/>
<s:combobox name="bid" label="Batch id" list="{'B16','B17','B18','B19'}" headerKey="-1" headerValue="Select Your Batch"/>
<s:textfield name="sid" label="Student ID"/>
<s:textfield name="sname" label="Student Name"/>
<s:textfield name="email" label="Email"/>

<s:radio list="#{'male':'Male','female':'Female'}" name="gender" label="Gender"/>

<s:datetimepicker name="dob" label="Date of Birth[dd/mm/yyyy]" displayWeeks="5"/>

<s:select name="qualification" label="Qualification" list="{'Select','BE/Btech','BSc','ME/Mtech','Msc','MCA'}" multiple="false"/>

<s:select name="Courses" label="courses" list="%{#{'J2SE':'J2SE','J2ME':'J2ME'}}">
<s:optgroup label = "Technologies" list="%{#{'JDBC':'JDBC','JSP':'JSP','Servlets':'Servlets','EJB':'EJB'}}"/>
<s:optgroup label = "Frameworks" list="%{#{'Struts':'Struts','Hibernate':'Hibernate','JSF':'JSF','JSF':'JSF','Spring':'Spring'}}"/>
</s:select>		

<s:checkboxlist name="paymentOption" label="Payment Option" list="{'Cash','Cheque','Card'}"/>

<s:autocompleter labelposition="left" showDownArrow="false" label="HOw Did you know JLC:" list="{'From Friend','By Walking to JLC','From Internet Surfing','By Seeing JLC Board'}" name="aboutus"/>
<s:textarea name="comments" label="comments" cols="5" rows="3"/>
<s:checkbox name="termsAcceptance" label="I Accept the terms &amp;Conditions of JLC" fieldValue="true"/>
<s:token name="token"/>
<s:submit/>
<s:reset/>
</s:form>
</body>
</html>