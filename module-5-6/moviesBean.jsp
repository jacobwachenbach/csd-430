<%@ page import="java.util.*,beans.MovieBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Scriptlet to create MovieBean objects and store them in a List
    List<MovieBean> movies = new ArrayList<>();

    movies.add(new MovieBean("Tetris", "Thriller/History", "2023", "1h 58m", "Jon S. Baird"));
    movies.add(new MovieBean("Inception", "Sci-Fi/Thriller", "2010", "2h 28m", "Christopher Nolan"));
    movies.add(new MovieBean("The Dark Knight", "Action/Crime", "2008", "2h 32m", "Christopher Nolan"));
    movies.add(new MovieBean("Interstellar", "Sci-Fi/Drama", "2014", "2h 49m", "Christopher Nolan"));
    movies.add(new MovieBean("The Social Network", "Drama/Biography", "2010", "2h 0m", "David Fincher"));
%>
<html>
<head>
    <title>Movies with JavaBean</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Movies I Have Enjoyed Watching</h1>
    <p>This data is stored inside a <b>JavaBean</b> and displayed in a JSP table.</p>

    <!-- HTML Table -->
    <table>
        <tr>
            <th>Title</th>
            <th>Genre</th>
            <th>Year</th>
            <th>Duration</th>
            <th>Director</th>
        </tr>
        <%
            // Display each movie using getters
            for (MovieBean m : movies) {
        %>
        <tr>
            <td><%= m.getTitle() %></td>
            <td><%= m.getGenre() %></td>
            <td><%= m.getYear() %></td>
            <td><%= m.getDuration() %></td>
            <td><%= m.getDirector() %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
