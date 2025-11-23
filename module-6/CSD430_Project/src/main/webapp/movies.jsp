<!-- 
  Name: Jose Flores
  Date: 11/016/2025
  Assignment: M - 5 & 6
  Purpose: To let the user choose a movie and show its details.
-->
<%@ page import="beans.MovieBean" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Movie Selector</title>
</head>
<body>

<h2>Select a Movie Record</h2>

<%
    MovieBean bean = new MovieBean();
    String selectedID = request.getParameter("movie_id");
%>

<form method="post" action="movies.jsp">
    <label>Select Movie ID:</label>
    <select name="movie_id">
        <%
            for (Integer id : bean.getMovieIDs()) {
        %>
            <option value="<%= id %>" 
                <%= (selectedID != null && selectedID.equals(id + "")) ? "selected" : "" %>>
                <%= id %>
            </option>
        <%
            }
        %>
    </select>

    <input type="submit" value="View Movie">
</form>

<hr>

<%
if (selectedID != null) {
    int id = Integer.parseInt(selectedID);
    ResultSet rs = bean.getMovieByID(id);
    if (rs.next()) {
%>

<h3>Movie Details</h3>

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

<%
    }
}
%>

</body>
</html>