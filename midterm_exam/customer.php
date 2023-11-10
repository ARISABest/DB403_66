<?php
require 'db_connect.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Customers</title>
</head>
<body>
<?php
$sql ="select CompanyName, ContactName from customers where Country='Germany'"
$result = $conn->query($sql);
while($row = $result->fetch_assoc()) {
  echo "<tr>
  <td>Alfreds Futterkiste</td>
  <td>Maria Anders</td>
</tr>"
}
?>
  <!-- Show country in h1. Ex: List of customer in Germany -->
  <h1>List of customer in </h1>
  <table>
    <tr>
      <th>Company name</th>
      <th>Contact name</th>
    </tr>
    <!-- add table rows hear ex.
    <tr>
      <td>Alfreds Futterkiste</td>
      <td>Maria Anders</td>
    </tr>
    -->    
  </table>
</body>
</html>