<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Java code (Scriptlet)

    // Retrieve user input from the request object (sent via POST)
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String restaurant = request.getParameter("restaurant");
    String rating = request.getParameter("rating");
    String comments = request.getParameter("comments");
%>
<html>
<head>
    <title>Feedback Results</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Thank You for Your Feedback!</h1>
    <p>Below is a summary of the information you submitted:</p>
    
    <!-- Display the feedback results in a table -->
    <table>
        <tr>
            <th>Field</th>
            <th>Your Response</th>
        </tr>
        <tr>
            <td>Full Name</td>
            <td><%= name %></td>
        </tr>
        <tr>
            <td>Email Address</td>
            <td><%= email %></td>
        </tr>
        <tr>
            <td>Restaurant Name</td>
            <td><%= restaurant %></td>
        </tr>
        <tr>
            <td>Service Rating</td>
            <td><%= rating %></td>
        </tr>
        <tr>
            <td>Additional Comments</td>
            <td><%= comments %></td>
        </tr>
    </table>
</body>
</html>
