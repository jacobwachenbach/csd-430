// MovieBean.java
// A simple JavaBean class to hold movie information
// Implements Serializable so it can be safely stored in sessions/serialized


package beans;

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
}
