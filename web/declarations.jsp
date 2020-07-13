<%--
  Created by IntelliJ IDEA.
  User: trendsoft
  Date: 6/24/20
  Time: 11:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP-declarations</title>
</head>
<body>
<h3>This is we use JSP declarations that allow to create java method in JSP file</h3>

<!--this abowe method is wap by JSP declarations-->
<%!
    String passToLower(String str) {
        return str.toLowerCase();
    }
%>
<br/><br/>
Lower case convert by method java with "String Hello JSP" to <%=passToLower("Hello JSP")%>
</body>
</html>
