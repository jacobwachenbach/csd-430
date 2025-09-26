// MovieBean.java
// A simple JavaBean class to hold movie information
// Implements Serializable so it can be safely stored in sessions/serialized


package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Statement;

import util.DBUtil;

public class MovieBean {
    private int movie_id;
    private String title;
    private String genre;
    private int release_year;
    private String duration;
    private String director;

    // Getter and Setter for movie_id
    public int getMovie_id() {
        return movie_id;
    }
    public void setMovie_id(int movie_id) {
        this.movie_id = movie_id;
    }

    // Getter and Setter for title
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

    // Getter and Setter for genre
    public String getGenre() {
        return genre;
    }
    public void setGenre(String genre) {
        this.genre = genre;
    }

    // Getter and Setter for release_year
    public int getRelease_year() {
        return release_year;
    }
    public void setRelease_year(int release_year) {
        this.release_year = release_year;
    }

    // Getter and Setter for duration
    public String getDuration() {
        return duration;
    }
    public void setDuration(String duration) {
        this.duration = duration;
    }

    // Getter and Setter for director
    public String getDirector() {
        return director;
    }
    public void setDirector(String director) {
        this.director = director;
    }


    // Insert this movie into the database
    public boolean insertMovie() {
        String sql = "INSERT INTO jacob_movies_data (title, genre, release_year, duration, director) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, this.title);
            ps.setString(2, this.genre);
            ps.setInt(3, this.release_year);
            ps.setString(4, this.duration);
            ps.setString(5, this.director);
            ps.executeUpdate();
            return true;  // success
        } catch (SQLException e) {
            e.printStackTrace();
            return false; // failure
        }
    }

    // Update this movie in the database by ID
    public boolean updateMovie() {
        String sql = "UPDATE jacob_movies_data SET title=?, genre=?, release_year=?, duration=?, director=? WHERE movie_id=?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, this.title);
            ps.setString(2, this.genre);
            ps.setInt(3, this.release_year);
            ps.setString(4, this.duration);
            ps.setString(5, this.director);
            ps.setInt(6, this.movie_id);
            ps.executeUpdate();
            return true;  // success
        } catch (SQLException e) {
            e.printStackTrace();
            return false; // failure
        }
    }

    public static boolean deleteMovie(int id) {
        String sql = "DELETE FROM jacob_movies_data WHERE movie_id=?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            int rows = ps.executeUpdate();
            return rows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Return all movies as a list of beans
    public static List<MovieBean> getAllMovies() {
        List<MovieBean> movies = new ArrayList<>();
        String sql = "SELECT * FROM jacob_movies_data";
        try (Connection conn = DBUtil.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                MovieBean movie = new MovieBean();
                movie.setMovie_id(rs.getInt("movie_id"));
                movie.setTitle(rs.getString("title"));
                movie.setGenre(rs.getString("genre"));
                movie.setRelease_year(rs.getInt("release_year"));
                movie.setDuration(rs.getString("duration"));
                movie.setDirector(rs.getString("director"));
                movies.add(movie);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movies;
    }
}
