<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
</head>
<body>
<table width ="99%" height="99%" bgcolor="#c3d599">
<tr height="10%">
<td colspan="3" align="center">
<tiles:insertAttribute name="HEADER"/></td></tr>
<tr height="85%">
<td width="20%" valign="top" >
<tiles:insertAttribute name="LMENU"/></td>
<td width="60%" valign="top">
<tiles:insertAttribute name="BODY"/></td>
<td width="20%" valign="top">
<tiles:insertAttribute name="RMENU"/></td></tr>
<tr height="5%">
<td colspan="3" align="center">
<tiles:insertAttribute name="FOOTER"/></td>
</tr>
</table>
</body>
</html>