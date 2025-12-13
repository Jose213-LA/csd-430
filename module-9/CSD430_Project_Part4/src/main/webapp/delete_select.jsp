<!-- 
  Name: Jose Flores
  Date: 12/6/2025
  Assignment: M - 9
  Purpose: This page lets you pick a movie to delete
           and shows all the movies in the list.
-->

<%@ page import="beans.MovieBean" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<title>Delete Movie Record</title>
</head>
<body>

<h2>Movie Deletion Module (Project Part 4)</h2>
<p>Select a movie ID from the dropdown to delete a record. All records are displayed below.</p>

<%
    MovieBean bean = new MovieBean();
    ResultSet rs = bean.getAllMovies();
%>

<!-- Dropdown form -->
<form method="post" action="delete_confirm.jsp">
    <label><strong>Select Movie ID to Delete:</strong></label>
    <select name="movie_id">
        <%
            for (Integer id : bean.getMovieIDs()) {
        %>
            <option value="<%= id %>"><%= id %></option>
        <%
            }
        %>
    </select>
    <input type="submit" value="Delete Movie">
</form>

<hr>

<h3>All Movie Records</h3>

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
<tr><td colspan="6" style="text-align:center;">No records found.</td></tr>
<%
}
%>

</tbody>
</table>

</body>
</html>