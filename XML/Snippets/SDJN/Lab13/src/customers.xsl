<?xml version="1.0" encoding="UTF-8"?>
<sd:stylesheet 
	xmlns:sd="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<sd:output method="html" omit-xml-declaration="yes"/>
	<sd:template match="/customers/customer">
		<center><h1>
		Cust Id: <sd:value-of select="@cid"/><br/>
		First Name: <sd:value-of select ="cname/fname"/>
		<br/>
		Last Name: <sd:value-of select ="email"/><br/>
		Email: <sd:value-of select="phone"/> <br/>
		</h1>
		</center>
	</sd:template>
</sd:stylesheet>