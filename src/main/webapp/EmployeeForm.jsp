<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Form</title>
<style>
    /* Define CSS styles */
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
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
        transition: background-color 0.3s, color 0.3s;
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
    form {
        margin: 20px auto;
        padding: 20px;
        width: 300px;
        background: linear-gradient(rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0.1)); /* Glass gradient background */
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        backdrop-filter: blur(10px); /* Apply blur effect to the background */
        transition: box-shadow 0.3s, background-color 0.3s; /* Add transition for background color */
    }
    form:hover {
        background: linear-gradient(rgba(255, 255, 255, 0.7), rgba(255, 255, 255, 0.3)); /* Lighter gradient on hover */
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2); /* Adjust shadow on hover */
    }
    input[type="text"] {
        width: calc(100% - 22px); /* Adjusting for padding and border */
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        transition: border-color 0.3s;
    }
    input[type="text"]:focus {
        border-color: #007bff; /* Blue border color when focused */
    }
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #007bff; /* Blue submit button */
        border: none;
        color: #fff;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    input[type="submit"]:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }
</style>
</head>
<body>

<div class="navbar">
  <a class="active" href="Home.jsp">Home</a>
  <a href="EmployeeForm.jsp">Insert</a>
  <a href="delete_by_id.jsp">Delete</a>
  <a href="fetchbyid.jsp">Fetch BY ID</a>
  <a href="getAll.jsp">Get All</a>
</div>

<h2>Insert Employee Details</h2>

<form action="employee" method="post">
First Name: <input type="text" id="Fname" name="Fname"><br>
Last Name:  <input type="text" id="Lname" name="Lname"><br>
Salary :    <input type="text" id="salary" name="salary"><br>
Age:        <input type="text" id="age" name="age"><br>

<input type="submit" value="Submit">
</form>

</body>
</html>
