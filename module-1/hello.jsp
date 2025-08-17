<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello JSP</title>
</head>
<body>
    <h1>My First JSP Page</h1>
    <p>Current Time: <%= new java.util.Date() %></p>
    <p>This page is running on <b>Jakarta Tomcat</b> with Java <%= System.getProperty("java.version") %></p>
</body>
</html>
