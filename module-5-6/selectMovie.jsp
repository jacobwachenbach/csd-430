<%@ page import="java.sql.*, util.DBUtil" %>
<!DOCTYPE html>
<html>
<head>
    <title>Select a Movie</title>
</head>
<body>
    <h2>Select a Movie by ID</h2>
    <form action="displayMovie.jsp" method="post">
        <select name="movie_id">
            <%
                try (Connection conn = DBUtil.getConnection();
                     Statement stmt = conn.createStatement();
                     ResultSet rs = stmt.executeQuery("SELECT movie_id, title FROM jacob_movies_data")) {
                    while (rs.next()) {
                        int id = rs.getInt("movie_id");
                        String title = rs.getString("title");
                        out.println("<option value='" + id + "'>" + id + " - " + title + "</option>");
                    }
                } catch (Exception e) {
                    out.println("<option>Error: " + e.getMessage() + "</option>");
                }
            %>
        </select>
        <input type="submit" value="View Movie">
    </form>
</body>
</html>
