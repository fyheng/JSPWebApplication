<%--
  Created by IntelliJ IDEA.
  User: trendsoft
  Date: 6/30/20
  Time: 11:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP-OBJ</title>
</head>
<body>

<%= request.getPathInfo() %>

<%= response.getStatus() %>

<%= pageContext.getServletConfig() %>

<%= session.getServletContext() %>

<%= application.getAttributeNames() %>

<%= out.getBufferSize() %>

<%= config %>

<%= page %>

<%--<%= exception %>--%>
</body>
</html>
