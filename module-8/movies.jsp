<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%
    // Java Code (Scriptlet)
    class Movie {
        String title, genre, year, duration;
        Movie(String title, String genre, String year, String duration) {
            this.title = title;
            this.genre = genre;
            this.year = year;
            this.duration = duration;
        }
    }

    // Created a list of 5 movies
    List<Movie> movies = new ArrayList<>();
    movies.add(new Movie("Tetris", "Thriller/History", "2023", "1h 58m"));
    movies.add(new Movie("Inception", "Sci-Fi/Thriller", "2010", "2h 28m"));
    movies.add(new Movie("The Dark Knight", "Action/Crime", "2008", "2h 32m"));
    movies.add(new Movie("Interstellar", "Sci-Fi/Drama", "2014", "2h 49m"));
    movies.add(new Movie("The Social Network", "Drama/Biography", "2010", "2h 0m"));
%>
<html>
<head>
    <title>Movies I Enjoyed Watching</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Movies I Have Enjoyed Watching</h1>
    <p>This table contains a selection of movies I enjoyed, grouped with their genres, release years, and duration.</p>

    <table>
        <tr>
            <th>Title</th>
            <th>Genre</th>
            <th>Year</th>
            <th>Duration</th>
        </tr>
        <%
            // Loop through the list and display rows
            for (Movie m : movies) {
        %>
        <tr>
            <td><%= m.title %></td>
            <td><%= m.genre %></td>
            <td><%= m.year %></td>
            <td><%= m.duration %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
