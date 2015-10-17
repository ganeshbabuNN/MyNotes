<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
		<table width="99%" height="99%" bgcolor="#c3d599" >
		<tr height="10%">
		<td colspan="2" align="center">
		<tiles:insert attribute="HEADER"/>
		</td></tr>
		
		<tr height="85%">
		<td width="20%" valign="top">
		<tiles:insert attribute="LMENU"/>
		</td>
		
		<td height="80%">
		<tiles:insert attribute="BODY"/>
		</td></tr>
		
		<tr height="5%">		
		<td colspan="2" align="center">
		<tiles:insert attribute="FOOTER"/>
		</td>
		</tr>
		</table>
	</body>	
</html>