<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        position: relative; /* Fixed position of entire page */
    }

    .navbar {
        display: grid;
        grid-template-columns: repeat(5, 1fr);
        background-color: #333;
    }

    .navbar a {
        color: #f2f2f2;
        text-align: center;
        padding: 20px;
        text-decoration: none;
        transition: background-color 0.3s ease;
    }

    .navbar a.active {
        background-color: #4CAF50;
    }

    .navbar a:hover {
        background-color: #555;
    }

    .content {
        padding: 20px;
        display: grid;
        gap: 20px;
    }

    h2 {
        color: #333;
        margin: 0;
    }

    p {
        color: #555;
        line-height: 1.5;
    }

    .intro {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .intro h2 {
        margin-bottom: 10px;
    }

    .intro p:last-child {
        margin-bottom: 0;
    }

    .image-container {
        text-align: center;
    }

    .image-container img {
        max-width: 100%;
        height: auto;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .details {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .details h3 {
        color: #333;
        margin-top: 0;
    }

    .details p {
        color: #555;
    }
</style>
</head>
<body>

<!-- Navigation Bar -->
<div class="navbar">
  <a class="active" href="#">Home</a>
  <a href="EmployeeForm.jsp">Insert</a>
  <a href="delete_by_id.jsp">Delete</a>
  <a href="fetchbyid.jsp">Fetch BY ID</a>
  <a href="getAll.jsp">Get All</a>
</div>

<!-- Content -->
<div class="content">
    <div class="intro">
        <h2>Welcome to Employee Management System</h2>
        <p>This system helps you manage your employees efficiently. You can insert, delete, fetch by ID, and get all employees' information easily.</p>
        <p>Use the navigation bar above to navigate through different functionalities.</p>
    </div>

    <div class="image-container" style="max-height: 300px;">
        <img src="https://blogimages.softwaresuggest.com/blog/wp-content/uploads/2018/05/12173744/7-Employee-Management-Strategies-to-Keep-Your-Employees-Satisfied-01.png" alt="Employee Management System Image" style="max-height: 100%; width: auto;">
    </div>

    <div class="details">
        <h3>Key Features</h3>
        <ul>
            <li>Insert new employees into the system.</li>
            <li>Delete employees by their ID.</li>
            <li>Fetch employee details using their ID.</li>
            <li>Retrieve all employee information at once.</li>
        </ul>
        <p>Our system ensures efficient management of your employee data, providing easy access to important information whenever you need it.</p>
    </div>
</div>

</body>
</html>
