<%@ page import="java.util.Arrays" %>
<%--
  Created by IntelliJ IDEA.
  User: trendsoft
  Date: 6/26/20
  Time: 11:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>confirm stu res</title>
</head>
<%
    // read data form html page
    String fName = request.getParameter("firstName");
    String lName = request.getParameter("lastName");
    String country = request.getParameter("country");
    String programLanguage = request.getParameter("programLanguage");
    String[] listOfFramework = request.getParameterValues("framework");
    String fullName = fName + "-" + lName;
    String subString = Arrays.toString(listOfFramework.clone());
    String finalFramework = subString.substring(1, subString.length() - 1).replaceAll(", ", "--").replaceAll(" ", "-");


    //create cookie
    Cookie cName = new Cookie("myApp.Name", fullName);
    Cookie cCountry = new Cookie("myApp.Country", country);
    Cookie cProgram = new Cookie("myApp.programLanguage", programLanguage);
    Cookie cFramework = new Cookie("myApp.Framework", finalFramework);


    //set cookie expride
    cName.setMaxAge(60 * 60 * 24);
    cCountry.setMaxAge(60 * 60 * 24);
    cProgram.setMaxAge(60 * 60 * 24);
    cFramework.setMaxAge(60 * 60 * 24);


    //send cookie to browser
    response.addCookie(cName);
    response.addCookie(cCountry);
    response.addCookie(cProgram);
    response.addCookie(cFramework);

%>

<body>
<br/>
<%--This student is confirmed : ${param.firstName} ${param.lastName} this is jsp syntax--%>
This student is confirmed : <%=fName+" "+lName%> <!--this is call java code-->
<br/>

<%--Student's country: ${param.country}--%>
Student's country:  <%=country%>
<br/>

<%--Programming Language: ${param.programLanguage}--%>
Programming Language:  <%=programLanguage%>
<br/>


<!--to display list of framework-->
Framework:
<ul>
    <%
        for (String framework : listOfFramework) {
            out.println("<li>" + framework + "</li>");
        }
    %>
</ul>

<br/><br/>
<a href="basic-info.jsp"> To check your basic information.</a>
</body>
</html>
