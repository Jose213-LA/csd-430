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
    <title>Job Application Form</title>
</head>
<body style="font-family: Arial, sans-serif;">
    <h1>Job Application Form</h1>
    <p>Please fill out the form below to apply for a position at our company.</p>

    <!-- The form sends data to displayApplication.jsp -->
    <form action="displayApplication.jsp" method="post">
        <label for="name">Full Name:</label><br>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Email Address:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <label for="phone">Phone Number:</label><br>
        <input type="tel" id="phone" name="phone" required><br><br>

        <label for="position">Position Applying For:</label><br>
        <select id="position" name="position">
            <option value="Software Developer">Software Developer</option>
            <option value="Project Manager">Project Manager</option>
            <option value="Designer">Designer</option>
        </select><br><br>

        <label for="experience">Years of Experience:</label><br>
        <input type="number" id="experience" name="experience" min="0" max="50" required><br><br>

        <input type="submit" value="Submit Application">
    </form>
</body>
</html>