<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>
        body {
            background-image: url(https://wallpaperaccess.com/download/4k-minimalist-203545); 
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            text-align: center;
        }

        .container1 {
            position: absolute;
            top: 20px;
            left: 20px;
        }

        .container1 .link {
            margin-right: 10px;
            color: #6dd7f1;
            text-decoration: none;
        }

        .container1 .link:last-child {
            margin-right: 0;
        }

        .input-group {
            margin-bottom: 20px;
            position: relative;
        }

        .input-group label {
            color: #6dd7f1;
            font-weight: bold;
            position: absolute;
            top: -20px;
            left: 0;
        }

        .input-group input {
            padding: 10px;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            outline: none;
        }

        .btn {
            padding: 10px 20px;
            background-color: #808080; /* Change button color to grey */
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #666666; /* Darken button color on hover */
        }
    </style>
</head>
<body>
<div class="container1">
    <a href="login" class="link">Login</a>
    <a href="Register" class="link">Register</a>
</div>
<div class="container">
    <form action="saveReg" method="post">
        <div class="input-group">
            <label for="name">Name *</label><input type="text" id="name" name="name" placeholder="Name">
        </div>
        <div class="input-group">
            <label for="email">Email *</label><input type="text" id="email" name="email" placeholder="**********@gmail.com">
        </div>
		<div class="input-group">
            <label for="phone">Phone *</label><input type="number" id="phone" name="phone" placeholder="0000000000">
        </div>
        <div class="input-group">
            <label for="password">Password *</label><input type="password" id="password" name="password" placeholder="**********">
        </div>
		<div class="input-group">
            <label for="confirmpassword">Confirm Password *</label><input type="text" id="confirmpassword" name="confirmpassword" placeholder="password">
        </div>
        <button type="submit" class="btn">Register</button>
    </form>
</div>
</body>
</html>
