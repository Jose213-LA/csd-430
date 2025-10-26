<%@ page contentType="text/html;charset=UTF-8" %>
<!-- 
  Name: Jose Flores
  Date: 10/25/2025
  Assignment: Java Scriptlet - Data Display
 -->
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Table</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>My Favorite Movies</h1>
    <p>This table shows some movies I have enjoyed, along with their release year and genre.</p>

    <table border="1">
        <tr>
            <th>Title</th>
            <th>Year</th>
            <th>Genre</th>
        </tr>
        <%
            
            String[][] movies = {
                {"The Shawshank Redemption", "1994", "Drama"},
                {"Pacific Rim", "2010", "Sci-Fi"},
                {"The Godfather", "1972", "Crime"},
                {"The Dark Knight", "2008", "Action"},
                {"Forrest Gump", "1994", "Comedy/Drama"}
            };

            
            for(int i = 0; i < movies.length; i++){
        %>
        <tr>
            <td><%= movies[i][0] %></td>
            <td><%= movies[i][1] %></td>
            <td><%= movies[i][2] %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>