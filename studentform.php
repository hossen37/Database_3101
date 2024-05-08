<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Form</title>
    <style>

        *{
            background-color:#7EB8EC;
        }
        .field input[type="text"],

        .btn {
            display: block;
            width: 100%;
            padding: 8px;
            margin-top: 5px;
        }

        .field {
            margin-bottom: 10px;
        }

        .field label {
            margin-bottom: 5px;
            font-weight: bold;
        }

        form {
            width: 300px;
            margin: auto;
            border: 1px solid #ccc;
            padding: 20px;
            box-shadow: 0 0 10px #ccc;
        }
        h1{
            text-align: center;
            

        }
      
    </style>
</head>
<body>
    <header>
        <div>
        <h1>Student Form</h1>
        </div>
       
    </header>
    <!-- Display the form for data insertion -->
    <form action="insert_data.php" method="post">
        <div class="field input">
            <label for="Roll">Roll</label>
            <input type="text" name="Roll" id="Roll" autocomplete="off" required>
        </div>
        <div class="field input">
            <label for="Name">Name</label>
            <input type="text" name="Name" id="Name" autocomplete="off" required>
        </div>
        <div class="field input">
            <label for="Email">Email</label>
            <input type="text" name="Email" id="Email" autocomplete="off" required>
        </div>
        <div class="field input">
            <label for="Address">Address</label>
            <input type="text" name="Address" id="Address" autocomplete="off" required>
        </div>
        <div class="field input">
            <label for="Gender">Gender</label>
            <input type="text" name="Gender" id="Gender" autocomplete="off" required>
        </div>
        <div class="field">
            <input type="submit" class="btn" name="submit" value="Submit Data">
        </div>
    </form>
</body>
</html>
