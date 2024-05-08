<!DOCTYPE html>
<html>
<head>
    <title>Student Profile</title>
</head>
<body>
    <h1>Student Information</h1>
    <table border="1">
        <tr>
            <th>Student ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
            <th>Gender</th>
        </tr>
        <?php
        // Connect to the database
        $conn = mysqli_connect("localhost", "sohan", "1234", "sohan");
        // Get the student data from the database
       // $student_id = $_GET['student_id'];
        $student_data = mysqli_query($conn, "SELECT * FROM student ");//WHERE student_id = $student_id");
        while ($row = mysqli_fetch_assoc($student_data)) {
            echo "<tr>";
            echo "<td>" . $row['student_id'] . "</td>";
            echo "<td>" . $row['Name'] . "</td>";
            echo "<td>" . $row['Email'] . "</td>";
            echo "<td>" . $row['address'] . "</td>";
            echo "<td>" . $row['Gender'] . "</td>";
            echo "</tr>";
        }
        ?>
    </table>

    <h1>Student Course Section</h1>
    <table border="1">
        <tr>
            <th>Course ID</th>
            <th>Course Name</th>
        </tr>
        <?php
        // Get the student course data from the database
        $course_data = mysqli_query($conn, "SELECT * FROM Course"); //WHERE student_id = $student_id");
        while ($row = mysqli_fetch_assoc($course_data)) {
            echo "<tr>";
            echo "<td>" . $row['course_id'] . "</td>";
            echo "<td>" . $row['course_name'] . "</td>";
            echo "</tr>";
        }
        ?>
    </table>

    <h1>Message</h1>
    <p>This is where you can display a message to the student.</p>

    <h1>Attendance</h1>
    <table border="1">
        <tr>
            <th>Attendance ID</th>
            <th>Date</th>
            <th>Status</th>
        </tr>
        <?php
        // Get the student attendance data from the database
        $attendance_data = mysqli_query($conn, "SELECT * FROM Attendence ");//WHERE student_id = $student_id");
        while ($row = mysqli_fetch_assoc($attendance_data)) {
            echo "<tr>";
            echo "<td>" . $row['Att_id'] . "</td>";
            echo "<td>" . $row['Date'] . "</td>";
            echo "<td>" . $row['Status'] . "</td>";
            echo "</tr>";
        }
        ?>
    </table>
</body>
</html>