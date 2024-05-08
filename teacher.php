<!DOCTYPE html>
<html>
<head>
    <title>Teacher Form</title>
    <style>
        body{
            background-color: #73B0E7 ;

        }
        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f2f2f2;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .form_group {
            margin-bottom: 10px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="email"], input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        table {
            width: 90%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        /* Centering table on page more effectively */
        .table-container {
            width: 100%;
            overflow-x: auto;
            display: flex;
            justify-content: center;
        }

    </style>
</head>
<body>
    <?php
    
    // Create connection
    $conn = new mysqli("localhost","root","","school_management_system");

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Insert data into teacher table
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $sql = "INSERT INTO teacher (T_id, Name, Email, Salary, Address) VALUES ('$_POST[t_id]', '$_POST[name]', '$_POST[email]', '$_POST[salary]', '$_POST[address]')";

        if ($conn->query($sql) === TRUE) {
            echo "New teacher record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }

    // Fetch data from teacher table
    $sql = "SELECT * FROM teacher";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<table><tr><th>T_id</th><th>Name</th><th>Email</th><th>Salary</th><th>Address</th></tr>";
      
    } else {
        echo "0 results";
    }

    // Close connection
    $conn->close();
    ?>
    <div class="container">
        <h2>Add Teacher</h2>
        <form action="teacher.php" method="post">
            <div class="form_group">
                <label for="t_id">T_id:</label>
                <input type="text" name="t_id" id="t_id" required>
            </div>
            <div class="form_group">
                <label for="name">Name:</label>
                <input type="text" name="name" id="name" required>
            </div>
            <div class="form_group">
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" required>
            </div>
            <div class="form_group">
                <label for="salary">Salary:</label>
                <input type="number" name="salary" id="salary" required>
            </div>
            <div class="form_group">
                <label for="address">Address:</label>
                <input type="text" name="address" id="address" required>
            </div>
            <input type="submit" value="Submit">
        </form>
    </div>

    <?php
    // Output data of each row
        while($row = $result->fetch_assoc()) {
            echo "<tr><td>" .$row["T_id"]. "</td><td>" . $row["Name"] . "</td><td>"
                . $row["Email"] . "</td><td>" . $row["Salary"] . "</td><td>"
                . $row["Address"] . "</td></tr>";
        }
        echo "</table>";
        ?>
</body>
</html>     