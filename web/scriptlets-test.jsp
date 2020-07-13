<%--
  Created by IntelliJ IDEA.
  User: trendsoft
  Date: 6/24/20
  Time: 11:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scriptlets</title>
</head>
<body>
<h3>Do loop in JSP using java code wap by JSP-scriptlets</h3>
<%
    for (int i = 0; i < 5; i++) {
        out.println("<br/>index of "+i);
    }
%>
</body>
</html>
