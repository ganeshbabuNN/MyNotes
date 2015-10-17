<%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>

<html>
<body>
<table width="98%" height="98" bgcolor="floralwhite" border="4">

<tr height="10%">
<td colspan="2" align="center">
<f:subview id="Header">
<tiles:insert attribute="HEADER" flush="false"/>
</f:subview>
</td>
</tr>

<tr height="80%">
<td width="20%">
<f:subview id="Menu">
<tiles:insert attribute="MENU" flush="false"/>
</f:subview>
</td>
</tr>

<tr height="80%">
<f:subview id="Body">
<tiles:insert attribute="BODY" flush="false"/>
</f:subview>
</tr>

<tr height="10%">
<td colspan="2" align="center">
<f:subview id="Footer">
<tiles:insert attribute="FOOTER" flush="false"/>
</f:subview>
</td>
</tr>

</table>
</body>
</html>