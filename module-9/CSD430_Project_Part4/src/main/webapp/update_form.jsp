<%@ page import="beans.MovieBean" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<title>Edit Movie</title>
</head>
<body>

<h2>Edit Movie Details</h2>

<%
    MovieBean bean = new MovieBean();
    int id = Integer.parseInt(request.getParameter("movie_id"));
    ResultSet rs = bean.getMovieByID(id);
    rs.next();
%>

<form action="update_confirm.jsp" method="post">

    <label>Movie ID (cannot edit):</label><br>
    <input type="text" value="<%= rs.getInt("movie_id") %>" readonly><br><br>
    <input type="hidden" name="movie_id" value="<%= rs.getInt("movie_id") %>">

    <label>Title:</label><br>
    <input type="text" name="title" value="<%= rs.getString("title") %>" required><br><br>

    <label>Genre:</label><br>
    <input type="text" name="genre" value="<%= rs.getString("genre") %>" required><br><br>

    <label>Release Year:</label><br>
    <input type="number" name="release_year" value="<%= rs.getInt("release_year") %>" required><br><br>

    <label>Rating:</label><br>
    <input type="text" name="rating" value="<%= rs.getDouble("rating") %>" required><br><br>

    <label>Director:</label><br>
    <input type="text" name="director" value="<%= rs.getString("director") %>" required><br><br>

    <input type="submit" value="Update Movie">

</form>

</body>
</html>