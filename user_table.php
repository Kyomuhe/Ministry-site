<?php
// Establish a database connection
$db_host = 'localhost'; 
$db_name = 'finally'; 
$db_user = 'root'; 
$db_pass = ''; 

// Create connection
$conn = new mysqli($db_host, $db_user, $db_pass, $db_name);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Initializing  search variables
$search = isset($_GET['search']) ? $_GET['search'] : '';

$sql = "SELECT u.User_ID, u.First_Name, u.Last_Name, u.Email, d.Designation_Name, dept.Department_Name
        FROM Users u
        INNER JOIN Designations d ON u.Designation_ID = d.Designation_ID
        INNER JOIN Departments dept ON u.Department_ID = dept.Department_ID
        WHERE u.First_Name LIKE '%$search%' OR u.Last_Name LIKE '%$search%' OR u.Email LIKE '%$search%'";

$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Users</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #FBFBFD;
            color: #000;
        }
        
        th, td {
            text-align: center;
        }
        .edit-btn, .delete-btn {
            color: #000;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Users</h2>

        <!-- Search form -->
        <form class="form-inline mb-3" method="get" action="">
            <input class="form-control mr-sm-2" type="search" name="search" placeholder="Name or email" aria-label="Search" value="<?= htmlspecialchars($search) ?>">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            <a class="btn btn-outline-secondary my-2 my-sm-0 ml-2" href="?search=">Reset</a>
        </form>

        <?php if ($result->num_rows > 0): ?>
            <table class="table table-striped table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Designation</th>
                        <th>Department</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php while($row = $result->fetch_assoc()): ?>
                        <tr>
                            <td><?= $row["First_Name"] ?></td>
                            <td><?= $row["Last_Name"] ?></td>
                            <td><?= $row["Email"] ?></td>
                            <td><?= $row["Designation_Name"] ?></td>
                            <td><?= $row["Department_Name"] ?></td>
                            <td>
                                <a class="btn btn-danger btn-sm" href="delete_user.php?id=<?= $row["User_ID"] ?>">Delete</a>
                                <a href="edit_user.php?id=<?= $row["User_ID"] ?>" class="btn btn-success">Edit</a>
                            </td>
                        </tr>
                    <?php endwhile; ?>
                </tbody>
            </table>
        <?php else: ?>
            <p>No users found</p>
        <?php endif; ?>
    </div>
</body>
</html>

<?php
// Close database connection
$conn->close();
?>
