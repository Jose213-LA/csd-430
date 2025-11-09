<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="beans.MovieBean" %>
<!-- 
  Name: Jose Flores
  Date: 11/09/2025
  Assignment: JavaBean
  Description: This JavaBean holds movie information for display in a JSP page.
-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Favorite Movies - JavaBean Example</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>My Favorite Movies</h1>
    <p>This table displays some of my favorite movies using data stored in a JavaBean.</p>

    <%
        MovieBean[] movies = {
            new MovieBean("The Shawshank Redemption", 1994, "Drama", "Frank Darabont", "9.3"),
            new MovieBean("Pacific Rim", 2010, "Sci-Fi", "Guillermo del Toro", "7.0"),
            new MovieBean("The Godfather", 1972, "Crime", "Francis Ford Coppola", "9.2"),
            new MovieBean("The Dark Knight", 2008, "Action", "Christopher Nolan", "9.0"),
            new MovieBean("Forrest Gump", 1994, "Comedy/Drama", "Robert Zemeckis", "8.8")
        };
    %>

    <table border="1">
        <tr>
            <th>Title</th>
            <th>Year</th>
            <th>Genre</th>
            <th>Director</th>
            <th>Rating</th>
        </tr>

        <%
            for (int i = 0; i < movies.length; i++) {
        %>
        <tr>
            <td><%= movies[i].getTitle() %></td>
            <td><%= movies[i].getYear() %></td>
            <td><%= movies[i].getGenre() %></td>
            <td><%= movies[i].getDirector() %></td>
            <td><%= movies[i].getRating() %></td>
        </tr>
        <%
            }
        %>
    </table>

</body>
</html>