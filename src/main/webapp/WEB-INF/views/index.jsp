<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url(https://wallpaperaccess.com/download/4k-minimalist-203545); 
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            text-align: center;
            z-index: 1; /* Ensures the links appear above the background image */
        }

        .link {
            display: inline-block;
            padding: 10px 20px;
            background-color: #ffffff;
            color: #6dd7f1;
            text-decoration: none;
            border-radius: 5px;
            margin: 10px;
            transition: background-color 0.3s;
        }

        .link:hover {
            background-color: #070707;
        }
    </style>
</head>
<body>
    <div class="container">
        <a href="Login" class="link">Login</a>
        <a href="Register" class="link">Register</a>
    </div>
</body>
</html>