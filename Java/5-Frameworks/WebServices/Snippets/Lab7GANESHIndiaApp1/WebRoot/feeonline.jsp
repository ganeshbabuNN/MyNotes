<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<html>
	<body bgcolor="lightpink">
		<br><br><h1>Online Fee Payment Form</h1><hr>
		<html:form action="/onlineFeeSubmit">
		<center>
		<table>
			 <tr><td align="center"><h1>Student id</h1></td>
			 <td align="center"><html:text property="sid" style="font-size:25"/></td></tr>
			 <tr><td align="center"><h1>Amount</h1></td>
			 <td align="center"><html:text property="amt" style="font-size:25"/></td></tr>
			 <tr><td align="center"><h1>Credit Card</h1></td>
			 <td align="center"><html:text property="ccno" style="font-size:25"/></td></tr>			
			 <tr><td align="center"><html:submit value="pay Now" style="font-size:25"/></td></tr>
			</table>
			</center>		
		</html:form>
	</body>
</html>