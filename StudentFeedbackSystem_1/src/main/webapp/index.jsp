<html>
<head>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<h2>Feedback Form</h2>

<form action="FeedbackServlet" method="post">
    Name: <input type="text" name="name"><br>
    Subject: <input type="text" name="subject"><br>

    Rating:
    <select name="rating">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
    </select><br>

    Comments:
    <textarea name="comments"></textarea><br>

    <input type="submit" value="Submit">
</form>

</body>
</html>