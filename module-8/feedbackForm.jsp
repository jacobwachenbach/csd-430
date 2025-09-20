<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Restaurant Feedback Form</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Restaurant Experience Feedback</h1>
    <p>Please fill out the form below to share your experience with us.</p>

    <!-- Feedback Form -->
    <form action="feedbackResult.jsp" method="post">

        <!-- Text input for Full Name -->
        <label for="name">Full Name:</label><br>
        <input type="text" id="name" name="name" required><br><br>

        <!-- Email input -->
        <label for="email">Email Address:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <!-- Text input for Restaurant Name -->
        <label for="restaurant">Restaurant Name:</label><br>
        <input type="text" id="restaurant" name="restaurant" required><br><br>

        <!-- Dropdown (select box) for Service Rating -->
        <label for="rating">Service Rating:</label><br>
        <select id="rating" name="rating">
            <option value="Excellent">Excellent</option>
            <option value="Good">Good</option>
            <option value="Average">Average</option>
            <option value="Poor">Poor</option>
        </select><br><br>

        <!-- Textarea for free-form comments -->
        <label for="comments">Additional Comments:</label><br>
        <textarea id="comments" name="comments" rows="5" cols="30"></textarea><br><br>
        
        <!-- Submit button -->
        <input type="submit" value="Submit Feedback">
    </form>
</body>
</html>
