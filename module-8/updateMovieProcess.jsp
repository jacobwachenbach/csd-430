<%@ page import="java.sql.*, util.DBUtil" %>
<!DOCTYPE html>
<html>
<head>
    <title>Movie Updated</title>
</head>
<body>
    <h2>Updated Movie Details</h2>
    <%
        // Get updated values from the form submission
        int movieId = Integer.parseInt(request.getParameter("movie_id"));
        String title = request.getParameter("title");
        String genre = request.getParameter("genre");
        int releaseYear = Integer.parseInt(request.getParameter("release_year"));
        String duration = request.getParameter("duration");
        String director = request.getParameter("director");

        // Update the record in the database
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(
                 "UPDATE jacob_movies_data SET title=?, genre=?, release_year=?, duration=?, director=? WHERE movie_id=?")) {
            ps.setString(1, title);
            ps.setString(2, genre);
            ps.setInt(3, releaseYear);
            ps.setString(4, duration);
            ps.setString(5, director);
            ps.setInt(6, movieId);
            ps.executeUpdate();
        } catch (Exception e) {
            // Handle update errors
            out.println("<p>Error updating movie: " + e.getMessage() + "</p>");
        }

        // Query the updated record and display it
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement("SELECT * FROM jacob_movies_data WHERE movie_id=?")) {
            ps.setInt(1, movieId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
    %>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th><th>Title</th><th>Genre</th><th>Year</th><th>Duration</th><th>Director</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><%= rs.getInt("movie_id") %></td>
                <td><%= rs.getString("title") %></td>
                <td><%= rs.getString("genre") %></td>
                <td><%= rs.getInt("release_year") %></td>
                <td><%= rs.getString("duration") %></td>
                <td><%= rs.getString("director") %></td>
            </tr>
        </tbody>
    </table>
    <%
            }
        } catch (Exception e) {
            // Handle errors fetching updated record
            out.println("<p>Error fetching updated record: " + e.getMessage() + "</p>");
        }
    %>
</body>
</html>
