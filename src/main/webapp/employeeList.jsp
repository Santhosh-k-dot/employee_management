<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
  /* Style the navigation bar */
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
</style>
</head>
<body>

<h2>Employee Management</h2>
<div class="navbar">
  <a class="active" href="">Home</a>
  <a href="EmployeeForm.jsp">Insert</a>
  <a href="delete_by_id.jsp">Delete</a>
  <a href="fetchbyid.jsp">Fetch BY ID</a>
  <a href="getAll.jsp">Get All</a>
  
</div>

</body>
</html>
