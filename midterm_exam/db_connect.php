<?php
$servername = "db403-mysql";
$username = "root";
$password = "123";
$dbconn ="northwind"

$conn = new mysqli($servername, $username, $password,$dbconn);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>
้<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
</body>
</html>