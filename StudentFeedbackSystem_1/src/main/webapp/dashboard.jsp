<html>
<head>
<title>Dashboard</title>
<link rel="stylesheet" href="css/style.css">

<style>
.navbar {
    background: #333;
    padding: 15px;
    text-align: center;
}

.navbar a {
    color: white;
    margin: 0 15px;
    text-decoration: none;
    font-weight: bold;
}

.navbar a:hover {
    color: #4facfe;
}

/* Center content */
.container {
    text-align: center;
    margin-top: 60px;
}

/* Cards */
.card-container {
    display: flex;
    justify-content: center;
    gap: 30px;
    margin-top: 40px;
}

.card {
    background: white;
    padding: 25px;
    width: 200px;
    border-radius: 12px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    transition: 0.3s;
}

.card:hover {
    transform: translateY(-5px);
}

.card h3 {
    margin-bottom: 10px;
    color: #333;
}

.card a {
    text-decoration: none;
    color: white;
    background: #4facfe;
    padding: 8px 12px;
    border-radius: 6px;
    display: inline-block;
    margin-top: 10px;
}

.card a:hover {
    background: #007bff;
}
</style>

</head>

<body>

<!-- Navbar -->
<div class="navbar">
    <a href="index.jsp">Add Feedback</a>
    <a href="viewFeedback.jsp">View Feedback</a>
    <a href="adminLogin.jsp">Admin Login</a>
</div>

<!-- Center Content -->
<div class="container">
    <h2>Student Feedback Management System</h2>
    <p>Manage and review student feedback efficiently</p>

    <!-- Cards -->
    <div class="card-container">

        <div class="card">
            <h3>Add Feedback</h3>
            <p>Submit feedback for subjects</p>
            <a href="index.jsp">Open</a>
        </div>

        <div class="card">
            <h3>View Feedback</h3>
            <p>See all submitted feedback</p>
            <a href="viewFeedback.jsp">Open</a>
        </div>

        <div class="card">
            <h3>Admin Panel</h3>
            <p>Login as admin</p>
            <a href="adminLogin.jsp">Open</a>
        </div>

    </div>
</div>

</body>
</html>