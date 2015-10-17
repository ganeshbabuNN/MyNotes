<%@taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html"%>
<%@taglib prefix="logic"
	uri="http://jakarta.apache.org/struts/tags-logic"%>

<html>
<body>
	<html:form action="/search">
		<table align="center">
			<tr>
				<td align="center" colspan="3"><font color=red size="5">${EMSG}
						<br />
					<html:errors property="batchId" />
				</font></td>
			</tr>
			<tr>
				<td colspan="3" align="center"><font size="6" face="ARIAL">
						Search Student By Batch Id</font></td>
			</tr>
			<tr>
				<td>Select Batch Id</td>
				<td><html:select property="batchId">
					    <html:option value=""> Select Batch ID</html:option>
						<html:option value="B1">B1</html:option>
						<html:option value="B2">B2</html:option>
						<html:option value="B3">B3</html:option>
						<html:option value="B4">B4</html:option>
					</html:select> <html:submit value="Search" /></td>
			</tr>
		</table>

		<logic:present name="SLIST">
			<table aligh="center">
				<tr bgcolor="lightblue">
					<td><font color="red" size="4">Student Id</font>
					<td><font color="red" size="4">Batch Id</font>
					<td><font color="red" size="4">Name</font>
					<td><font color="red" size="4">Email</font>
					<td><font color="red" size="4">Phone</font></td>

					<logic:iterate id="STUD" name="SLIST">
						<tr bgcolor="lightgreen">
							<td><font size="4">${STUD.sid}</font></td>
							<td><font size="4">${STUD.bid}</font></td>
							<td><font size="4">${STUD.name}</font></td>
							<td><font size="4">${STUD.email}</font></td>
							<td><font size="4">${STUD.phone}</font></td>
						</tr>
					</logic:iterate>
			</table>
		</logic:present>
	</html:form>
</body>
</html>

