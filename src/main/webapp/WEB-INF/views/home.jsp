<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://wallpaperaccess.com/download/4k-minimalist-203545');
            background-size: cover;
            background-position: absolute;
            margin: 0;
            padding: 0;
            color: #fff;
            position: relative; /* Add position relative to body */
        }

        .header {
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent black background */
            padding: 20px;
            text-align: center;
        }

        .welcome-message {
            position: absolute;
            top: 20px;
            right: 20px;
            padding: 10px;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent black background */
            border-radius: 5px;
            cursor: pointer; /* Change cursor to pointer */
        }

        .welcome-message span {
            font-weight: bold;
        }

        .logout-btn {
            display: none; /* Initially hide logout button */
            position: absolute;
            top: 50px; /* Adjust top position */
            right: 20px;
            padding: 10px 20px;
            background-color: black;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Welcome to our website</h1>
</div>

<div class="welcome-message" onclick="toggleLogout()">
    <span>Welcome, <strong>${userName}</strong>!</span>
    <form action="logout" method="post">
        <button type = "submit" class="logout-btn" id="logout-btn">Logout</button>
    </form>
</div>

<script>
    function toggleLogout() {
        var logoutBtn = document.getElementById('logout-btn');
        logoutBtn.style.display = (logoutBtn.style.display === 'block') ? 'none' : 'block';
    }
</script>

</body>
</html>
