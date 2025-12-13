<!-- 
  Name: Jose Flores
  Date: 11/23/2025
  Assignment: M - 5 & 6
  Purpose: This page lets the user add a movie and 
           shows all movies in the database.
-->

<%@ page import="beans.MovieBean" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<title>Add New Movie</title>
</head>
<body>

<h2>Add a New Movie Record</h2>

<%
    MovieBean bean = new MovieBean();

    // Process form submission
    String title = request.getParameter("title");

    if (title != null) {
        String genre = request.getParameter("genre");
        int year = Integer.parseInt(request.getParameter("release_year"));
        double rating = Double.parseDouble(request.getParameter("rating"));
        String director = request.getParameter("director");

        bean.addMovie(title, genre, year, rating, director);

        out.println("<h3 style='color:green;'>Movie Successfully Added!</h3>");
    }
%>

<!-- HTML INPUT FORM -->
<form method="post" action="add_movie.jsp">

    <label>Title:</label><br>
    <input type="text" name="title" required><br><br>

    <label>Genre:</label><br>
    <input type="text" name="genre" required><br><br>

    <label>Release Year:</label><br>
    <input type="number" name="release_year" required><br><br>

    <label>Rating (0 - 10):</label><br>
    <input type="text" name="rating" required><br><br>

    <label>Director:</label><br>
    <input type="text" name="director" required><br><br>

    <input type="submit" value="Add Movie">
</form>

<hr>

<h2>All Movies in Database</h2>

<table border="1" cellpadding="6">
<thead>
<tr>
    <th>ID</th>
    <th>Title</th>
    <th>Genre</th>
    <th>Release Year</th>
    <th>Rating</th>
    <th>Director</th>
    
</tr>
</thead>
<tbody>

<%
    ResultSet rs = bean.getAllMovies();
    while (rs.next()) {
%>
<tr>
    <td><%= rs.getInt("movie_id") %></td>
    <td><%= rs.getString("title") %></td>
    <td><%= rs.getString("genre") %></td>
    <td><%= rs.getInt("release_year") %></td>
    <td><%= rs.getDouble("rating") %></td>
    <td><%= rs.getString("director") %></td>
    
</tr>
<%
    }
%>

</tbody>
</table>

</body>
</html>