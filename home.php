<?php 
session_start();
if (!isset($_SESSION['valid'])) {
    header('Location: index.php');
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>School Management System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
            font-family: Arial, sans-serif;
        }

        body {
            display: flex;
            min-height: 100vh;
            margin: 0;
        }

        .navbar {
            background-color: #75E809;
            color: white;
            width: 250px;
            height: 100vh;
            position: fixed;
            overflow: auto;
            display: flex;
            flex-direction: column;
        }

        .navbar h1 {
            padding: 20px;
            margin-bottom: 20px;
            font-size: 20px;
            text-align: center;
        }

        .navbar ul {
            list-style: none;
        }

        .navbar ul li a {
            display: block;
            padding: 10px 20px;
            color: white;
            text-decoration: none;
            font-size: 16px;
        }

        .navbar ul li a:hover {
            background-color: #5ca08e;
        }

        .user-info {
            margin-top: auto;
            padding: 20px;
            text-align: center;
        }

        main {
            flex-grow: 1;
            margin-left: 250px;
            background: url('school.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .content {
            text-align: center;
            color: white;
            width: 100%;
            background-color: rgba(0, 0, 0, 0.5); 
            padding: 20px;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h1>School Management System</h1>
        <nav>
            <ul>
                <li><a href="#">Dashboard</a></li>
                <li><a href="teacher.php">Teacher</a></li>
                <li><a href="studentform.php">Students Form</a></li>
                <li><a href="notice.php">Notice</a></li>
                <li><a href="#">Courses</a></li>
                <li><a href="Result.php">Result</a></li>
                <li><a href="report2.php">Report</a></li>
                <li><a href="logout.php">Logout</a></li>
            </ul>
        </nav>
        <div class="user-info">
            <p>Welcome, <?php echo $_SESSION['username']; ?>!</p>
        </div>
    </div>
    <main>
        <div class="content">
            <h2>Dashboard</h2>
            <p></p>
        </div>
    </main>
    <footer>
        <p>School Management System © 2024</p>
    </footer>
</body>
</html>
