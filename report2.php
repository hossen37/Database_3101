<?php


$mysqli = new mysqli("localhost","root","","school_management_system");

// Check connection
if ($mysqli->connect_error) {
    die("Connection failed: ". $mysqli->connect_error);
}

// Query to retrieve data from Student table
$query_student = "SELECT * FROM Student";
$result_student = $mysqli->query($query_student);

// Query to retrieve data from Course table
$query_course = "SELECT * FROM Course";
$result_course = $mysqli->query($query_course);

// Query to retrieve data from Exam table
$query_exam = "SELECT * FROM Exam";
$result_exam = $mysqli->query($query_exam);

?>

<!DOCTYPE html>
<html>
<head>
    <title>Report</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: ;
        }
      .section {
            margin-bottom: 20px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        .student-section {
            background-color: #f2f2f2;
        }
        .course-section {
            background-color: #e0e0e0;
        }
        .exam-section {
            background-color: #d3d3d3;
        }
       
    </style>
</head>
<body>
    <h1 class="t24">Student Report</h1>
    <div class="section student-section">
        <h2>Student Table</h2>
        <table>
            <tr>
                <th>Roll</th>
                <th>Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Gender</th>
            </tr>
            <?php while ($row = $result_student->fetch_assoc()) {?>
            <tr>
                <td><?php echo $row["Roll"];?></td>
                <td><?php echo $row["Name"];?></td>
                <td><?php echo $row["Email"];?></td>
                <td><?php echo $row["Address"];?></td>
                <td><?php echo $row["Gender"];?></td>
            </tr>
            <?php }?>
        </table>
    </div>
    <div class="section course-section">
        <h2>Course Table</h2>
        <table>
            <tr>
                <th>Course ID</th>
                <th>Course Name</th>
            </tr>
            <?php while ($row = $result_course->fetch_assoc()) {?>
            <tr>
                <td><?php echo $row["Course_id"];?></td>
                <td><?php echo $row["C_Name"];?></td>
            </tr>
            <?php }?>
        </table>
    </div>
    <div class="section exam-section">
        <h2>Exam Table</h2>
        <table>
            <tr>
                <th>Exam ID</th>
                <th>Course ID</th>
                <th>Exam Name</th>
                <th>Exam Mark</th>
                <th>Exam Time</th>
            </tr>
            <?php while ($row = $result_exam->fetch_assoc()) {?>
            <tr>
                <td><?php echo $row["E_id"];?></td>
                <td><?php echo $row["Course_id"];?></td>
                <td><?php echo $row["E_name"];?></td>
                <td><?php echo $row["E_mark"];?></td>
                <td><?php echo $row["E_time"];?></td>
            </tr>
            <?php }?>
        </table>
    </div>
</body>
</html>