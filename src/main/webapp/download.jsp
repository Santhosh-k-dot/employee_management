<%@page import="java.util.List"%>
<%@page import="employeeManagement1.form.employee.model.employee" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Download Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    h2 {
        color: #333;
    }

    table {
        border-collapse: collapse;
        width: 100%;
    }

    th, td {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }

    th {
        background-color: #f2f2f2;
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
  <a class="active" href="">Home</a>
  <a href="EmployeeForm.jsp">Insert</a>
  <a href="delete_by_id.jsp">Delete</a>
  <a href="fetchbyid.jsp">Fetch BY ID</a>
  </div>

<h2>Employee Information</h2>
<%
    List<employee> employees = (List<employee>) request.getAttribute("objects");
%>
<table>
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Salary</th>
        <th>Age</th>
    </tr>
    <% for(employee emp : employees) { %>
    <tr>
        <td><%= emp.getId() %></td>
        <td><%= emp.getFname() %></td>
        <td><%= emp.getLname() %></td>
        <td><%= emp.getSalary() %></td>
        <td><%= emp.getAge() %></td>
    </tr>
    <% } %>
</table>

</body>
</html>
