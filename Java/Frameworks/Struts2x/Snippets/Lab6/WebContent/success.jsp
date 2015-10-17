<%@ taglib uri="/struts-tags" prefix="s" %>

<html>
<body>
<h1>Java Learning Center</h1>
<h3> OGNL Test</h3>
<h3> Action class Variables --- Simple Types</h3>
<table>
<tr> <td> Name : </td>
<td><s:property value="user.name"/></td></tr>
<tr><td> Email : </td>
<td><s:property value="email"/></td></tr>
<tr><td> Phone: </td>
<td><s:property value="phone"/></td></tr>
<tr><td> X: </td>
<td><s:property value="x"/></td></tr>
</table>

<h3>Request Attributes --- Simple Types</h3>
<table>
<tr><td>Name : </td>
<td><s:property value="#request.UNAME"/></td></tr>
<tr><td>Email : </td>
<td><s:property value ="#request.EMAIL"/> </td></tr>
</table>

<h3>Session Attributes --- Simple Types</h3>
<table>
<tr><td>Name : </td>
<td><s:property value="#session.UNAME"/></td></tr>
<tr><td>Email : </td>
<td><s:property value ="#session.EMAIL"/> </td></tr>
</table>

<h3>Application Attributes --- Simple Types</h3>
<table>
<tr><td>Name : </td>
<td><s:property value="#application.UNAME"/></td></tr>
<tr><td>Email : </td>
<td><s:property value ="#application.EMAIL"/> </td></tr>
</table>

<h3>Action Class Variables --- User-Defined Types</h3>
<table>
<tr><td>BID : </td>
<td><s:property value="sto.bid"/></td></tr>
<tr><td>SID : </td>
<td><s:property value="sto.sid"/></td></tr>
<tr><td>Sname : </td>
<td><s:property value="sto.sname"/></td></tr>
<tr><td>Email : </td>
<td><s:property value="sto.email"/></td></tr>
<tr><td>Phone : </td>
<td><s:property value="sto.phone"/></td></tr>
<tr><td>City : </td>
<td><s:property value="sto.address.city"/></td></tr>
<tr><td>State : </td>
<td><s:property value="sto.address.state"/></td></tr>
<tr><td>Country : </td>
<td><s:property value="sto.address.country"/></td></tr>
</table>

<h3>Request Attributes --- User-Defined Types</h3>
<table>
<tr><td>BID : </td>
<td><s:property value="#request.STO.bid"/></td></tr>
<tr><td>SID : </td>
<td><s:property value="#request.STO.sid"/></td></tr>
<tr><td>Sname : </td>
<td><s:property value="#request.STO.sname"/></td></tr>
<tr><td>Email : </td>
<td><s:property value="#request.STO.email"/></td></tr>
<tr><td>Phone : </td>
<td><s:property value="#request.STO.phone"/></td></tr>
<tr><td>City : </td>
<td><s:property value="#request.STO.address.city"/></td></tr>
<tr><td>State : </td>
<td><s:property value="#request.STO.address.state"/></td></tr>
<tr><td>Country : </td>
<td><s:property value="#request.STO.address.country"/></td></tr>
</table>

<h3>Sessions Attributes --- User-Defined Types</h3>
<table>
<tr><td>BID : </td>
<td><s:property value="#session.STO.bid"/></td></tr>
<tr><td>SID : </td>
<td><s:property value="#session.STO.sid"/></td></tr>
<tr><td>Sname : </td>
<td><s:property value="#session.STO.sname"/></td></tr>
<tr><td>Email : </td>
<td><s:property value="#session.STO.email"/></td></tr>
<tr><td>Phone : </td>
<td><s:property value="#session.STO.phone"/></td></tr>
<tr><td>City : </td>
<td><s:property value="#session.STO.address.city"/></td></tr>
<tr><td>State : </td>
<td><s:property value="#session.STO.address.state"/></td></tr>
<tr><td>Country : </td>
<td><s:property value="#session.STO.address.country"/></td></tr>
</table>

<h3>Application Attributes --- User-Defined Types</h3>
<table>
<tr><td>BID : </td>
<td><s:property value="#application.STO.bid"/></td></tr>
<tr><td>SID : </td>
<td><s:property value="#application.STO.sid"/></td></tr>
<tr><td>Sname : </td>
<td><s:property value="#application.STO.sname"/></td></tr>
<tr><td>Email : </td>
<td><s:property value="#application.STO.email"/></td></tr>
<tr><td>Phone : </td>
<td><s:property value="#application.STO.phone"/></td></tr>
<tr><td>City : </td>
<td><s:property value="#application.STO.address.city"/></td></tr>
<tr><td>State : </td>
<td><s:property value="#application.STO.address.state"/></td></tr>
<tr><td>Country : </td>
<td><s:property value="#application.STO.address.country"/></td></tr>
</table>

<h3>Action Class Variables --- Collection for Simple Types</h3>
<h3>Email List: </h3>
<table>
<tr><s:iterator id="em" value="emails"/>
<td><s:property value="em"/></td>
</tr>
</table>

<h3>Request Attributes--- Collection for Simple Types</h3>
<h3>Email List: </h3>
<table>
<tr><s:iterator id="em" value="#request.EMAILS"/>
<td><s:property value="em"/></td>
</tr>
</table>

<h3>Session Attributes--- Collection for Simple Types</h3>
<h3>Email List: </h3>
<table>
<tr><s:iterator id="em" value="#session.EMAILS"/>
<td><s:property value="em"/></td>
</tr>
</table>

<h3>Application Attributes--- Collection for Simple Types</h3>
<h3>Email List: </h3>
<table>
<tr><s:iterator id="em" value="#application.EMAILS"/>
<td><s:property value="em"/></td>
</tr>
</table>

<h3>Action class variables --- Collection for user defined Types</h3>
<h3>Student List: </h3>
<table>
<tr>
<td>Student ID </td>
<td>Batch ID </td>
 <td>Student Name </td>
 <td>Email ID </td>
 <td>Phone No </td>
</tr>
<s:iterator id="sto" value="students">
<tr>
<td><s:property value="sto.sid"/></td>
<td><s:property value="sto.bid"/></td>
<td><s:property value="sto.sname"/></td>
<td><s:property value="sto.email"/></td>
<td><s:property value="sto.phone"/></td>
</tr>
</s:iterator>
</table>

<h3>Student List: </h3>
<table>
<tr>
<td>Student ID </td>
<td>Batch ID </td>
<td>Student Name </td>
<td>Email ID </td>
<td>Phone No </td>
</tr>
<s:iterator id="sto" value="students">
<tr>
<td><s:property value="sid"/></td>
<td><s:property value="bid"/></td>
<td><s:property value="sname"/></td>
<td><s:property value="email"/></td>
<td><s:property value="phone"/></td>
</tr>
</s:iterator>
</table>

</body>

</html>