<%@ page import="java.sql.*, util.DBUtil" %>
<!DOCTYPE html>
<html>
<head>
    <title>Movie List</title>
</head>
<body>
    <h2>All Movies</h2>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th><th>Title</th><th>Genre</th><th>Year</th><th>Duration</th><th>Director</th>
            </tr>
        </thead>
        <tbody>
            <%
                try (Connection conn = DBUtil.getConnection();
                     Statement stmt = conn.createStatement();
                     ResultSet rs = stmt.executeQuery("SELECT * FROM jacob_movies_data")) {
                    while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getInt("movie_id") %></td>
                <td><%= rs.getString("title") %></td>
                <td><%= rs.getString("genre") %></td>
                <td><%= rs.getInt("release_year") %></td>
                <td><%= rs.getString("duration") %></td>
                <td><%= rs.getString("director") %></td>
            </tr>
            <%
                    }
                } catch (Exception e) {
                    out.println("<tr><td colspan='6'>Error: " + e.getMessage() + "</td></tr>");
                }
            %>
        </tbody>
    </table>
</body>
</html>
