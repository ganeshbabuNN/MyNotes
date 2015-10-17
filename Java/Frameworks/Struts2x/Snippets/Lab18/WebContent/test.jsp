<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>GANESH Registrations Application</title>
<s:head theme="ajax"/>
</head>
<body><br>
<s:if test="%{flag1}">
<h3>Flag1 value is true</h3>
</s:if>
<h3>Flag 1 value is false</h3>

<s:if test="%{flag2}">
<h3>Flag2 value is true</h3>
</s:if>
<s:else>
<h3>Flag2 value is false</h3>
</s:else>
<hr><h3>
<s:iterator value="courses">
<s:property/>
</s:iterator></h3>
<hr><h3>
<s:subset source="courses" count="5" start="2">
	<s:iterator>
		<s:property/>
	</s:iterator>
</s:subset></h3>
<hr><h3>

<s:iterator id="x" value="colors">
	<s:property value="x"/>
</s:iterator></h3>

<hr><h3>
<s:append id="mylist">
<s:param value="%{colors}"/>
<s:param value="%{courses}"/>
</s:append>

<s:iterator value="%{#mylis}">
<s:property/>
</s:iterator></h3>
<hr><h3>
<s:append id="mylist1">
<s:param value="%{colors}"/>
<s:param value="%{courses}"/>
</s:append>

<s:iterator value="%{#mylis1}">
<s:property/>
</s:iterator></h3>
<hr><h3>
<s:generator separator="," val="%{'aaa,bbb,ccc,ddd,eee'}" count="3">
<s:iterator>
<s:property/><br/>
</s:iterator>
</s:generator></h3>
</body>
</html>
