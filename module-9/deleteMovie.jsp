<%@ page import="java.util.List, beans.MovieBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Movies</title>
</head>
<body>
    <h2>Delete a Movie</h2>
    <p>This page shows all movies and lets you delete one at a time.</p>

    <%
        // Fetch all movies
        List<MovieBean> movies = MovieBean.getAllMovies();
    %>

    <!-- Table showing current movies -->
    <table border="1">
        <thead>
            <tr>
                <th>ID</th><th>Title</th><th>Genre</th><th>Year</th><th>Duration</th><th>Director</th>
            </tr>
        </thead>
        <tbody>
            <%
                if (movies.isEmpty()) {
                    out.println("<tr><td colspan='6'>No movies found.</td></tr>");
                } else {
                    for (MovieBean m : movies) {
            %>
            <tr>
                <td><%= m.getMovie_id() %></td>
                <td><%= m.getTitle() %></td>
                <td><%= m.getGenre() %></td>
                <td><%= m.getRelease_year() %></td>
                <td><%= m.getDuration() %></td>
                <td><%= m.getDirector() %></td>
            </tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>

    <hr>

    <!-- Dropdown to select a movie to delete -->
    <form action="deleteMovieProcess.jsp" method="post">
        <label for="movie_id">Select Movie to Delete:</label>
        <select name="movie_id" id="movie_id">
            <%
                for (MovieBean m : movies) {
                    out.println("<option value='" + m.getMovie_id() + "'>" + m.getMovie_id() + " - " + m.getTitle() + "</option>");
                }
            %>
        </select>
        <input type="submit" value="Delete Movie">
    </form>
</body>
</html>
