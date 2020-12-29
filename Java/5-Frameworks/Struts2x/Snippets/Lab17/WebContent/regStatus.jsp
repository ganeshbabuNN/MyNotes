<%@taglib prefix="s" uri="/struts-tags" %>
<html>
	<body>
		<h1>Congratulation , your Registration is successful</h1>
		<table bgcolor= "#C3D599" width=50% border="1">
			<tr><td>Required Techs Left </td>
			<td>
			<s:iterator id="tech" value="reqTechsLeft">
				<s:property value="tech"/><br>
			</s:iterator>
			<tr><td>Required Techs Right </td>
			<s:iterator value="reqTechsRight">
				<s:property/><br>
			</s:iterator>
			</td></tr>
			<tr><td>Learning Order </td>
			<td>
			<s:iterator value="Learning Order">
			<s:property/><br>
			</s:iterator>
			</td></tr>
		</table>
	</body>
</html>
