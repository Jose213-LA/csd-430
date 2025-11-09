/*
 * Name: Jose Flores
 * Date: 11/09/2025
 * Assignment: JavaBean - Data Display
 * Description: This JavaBean holds movie information for display in a JSP page.
 */
package beans;

import java.io.Serializable;

public class MovieBean implements Serializable {
    private String title;
    private int year;
    private String genre;
    private String director;
    private String rating;

    public MovieBean() {}

    public MovieBean(String title, int year, String genre, String director, String rating) {
        this.title = title;
        this.year = year;
        this.genre = genre;
        this.director = director;
        this.rating = rating;
    }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public int getYear() { return year; }
    public void setYear(int year) { this.year = year; }

    public String getGenre() { return genre; }
    public void setGenre(String genre) { this.genre = genre; }

    public String getDirector() { return director; }
    public void setDirector(String director) { this.director = director; }

    public String getRating() { return rating; }
    public void setRating(String rating) { this.rating = rating; }
}