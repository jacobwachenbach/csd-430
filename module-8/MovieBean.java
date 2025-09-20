// MovieBean.java
// A simple JavaBean class to hold movie information
// Implements Serializable so it can be safely stored in sessions/serialized


package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
}
