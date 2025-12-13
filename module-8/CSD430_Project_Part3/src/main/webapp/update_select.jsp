<!-- 
  Name: Jose Flores
  Date: 11/30/2025
  Assignment: M - 8
  Purpose: This program lets you pick a movie to change.
-->

<%@ page import="beans.MovieBean" %>

<!DOCTYPE html>
<html>
<head>
<title>Select Movie to Update</title>
</head>
<body>

<h2>Select Movie ID to Update</h2>

<%
    MovieBean bean = new MovieBean();
%>

<form action="update_form.jsp" method="post">

    <label>Select Movie ID:</label>
    <select name="movie_id">
    <%
        for (Integer id : bean.getMovieIDs()) {
    %>
            <option value="<%= id %>"><%= id %></option>
    <%
        }
    %>
    </select>

    <br><br>
    <input type="submit" value="Edit Movie">

</form>

</body>
</html>