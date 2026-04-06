<html>
<head>
<title>Admin Login</title>
<link rel="stylesheet" href="css/style.css">

<style>
/* Extra styling for login box */
.login-box {
    width: 350px;
    margin: 80px auto;
    padding: 30px;
    background: white;
    border-radius: 12px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    text-align: center;
}

.login-box h2 {
    margin-bottom: 20px;
    color: #333;
}

.login-box input {
    width: 90%;
    padding: 10px;
    margin: 10px 0;
}

.login-box input[type="submit"] {
    width: 95%;
    background: #4facfe;
    color: white;
    border: none;
    cursor: pointer;
    font-weight: bold;
    transition: 0.3s;
}

.login-box input[type="submit"]:hover {
    background: #007bff;
}
</style>

</head>

<body>

<div class="login-box">
    <h2>🔐 Admin Login</h2>

    <form action="AdminServlet" method="post">
        <input type="text" name="user" placeholder="Enter Username" required><br>
        <input type="password" name="pass" placeholder="Enter Password" required><br>
        <input type="submit" value="Login">
    </form>
</div>

</body>
</html>