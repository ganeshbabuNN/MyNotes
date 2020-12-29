<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<body>
<s:url id = "hellourl" action="ganesh/Hello.action"/>
<s:url id = "haiurl" action="ganesh/Hai.action"/>
<s:url id = "hellohaiurl" action="ganesh/HelloHai.action"/>
<s:url id = "testurl" action="ganesh/Test.action"/>
<s:url id = "dtesturl1" action="ganesh/DTest1.action"/>
<s:url id = "dtesturl2" action="ganesh/DTest2.action"/>
<h1>
<s:a href="%{hellourl}"> Click here for HelloAction </s:a><br>
<s:a href="%{haiurl}"> Click here for HaiAction </s:a><br>
<s:a href="%{hellohaiurl}"> Click here for HelloHaiAction </s:a><br>
<s:a href="%{testurl}"> Click here for TestAction </s:a><br>
<s:a href="%{dtesturl1}"> Click here for DTestAction-text1() </s:a><br>
<s:a href="%{dtesturl2}"> Click here for DTestAction-text2() </s:a><br>
</h1>
</body>
</html>