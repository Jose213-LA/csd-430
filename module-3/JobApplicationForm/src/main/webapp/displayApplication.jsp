<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 
  Name: Jose Flores
  Date: 11/01/2025
  Assignment: Working with JSP Forms
 -->

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Application Summary</title>
</head>
<body style="font-family: Arial, sans-serif;">
    <h1>Job Application Summary</h1>
    <p>Below is the information you submitted:</p>

    <%
        // Retrieve form data sent from jobApplication.jsp
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String position = request.getParameter("position");
        String experience = request.getParameter("experience");
    %>

    <!-- Display data in an HTML table -->
    <table border="1" cellpadding="8" cellspacing="0">
        <tr style="background-color: #f2f2f2;">
            <th>Field</th>
            <th>Entered Information</th>
        </tr>
        <tr><td>Full Name</td><td><%= name %></td></tr>
        <tr><td>Email Address</td><td><%= email %></td></tr>
        <tr><td>Phone Number</td><td><%= phone %></td></tr>
        <tr><td>Position Applied For</td><td><%= position %></td></tr>
        <tr><td>Years of Experience</td><td><%= experience %></td></tr>
    </table>

    <br>
    <a href="jobApplication.jsp">Go Back to Form</a>
</body>
</html>