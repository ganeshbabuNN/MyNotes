<%@ taglib uri="http://richfaces.org/rich" prefix="rich"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>

<html>
<head>
<title>Login Success</title>
</head>
<f:view>
<rich:panel header="Welcome" style="background-color:#ebf3fd">
<h:outputText value="Hi#{loginBean.userName}," style="font-size:15px"/><br>
<rich:spacer height="30"/>
<h:outputText value="You have successfully Login in...." style="font-size:15px"></h:outputText>
<br>
<rich:spacer height="30"/>
<rich:separator lineType="beveled" height="8" width="75%" align="center"/>
<rich:separator height="2" lineType="dotted"/><br>
<h:form>
<h:commandLink value="Logout" action="#{loginBean.logoutAction}" style="font-family:arial,verdana;font-size:12px;">
</h:commandLink>
<rich:toolTip> By Clicking this link, you will be logged out and Taken to Login Page</rich:toolTip>
</h:form>
<rich:separator height="4" lineType="double"/><br>
<rich:separator height="2" lineType="solid"/><br>
</rich:panel>
</f:view>
<body>

</body>
</html>