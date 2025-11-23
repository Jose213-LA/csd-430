/*
NAME: Jose Flores
Date: 11/16/2025
Assignment: Module 5 & 6
Purpose: To set up the jose_movies_data table 
and load initial data for use in the JSP application.
*/

CREATE DATABASE IF NOT EXISTS CSD430;
USE CSD430;

CREATE USER IF NOT EXISTS 'student1'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON CSD430.* TO 'student1'@'localhost';
FLUSH PRIVILEGES;

CREATE TABLE jose_movies_data (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    release_year INT,
    rating DECIMAL(2,1),
    director VARCHAR(100)
);

INSERT INTO jose_movies_data (title, genre, release_year, rating, director) VALUES
('The Matrix', 'Sci-Fi', 1999, 9.0, 'Wachowski Sisters'),
('Inception', 'Sci-Fi', 2010, 8.8, 'Christopher Nolan'),
('Interstellar', 'Sci-Fi', 2014, 8.6, 'Christopher Nolan'),
('The Godfather', 'Crime', 1972, 9.2, 'Francis Ford Coppola'),
('Pulp Fiction', 'Crime', 1994, 8.9, 'Quentin Tarantino'),
('Avatar', 'Fantasy', 2009, 7.8, 'James Cameron'),
('Titanic', 'Drama', 1997, 7.9, 'James Cameron'),
('The Dark Knight', 'Action', 2008, 9.0, 'Christopher Nolan'),
('Joker', 'Drama', 2019, 8.5, 'Todd Phillips'),
('Frozen', 'Animation', 2013, 7.5, 'Chris Buck');