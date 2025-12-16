<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<f:view>
<html>
	<body>
		<table width="99%" height="99%" bgcolor="#c3d599" >
		<tr height="10%">
		<td colspan="2" align="center">
		<f:subview id="header">
		<tiles:insert attribute="HEADER" flush="false"/>
		</f:subview>
		</td></tr>
		
		<tr height="85%">
		<td width="20%" valign="top">
		<f:subview id="lmenu">
		<tiles:insert attribute="LMENU" flush="false"/>
		</f:subview>
		</td>
		
		<td height="80%" valign="top">
		<f:subview id="body">
		<tiles:insert attribute="BODY" flush="false"/>
		</f:subview>
		</td></tr>
		
		<tr height="5%">		
		<td colspan="2" align="center">
		<f:subview id="footer">
		<tiles:insert attribute="FOOTER" flush="false"/>
		</f:subview>
		</td>
		</tr>
		</table>
	</body>	
</html>
</f:view>