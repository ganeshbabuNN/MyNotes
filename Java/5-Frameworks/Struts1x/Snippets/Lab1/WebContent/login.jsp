<html>
<head>
</head>
<form action="LoginSubmit.jlc">
<table align="center">
<tr>
<td align='center' colspan="3"><font color = red size ='5'> 
${EMSG}</font></td>
</tr>
<td colspan="3" align= "center"> 
<font size='6' face='ARIAL'>Account Login</font> </td>
<tr>
</tr>
<tr>
<td> <h1> User Name</h1> </td><td>
<td> <input name ='username' type ='text'/> </td>
<td> <font color=red size='5'>${UN_ERR}</font></td>
</tr>
<tr>
<td> <h1> Password</h1> </td><td>
<td> <input name ='password' type ='password'/> </td>
<td> <font color=red size='5'>${PW_ERR}</font></td>
</tr>
<tr>
<td align='right' colspan='2'>
<input type='submit' value='login'/> 
</td>
</tr>
</table>
</form>
<body>
</body>
</html>