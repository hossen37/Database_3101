<!DOCTYPE html>
<html>
<head>
	<title>Message List</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color:#92a8d1;
		}
		
		h2 {
			color: #333;
			margin-bottom: 10px;
		}
		
		p {
			font-size: 16px;
			margin-bottom: 20px;
		}
	</style>
</head>
<body>
	<?php
	// Connect to the database
	
	$conn = mysqli_connect("localhost","root","","school_management_system");
	if (!$conn) {
		die('Connection failed: ' . mysqli_connect_error());
	}

	// Select the data from the database
	$sql = 'SELECT * FROM Message';
	$result = mysqli_query($conn, $sql);

	// Display the data in an h2 tag for the date and a p tag for the content
	while ($row = mysqli_fetch_assoc($result)) {
	?>
		<h2><?php echo $row['Date']; ?></h2>
		<p><?php echo $row['Content']; ?></p>
	<?php
	}

	// Close the database connection
	mysqli_close($conn);
	?>
</body>
</html>