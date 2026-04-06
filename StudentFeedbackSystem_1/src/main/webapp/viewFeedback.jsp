<%@ page import="java.sql.*, model.*" %>

<html>
<head>
<title>View Feedback</title>
<link rel="stylesheet" href="css/style.css">

<style>
.table-box {
    width: 80%;
    margin: 50px auto;
    background: white;
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
}

.table-box h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th {
    background: #4facfe;
    color: white;
    padding: 12px;
}

td {
    padding: 10px;
    text-align: center;
    border-bottom: 1px solid #ddd;
}

tr:hover {
    background-color: #f1f1f1;
}
</style>

</head>

<body>

<div class="table-box">
    <h2>All Feedback</h2>

    <table>
        <tr>
            <th>Name</th>
            <th>Subject</th>
            <th>Rating</th>
            <th>Comments</th>
        </tr>

        <%
        ResultSet rs = FeedbackDAO.getAllFeedback();
        while(rs.next()) {
        %>

        <tr>
            <td><%= rs.getString("student_name") %></td>
            <td><%= rs.getString("subject") %></td>
            <td><%= rs.getInt("rating") %></td>
            <td><%= rs.getString("comments") %></td>
        </tr>

        <% } %>

    </table>
</div>

</body>
</html>