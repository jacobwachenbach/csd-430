<%@ page import="java.sql.*, util.DBUtil, beans.MovieBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Movie Details</title>
</head>
<body>
    <h2>Movie Details</h2>
    <%
        // Get movie_id from request
        int movieId = Integer.parseInt(request.getParameter("movie_id"));

        // Query database for that movie
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement("SELECT * FROM jacob_movies_data WHERE movie_id = ?")) {
            ps.setInt(1, movieId);
            ResultSet rs = ps.executeQuery();

            // Store in a JavaBean
            if (rs.next()) {
                MovieBean movie = new MovieBean();
                movie.setMovie_id(rs.getInt("movie_id"));
                movie.setTitle(rs.getString("title"));
                movie.setGenre(rs.getString("genre"));
                movie.setRelease_year(rs.getInt("release_year"));
                movie.setDuration(rs.getString("duration"));
                movie.setDirector(rs.getString("director"));
    %>
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
    <%
            } else {
                out.println("<p>No movie found for ID: " + movieId + "</p>");
            }
        } catch (Exception e) {
            out.println("<p>Error: " + e.getMessage() + "</p>");
        }
    %>
</body>
</html>
