<%@ page import="beans.MovieBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Movie Updated</title>
</head>
<body>
    <h2>Updated Movie Details</h2>
    <%
        // Create a MovieBean and set properties from form fields
        MovieBean movie = new MovieBean();
        movie.setMovie_id(Integer.parseInt(request.getParameter("movie_id")));
        movie.setTitle(request.getParameter("title"));
        movie.setGenre(request.getParameter("genre"));
        movie.setRelease_year(Integer.parseInt(request.getParameter("release_year")));
        movie.setDuration(request.getParameter("duration"));
        movie.setDirector(request.getParameter("director"));

        // Call the JavaBean method to update the DB
        boolean success = movie.updateMovie();

        if (success) {
            out.println("<p>Movie updated successfully using JavaBean!</p>");
        } else {
            out.println("<p>Error updating movie. Check logs.</p>");
        }
    %>

    <!-- Display updated record as table -->
    <table border="1">
        <thead>
            <tr>
                <th>ID</th><th>Title</th><th>Genre</th><th>Year</th><th>Duration</th><th>Director</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><%= movie.getMovie_id() %></td>
                <td><%= movie.getTitle() %></td>
                <td><%= movie.getGenre() %></td>
                <td><%= movie.getRelease_year() %></td>
                <td><%= movie.getDuration() %></td>
                <td><%= movie.getDirector() %></td>
            </tr>
        </tbody>
    </table>
</body>
</html>
