<?php
session_start();
include("php/databaseConnect.php");

// Query to fetch student data from the database
$query = "SELECT * FROM student";

// Execute the query
$result = mysqli_query($con, $query);

echo "<h1>Student Report Info</h1>";

// Check if there are any rows returned
if (mysqli_num_rows($result) > 0) {
    echo'<head>
    <style>
    *{
        background-color: #92a8d1;
    }
    h1{
        text-align:center;
        margin-top:200px
    }
    table
    {
        margin-left: auto;
        margin-right: auto;
   

    }
    .btn{
        text-align:center
    }

    </style>
    
    </head>';
    echo "<table border='2'>
            <tr>
                <th>Roll</th>
                <th>Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Gender</th>
            </tr>";
    
    // Loop through the rows and display data in table rows
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr>";
        echo "<td>" . $row['Roll'] . "</td>";
        echo "<td>" . $row['Name'] . "</td>";
        echo "<td>" . $row['Email'] . "</td>";
        echo "<td>" . $row['Address'] . "</td>";
        echo "<td>" . $row['Gender'] . "</td>";
        echo "</tr>";
    }

    echo "</table>";

    //echo"<a href='home.php'> <button class='btn'>Back Home</button>";

} else {
    echo "No data found.";
}

mysqli_close($con);
?>