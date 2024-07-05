<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch Employee by ID</title>
<style>
    /* Define CSS styles */
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    .navbar {
        overflow: hidden;
        background-color: #333;
    }
    /* Style the links inside the navigation bar */
    .navbar a {
        float: left;
        display: block;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
    }
    /* Change color on hover */
    .navbar a:hover {
        background-color: #ddd;
        color: black;
    }
    /* Add an active class to highlight the current page */
    .navbar a.active {
        background-color: #4CAF50;
        color: white;
    }
    /* Additional styles for the content */
    .content {
        margin-top: 50px; /* Adjust according to the height of your navbar */
        padding: 20px;
    }
</style>
</head>
<body>

<!-- Navigation Bar -->
<div class="navbar">
  <a href="EmployeeForm.jsp">Insert</a>
  <a href="delete_by_id.jsp">Delete</a>
  <a href="#" class="active">Fetch BY ID</a>
  <a href="getAll.jsp">Get All</a>
</div>

<!-- Content -->
<div class="content">
    <h2>Fetch Employee by ID</h2>
    <!-- Your fetch by ID form goes here -->
    <form action="fetchbyid">
        <input id="id" name="id" type="text" placeholder="Enter Employee ID">
        <input type="submit" value="Submit">
    </form>
</div>

</body>
</html>
