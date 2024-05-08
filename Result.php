<?php


$conn = new mysqli("localhost","root","","school_management_system");


if ($conn->connect_error) {
    die("Connection failed: ". $conn->connect_error);
}


if (isset($_POST['search'])) {
    $student_id = $_POST['student_id'];

    
    $query = "SELECT * FROM Result WHERE Result_id = '$student_id'";
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        // Display result
        while ($row = $result->fetch_assoc()) {
            $result_id = $row['Result_id'];
            $result_value = $row['Result'];
            $position = $row['Position'];
            $total_mark = $row['TotalMark'];

            // Query to search for student information
            $query = "SELECT * FROM Student WHERE Roll = '$student_id'";
            $student_result = $conn->query($query);

            if ($student_result->num_rows > 0) {
                // Display student information
                while ($student_row = $student_result->fetch_assoc()) {
                    $name = $student_row['Name'];
                    $email = $student_row['Email'];
                    $address = $student_row['Address'];
                    $gender = $student_row['Gender'];

                    // echo "<h2>Result for Student ID: $student_id</h2>";
                    // echo "<p>Name: $name</p>";
                    // echo "<p>Email: $email</p>";
                    // echo "<p>Address: $address</p>";
                    // echo "<p>Gender: $gender</p>";
                    // echo "<p>Result: $result_value</p>";
                    // echo "<p>Position: $position</p>";
                    // echo "<p>Total Mark: $total_mark</p>";
                }
            } else {
                echo "<p>No student information found for Student ID: $student_id</p>";
            }
        }
    } else {
        echo "<p>No result found for Student ID: $student_id</p>";
    }
}

// Close connection
$conn->close();
?>

<!-- HTML and CSS design -->
<html>
<head>
    <title>Search Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: rgb(200, 200, 100);
        }
       .container {
            width: 80%;
            margin: 40px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color:  #77d2c0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Search Result</h1>
        <form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post">
            <label for="student_id">Student ID:</label>
            <input type="text" id="student_id" name="student_id" required>
            <button type="submit" name="search">Search</button>
        </form>
        <?php if (isset($result_id)) {?>
            <div class="result">
                <h2>Result for Student ID: <?php echo $student_id;?></h2>
                <p>Name: <?php echo $name;?></p>
                <p>Email: <?php echo $email;?></p>
                <p>Address: <?php echo $address;?></p>
                <p>Gender: <?php echo $gender;?></p>
                <p>Result: <?php echo $result_value;?></p>
                <p>Position: <?php echo $position;?></p>
                <p>Total Mark: <?php echo $total_mark;?></p>
            </div>
        <?php }?>
    </div>
</body>
</html>