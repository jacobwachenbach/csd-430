// MovieBean.java
// A simple JavaBean class to hold movie information
// Implements Serializable so it can be safely stored in sessions/serialized

package beans;

import java.io.Serializable;

public class MovieBean implements Serializable {
    private static final long serialVersionUID = 1L;

    // 5 total
    private String title;
    private String genre;
    private String year;
    private String duration;
    private String director;

    // Default constructor
    public MovieBean() {}

    // ---- Constructor ----
    public MovieBean(String title, String genre, String year, String duration, String director) {
        this.title = title;
        this.genre = genre;
        this.year = year;
        this.duration = duration;
        this.director = director;
    }

    // ---- Getters and Setters ----
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

    public String getGenre() {
        return genre;
    }
    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getYear() {
        return year;
    }
    public void setYear(String year) {
        this.year = year;
    }

    public String getDuration() {
        return duration;
    }
    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getDirector() {
        return director;
    }
    public void setDirector(String director) {
        this.director = director;
    }
}
