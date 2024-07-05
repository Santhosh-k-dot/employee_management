<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    /* Import a custom anime-inspired CSS file */
    @import url('https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css');

    /* Additional styling for the form */
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f5f5f5;
        background-image: url('https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569_960_720.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    h2 {
        color: #fff;
        text-align: center;
        margin-top: 20px;
        text-transform: uppercase;
        font-size: 24px; /* Reduced font size */
        letter-spacing: 2px;
        text-shadow: 2px 2px 2px rgba(0, 0, 0, 0.5);
        margin-bottom: 20px; /* Added margin */
    }

    form {
        background-color: rgba(255, 255, 255, 0.9);
        padding: 20px; /* Reduced padding */
        border-radius: 10px;
        width: 250px; /* Reduced width */
        box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.2);
        transition: transform 0.3s ease;
    }

    /* Styling for form elements */
    label {
        display: block;
        margin-bottom: 5px; /* Reduced margin */
        color: #333;
        font-size: 14px; /* Reduced font size */
        font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
        width: calc(100% - 10px); /* Reduced input width */
        padding: 8px; /* Reduced padding */
        margin-bottom: 10px; /* Reduced margin */
        border: none;
        border-radius: 6px;
        box-sizing: border-box;
        background-color: #f9f9f9;
        font-size: 12px; /* Reduced font size */
    }

    input[type="submit"], button {
        background-color: #ff6b6b;
        color: white;
        padding: 10px 15px; /* Reduced padding */
        border: none;
        border-radius: 6px;
        cursor: pointer;
        width: 48%; /* Adjusted width */
        font-size: 16px; /* Reduced font size */
        transition: background-color 0.3s ease;
        margin-right: 4px; /* Added margin-right for spacing */
        box-sizing: border-box;
    }

    input[type="submit"]:hover, button:hover {
        background-color: #e74c3c;
    }

    /* Style for the login button */
    .login-button {
        background-color: #3498db;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        width: 100%;
        font-size: 16px;
        transition: background-color 0.3s ease;
        margin-top: 10px;
        box-sizing: border-box;
    }

    .login-button:hover {
        background-color: #2980b9;
    }
</style>
</head>
<body>

<div style="width: 250px;"> <!-- Enclosed in a div with fixed width -->
    <h2><i class="fas fa-user-plus fa-icon"></i>Sign Up</h2>

    <form action="signup" method="post">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" required>
        
        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" required>
        
        <label for="email">Email Id:</label>
        <input type="email" id="email" name="email" required>
        
        <label for="phoneNumber">Phone Number:</label>
        <input type="text" id="phoneNumber" name="phoneNumber" required>
        
        <label for="password">Create Password:</label>
        <input type="password" id="password" name="password" required>
        
        <label for="confirmPassword">Confirm Password:</label>
        <input type="password" id="confirmPassword" name="confirmPassword" required>
        
        <input type="submit" value="Sign Up">
        <a href="login.jsp" class="login-button">Login</a>
    </form>

</div>

</body>
</html>
