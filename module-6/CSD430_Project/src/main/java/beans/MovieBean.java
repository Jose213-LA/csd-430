/*
Name: Jose Flores
Date: 11/16/2025
Assignment: M - 5 & 6
Purpose: To read movies from the database.
 */
package beans;

import java.sql.*;
import java.util.*;

public class MovieBean {
    
    private String url = "jdbc:mysql://localhost:3306/CSD430";
    private String username = "student1";
    private String password = "pass";

    // Get all movie IDs for dropdown
    public List<Integer> getMovieIDs() {
        List<Integer> ids = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, username, password);
            PreparedStatement ps = conn.prepareStatement("SELECT movie_id FROM jose_movies_data");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ids.add(rs.getInt("movie_id"));
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ids;
    }

    // Get one movie record by ID
    public ResultSet getMovieByID(int id) {
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, username, password);

            PreparedStatement ps = conn.prepareStatement(
                "SELECT * FROM jose_movies_data WHERE movie_id = ?");
            ps.setInt(1, id);

            rs = ps.executeQuery();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }
}