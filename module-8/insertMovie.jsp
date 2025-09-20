<%@ page import="beans.MovieBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Insert Movie</title>
</head>
<body>
    <h2>Insert Movie Result</h2>
    <%
        // Create a new MovieBean object
        MovieBean movie = new MovieBean();

        // Set properties from the form fields
        movie.setTitle(request.getParameter("title"));
        movie.setGenre(request.getParameter("genre"));
        movie.setRelease_year(Integer.parseInt(request.getParameter("release_year")));
        movie.setDuration(request.getParameter("duration"));
        movie.setDirector(request.getParameter("director"));

        // Call the JavaBean method to insert into the database
        boolean success = movie.insertMovie();

        if (success) {
            out.println("<p>Movie added successfully using JavaBean!</p>");
        } else {
            out.println("<p>Error inserting movie. Check server logs.</p>");
        }
    %>

    <!-- Link to see all movies -->
    <p><a href="listMovies.jsp">View All Movies</a></p>
</body>
</html>
