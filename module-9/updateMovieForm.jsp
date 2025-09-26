<%@ page import="java.sql.*, util.DBUtil" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Movie</title>
</head>
<body>
    <h2>Update Movie</h2>
    <%
        // Get the movie_id passed from updateMovieSelect.jsp
        int movieId = Integer.parseInt(request.getParameter("movie_id"));

        // Query the DB for the details of that movie
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement("SELECT * FROM jacob_movies_data WHERE movie_id = ?")) {
            ps.setInt(1, movieId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
    %>
    <!-- Prefilled form with movie details -->
    <!-- ID is read only because it's the primary key -->
    <form action="updateMovieProcess.jsp" method="post">
        <p>ID: <input type="text" name="movie_id" value="<%= rs.getInt("movie_id") %>" readonly></p>
        <p>Title: <input type="text" name="title" value="<%= rs.getString("title") %>"></p>
        <p>Genre: <input type="text" name="genre" value="<%= rs.getString("genre") %>"></p>
        <p>Release Year: <input type="number" name="release_year" value="<%= rs.getInt("release_year") %>"></p>
        <p>Duration: <input type="text" name="duration" value="<%= rs.getString("duration") %>"></p>
        <p>Director: <input type="text" name="director" value="<%= rs.getString("director") %>"></p>
        <input type="submit" value="Save Changes">
    </form>
    <%
            } else {
                out.println("<p>No movie found for ID " + movieId + "</p>");
            }
        } catch (Exception e) {
            out.println("<p>Error: " + e.getMessage() + "</p>");
        }
    %>
</body>
</html>
