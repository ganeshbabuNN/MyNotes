<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<body>
<h1><s:text name="login.title"/></h1>
<div><s:actionerror/></div>
<s:text name="login.header"/>
<s:form action="LoginSubmit" method="post">
<s:textfield name="username" key="login.username" size="15"
	labelposition="top" cssStyle="font-size:20px;color:green"/>
<s:password name="password" key="login.password" size="15"
	labelposition="top" cssStyle="font-size:20px;color:green"/>
<s:submit key="login.submit" cssStyle="font-size:29px;color:red"/>
</s:form>
<br><br><hr>
<div align="center"><h1>
<a href="DisplayLoginAction.jlc?request_locale=hi">HINDI</a>|
<a href="DisplayLoginAction.jlc?request_locale=en">ENGLISH</a>|
<a href="DisplayLoginAction.jlc?request_locale=te">TELUGU</a>|
<a href="DisplayLoginAction.jlc?request_locale=kn">KANNADA</a>|
<a href="DisplayLoginAction.jlc?request_locale=ta">TAMIL</a>|
</h1>
</div>
</body>
</html>