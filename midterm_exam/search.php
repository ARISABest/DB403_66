<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Search product by category</title>
</head>
<body>
  <header>
    <form action="product.php" method="get">
      <label for="category">
        <select name="category" id="category">
          <!-- add options hear ex.
          <option value="1">Beverages</option>
          -->
        </select>
      </label>
      <input type="submit" value="Search" name="submit">
    </form>
  </header>
</body>
</html>
<?php
    // Create connection
    $connect = new mysqli('localhost', 'root', '', 'demo');

    // Check Connection

    if ($connect->connect_error) {
        die("Something wrong.: " . $connect->connect_error);
      }

    $sql = "SELECT * FROM menu";
    $result = $connect->query($sql);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coffee Menu</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>


<div>
            <code>
            SELECT ProductName,UnitsInStock from products where CategoryID=1;
            </code>
            <br>
            <table>
            <tr>
                <th>ProductName</th>
            </tr>
    <?php
        $sql = "SELECT ProductName,UnitPrice,QuantityPerUnit 
        FROM products 
        WHERE QuantityPerUnit LIKE '%Box%' ORDER BY UnitPrice DESC LIMIT 5;";
        $result = $conn->query($sql);
        while ($row = $result->fetch_assoC()) {
            echo "<tr>
                    <td>{$row['ProductName']}</td>
                  </tr>";
        }

    ?>
            </table> 
        </li>
        <li>