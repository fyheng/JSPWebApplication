<%--
  Created by IntelliJ IDEA.
  User: trendsoft
  Date: 6/24/20
  Time: 11:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test JSP Built-In Server</title>
</head>
<body>
<h3>JSP Built-In Objects</h3>
Request userAgent: <%=request.getHeader("User-Agent")%>
<br/>
Request language: <%=request.getLocale()%>
<br/>
Request getUserPrincipal: <%=request.getUserPrincipal()%>

</body>
</html>
