<%--
  Created by IntelliJ IDEA.
  User: trendsoft
  Date: 6/27/20
  Time: 12:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Basic-Info-by cookie</title>

</head>
<body>
<%
    //set default to field
    String fullName = "Liza Kok";
    String country = "Thailand";
    String programLanguage = "Java SE";
    String[] listFramework = {"Spring","Grails"};

    // get cookie from browser request
    Cookie[] listCookies = request.getCookies();

    //check much cookie
    if (listCookies!=null){
        for (Cookie cookie:listCookies){
            //check cookie name
            if ("myApp.Name".equals(cookie.getName())){
                fullName = cookie.getValue();
            }
            if ("myApp.Country".equals(cookie.getName())){
                country = cookie.getValue();
            }
            if ("myApp.programLanguage".equals(cookie.getName())){
                programLanguage = cookie.getValue();
            }
            if ("myApp.Framework".equals(cookie.getName())){
                if (cookie.getValue().contains("--")){
                    String[] s = cookie.getValue().split("--");
                    System.out.print(s);
                    System.out.print("ssss");
                    listFramework = s;
                }
            }

        }
    }
%>

<!--show context form and get value form cookie-->
This student is confirmed : <%=fullName%>
<br/>

Student's country: <%=country%>
<br/>

Programming Language: <%=programLanguage%>
<br/>

<!--to display list of framework-->
Framework:
<ul>
    <%
        for (String framework : listFramework) {
            out.println("<li>" + framework + "</li>");
        }
    %>
</ul>
</body>
</html>
