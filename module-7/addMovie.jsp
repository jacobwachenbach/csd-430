<!DOCTYPE html>
<html>
<head>
    <title>Add New Movie</title>
</head>
<body>
    <h2>Add a New Movie</h2>
    <form action="insertMovie.jsp" method="post">
        <label>Title: <input type="text" name="title" required></label><br><br>
        <label>Genre: <input type="text" name="genre" required></label><br><br>
        <label>Release Year: <input type="number" name="release_year" required></label><br><br>
        <label>Duration: <input type="text" name="duration" required></label><br><br>
        <label>Director: <input type="text" name="director" required></label><br><br>
        <input type="submit" value="Add Movie">
    </form>
</body>
</html>
