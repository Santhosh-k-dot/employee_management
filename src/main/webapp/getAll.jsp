<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get All</title>
<style>
    /* Body styles */
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    /* Heading styles */
    h2 {
        color: #333;
    }

    /* Form styles */
    form {
        margin-top: 20px;
    }

    input[type="text"],
    input[type="submit"] {
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    /* Navigation Bar styles */
    .navbar {
        overflow: hidden;
        background-color: #333;
    }

    .navbar a {
        float: left;
        display: block;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
    }

    .navbar a:hover {
        background-color: #ddd;
        color: black;
    }

    .navbar a.active {
        background-color: #4CAF50;
        color: white;
    }
</style>
</head>
<body>

<!-- Navigation Bar -->
<div class="navbar">
  <a class="active" href="Home.jsp">Home</a>
  <a href="EmployeeForm.jsp">Insert</a>
  <a href="delete_by_id.jsp">Delete</a>
  <a href="fetchbyid.jsp">Fetch BY ID</a>
</div>

<h2>Get-All Details</h2>
<form action="fetchAll">
    <input type="submit" value="Click-Me">
</form>

</body>
</html>
