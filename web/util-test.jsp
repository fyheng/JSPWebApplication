<%--
  Created by IntelliJ IDEA.
  User: trendsoft
  Date: 6/24/20
  Time: 11:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.jspWebApp.UtilService" %>

<%--
to import multi class
<%@page import="com.jspWebApp.*,java.util.ArrayList"%>
--%>
<html>
<head>
    <title>UtilService-test</title>
</head>
<body>
<p>
    This is we try to write less java code in JSP-file
    <br/>
    by using java class and call into JSP-file
</p>
converting String to Upper case: <%=UtilService.passStringToUpper("Hello JSP")%>
</body>
</html>
