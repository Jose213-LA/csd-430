/*
Name: Jose Flores
Date: 11/30/2025
Assignment: M - 8
Purpose: To read movies from the database.
 */
package beans;

import java.sql.*;
import java.util.*;

public class MovieBean {

    private String url = "jdbc:mysql://localhost:3306/CSD430";
    private String username = "student1";
    private String password = "pass";

    // Returns all movie IDs
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

    // Retrieve a single movie record
    public ResultSet getMovieByID(int id) {
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, username, password);

            PreparedStatement ps = conn.prepareStatement(
                "SELECT * FROM jose_movies_data WHERE movie_id = ?"
            );
            ps.setInt(1, id);
            rs = ps.executeQuery();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    // Update an existing movie record
    public void updateMovie(int id, String title, String genre, int year, double rating, String director) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, username, password);

            PreparedStatement ps = conn.prepareStatement(
                "UPDATE jose_movies_data SET title = ?, genre = ?, release_year = ?, rating = ?, director = ? WHERE movie_id = ?"
            );

            ps.setString(1, title);
            ps.setString(2, genre);
            ps.setInt(3, year);
            ps.setDouble(4, rating);
            ps.setString(5, director);
            ps.setInt(6, id);

            ps.executeUpdate();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Get all movie records
    public ResultSet getAllMovies() {
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, username, password);

            PreparedStatement ps = conn.prepareStatement("SELECT * FROM jose_movies_data");
            rs = ps.executeQuery();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }
}