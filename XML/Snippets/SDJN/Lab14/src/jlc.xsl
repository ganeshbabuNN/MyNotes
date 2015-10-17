<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" omit-xml-declaration="yes"/>
	<xsl:template match="/">
	<h1 align="center">Ganesh Babu@NN</h1>
	<table border="3" align="center">
	<tr bgcolor="cyan">
	<td>Student ID</td>
	<td>First Name</td>
	<td>Last Name</td>
	<td>EmailID</td>
	<td>Office Phone</td>
	<td>Hourse Phone</td>
	<td>Balance</td>
	</tr>
	<xsl:for-each select="jlc/student">
	<tr>
	<xsl:if test="sid &gt;90">
		<td bgcolor="red">
			<xsl:value-of select="sid"/>
		</td>
	</xsl:if>
	<xsl:if test="sid &lt;90">
		<td bgcolor="white">
			<xsl:value-of select="sid"/>
		</td>
	</xsl:if>
	<td><xsl:value-of select="name/fname"/></td>
	<td><xsl:value-of select="name/lname"/></td>
	<td><xsl:value-of select="email"/></td>
	<td><xsl:value-of select="phone/ophone"/></td>
	<td><xsl:value-of select="phone/hphone"/></td>
	<xsl:choose>
		<xsl:when test="feebal>=6000">
			<td bgcolor="yellow"><xsl:value-of select="feebal"/></td>
		</xsl:when>
		<xsl:otherwise>
			<td bgcolor="green">
			<xsl:value-of select="feebal"/>
			</td>
		</xsl:otherwise>
	</xsl:choose>
	</tr>
	</xsl:for-each>
	</table>
	</xsl:template>
</xsl:stylesheet>