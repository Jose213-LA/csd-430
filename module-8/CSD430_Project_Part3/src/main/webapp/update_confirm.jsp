<!-- 
  Name: Jose Flores
  Date: 11/30/2025
  Assignment: M - 8
  Purpose: This program lets you change a movies
            information and then shows the updated details.
-->

<%@ page import="beans.MovieBean" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<title>Movie Updated</title>
</head>
<body>

<h2>Movie Updated Successfully</h2>

<%
    MovieBean bean = new MovieBean();

    int id = Integer.parseInt(request.getParameter("movie_id"));
    String title = request.getParameter("title");
    String genre = request.getParameter("genre");
    int year = Integer.parseInt(request.getParameter("release_year"));
    double rating = Double.parseDouble(request.getParameter("rating"));
    String director = request.getParameter("director");

    bean.updateMovie(id, title, genre, year, rating, director);

    ResultSet rs = bean.getMovieByID(id);
    rs.next();
%>

<table border="1" cellpadding="6">
<thead>
<tr>
    <th>Movie ID</th>
    <th>Title</th>
    <th>Genre</th>
    <th>Release Year</th>
    <th>Rating</th>
    <th>Director</th>
</tr>
</thead>
<tbody>
<tr>
    <td><%= rs.getInt("movie_id") %></td>
    <td><%= rs.getString("title") %></td>
    <td><%= rs.getString("genre") %></td>
    <td><%= rs.getInt("release_year") %></td>
    <td><%= rs.getDouble("rating") %></td>
    <td><%= rs.getString("director") %></td>
</tr>
</tbody>
</table>

<br>
<a href="update_select.jsp">Update Another Movie</a>

</body>
</html>