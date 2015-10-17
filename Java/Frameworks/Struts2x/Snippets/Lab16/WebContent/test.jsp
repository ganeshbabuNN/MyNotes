<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>GANESH Registrations Application</title>
<s:head theme="ajax"/>
</head>
<body><br>
<s:url id="hellourl" action="ganesh/Hello.jlc"/>
<s:url id="haiurl" action="ganesh/Hai.jlc"/>
<s:tabbedPanel id="test">
<s:div id="one" label="Tab 1" theme="ajax" labelposition="top">
This is the first pane <br/>
<s:form>
<s:textfield name="tt" label="Test Text"/>
<s:textfield name="tt2" label="Test Text2"/>
</s:form>
</s:div>

<s:div id="two" label="Tab 2" theme="ajax" href="%{hellourl}">
This is the remote Tab
</s:div>

<s:div id="three" label="Tab 3" theme="ajax" href="%{haiurl}">
This is the remote Tab
</s:div>
</s:tabbedPanel>
</body>
</html>