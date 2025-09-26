<%@ page import="beans.MovieBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Deleting Movie</title>
</head>
<body>
    <h2>Deleting Movie</h2>
    <%
        int movieId = Integer.parseInt(request.getParameter("movie_id"));

        boolean success = MovieBean.deleteMovie(movieId);

        if (success) {
            out.println("<p>Movie with ID " + movieId + " deleted successfully.</p>");
        } else {
            out.println("<p>Error: Movie could not be deleted.</p>");
        }

        // Redirect back to deleteMovie.jsp to show updated table
        response.setHeader("Refresh", "2; URL=deleteMovie.jsp");
    %>
    <p>Redirecting back to movie list...</p>
</body>
</html>
