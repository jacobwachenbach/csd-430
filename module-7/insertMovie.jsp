<%@ page import="java.sql.*, util.DBUtil" %>
<!DOCTYPE html>
<html>
<head>
    <title>Insert Movie</title>
</head>
<body>
    <h2>Insert Movie Result</h2>
    <%
        String title = request.getParameter("title");
        String genre = request.getParameter("genre");
        int releaseYear = Integer.parseInt(request.getParameter("release_year"));
        String duration = request.getParameter("duration");
        String director = request.getParameter("director");

        int rows = 0;

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(
                 "INSERT INTO jacob_movies_data (title, genre, release_year, duration, director) VALUES (?, ?, ?, ?, ?)")) {
            ps.setString(1, title);
            ps.setString(2, genre);
            ps.setInt(3, releaseYear);
            ps.setString(4, duration);
            ps.setString(5, director);

            rows = ps.executeUpdate();
        } catch (Exception e) {
            out.println("<p>Error inserting movie: " + e.getMessage() + "</p>");
        }

        if (rows > 0) {
            out.println("<p>Movie added successfully!</p>");
        }
    %>

    <p><a href="listMovies.jsp">View All Movies</a></p>
</body>
</html>
