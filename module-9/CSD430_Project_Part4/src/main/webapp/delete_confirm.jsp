<!-- 
  Name: Jose Flores
  Date: 12/6/2025
  Assignment: M - 9
  Purpose: This page removes a movie from the 
           database and then shows the movies that are still left.
-->

<%@ page import="beans.MovieBean" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<title>Movie Deleted</title>
</head>
<body>

<h2>Movie Successfully Deleted</h2>

<%
    MovieBean bean = new MovieBean();

    int id = Integer.parseInt(request.getParameter("movie_id"));
    bean.deleteMovie(id);  // Perform deletion
%>

<p style="color:green;"><strong>Record with Movie ID <%= id %> has been deleted.</strong></p>

<hr>

<!-- Dropdown for deleting another record -->
<form method="post" action="delete_confirm.jsp">
    <label><strong>Select Another Movie ID to Delete:</strong></label>
    <select name="movie_id">
        <%
            for (Integer mid : bean.getMovieIDs()) {
        %>
            <option value="<%= mid %>"><%= mid %></option>
        <%
            }
        %>
    </select>
    <input type="submit" value="Delete Movie">
</form>

<hr>

<h3>Remaining Movie Records</h3>

<%
    ResultSet rs = bean.getAllMovies();
%>

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
boolean hasRows = false;
while (rs.next()) {
    hasRows = true;
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
if (!hasRows) {
%>
<tr>
    <td colspan="6" style="text-align:center;">All records have been deleted.</td>
</tr>
<%
}
%>

</tbody>
</table>

<br>
<a href="delete_select.jsp">Return to Delete Page</a>

</body>
</html>