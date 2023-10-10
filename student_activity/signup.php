<?php
require 'connect.php';
if (isset($_POST['submit'])) {
  $studentID =$_POST['studentID'];
  $studentName =$_POST['studentName'];
  $majorID =$_POST['majorID'];
  $password =password_hash($_POST['password'],PASSWORD_DEFAULT);
  $sql ="insert into student(studentID,studentName,Major_ID,password)
   values('{$studentID}','{$studentName}','{$majorID}','{$password }')";
  $conn->query($sql);
}
?>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Student Activity - signup</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
      html,
      body {
        height: 100%;
      }

      .form-signup {
        max-width: 330px;
        padding: 1rem;
      }

      .form-signup .form-floating:focus-within {
        z-index: 2;
      }

      .form-signup input[type="text"] {
        margin-bottom: -1px;
        border-bottom-right-radius: 0;
        border-bottom-left-radius: 0;
      }

      .form-signup input[type="password"] {
        margin-bottom: 10px;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
      }
    </style>
    <script>
        function validate() {
            let p1 =document.querySelector('#password').value;
            let p2 =document.querySelector('#re-password').value;
            if (p1 !=p2) {
              alert('passwords are not identical.');
              event.preventDefault();
            }
        }
    </script>
  </head>
  <body class="d-flex align-items-center py-4 bg-body-tertiary">
    <main class="form-signup w-100 m-auto">
      <form action="signup.php" method="post" onsubmit="validate()">
        <img class="mb-4" src="image/_ArtistLogo.png" alt="" width="300" height="300">
        <h1 class="h3 mb-3 fw-normal">Please sign up🌷</h1>
    
        <div class="form-floating mb-4">
          <input required name="studentID" type="text" class="form-control" id="Student ID" placeholder="Student ID">
          <label for="floatingEmail">Student ID🌷</label>
        </div>

        <div class="form-floating mb-4">
          <input required  name="studentName" type="text" class="form-control" id="Student Name" placeholder="Email address">
          <label for="Student Name">Student Name🌷</label>
        </div>

        <div class="form-floating mb-4">
          <select name="majorID" class="form-select" id="major">
<?php
$sql= 'select * from major order by faculty';
$result = $conn->query($sql);
while ($row = $result->fetch_assoc()){
    echo "<option value='{$row['Major_ID']}'>
          {$row['faculty']}-{$row['MajorName']}
          </option>";
          }
          $conn->close();
          ?>
        </select>
          <label for="Major_ID">Major_ID🌷</label>
        </div>

        <div class="form-floating">
          <input required name ="password" type="password" class="form-control" id="password" placeholder="Password">
          <label for="password">Password🌷</label>
        </div>

        <div class="form-floating">
          <input required type="password" class="form-control" id="re-password" placeholder="Password">
          <label for="Retype_Password">Retype_Password🌷</label>
        </div>

        <button name= "submit" class="btn btn-primary w-100 py-2" type="submit">sign up</button>
        <!-- <p class="mt-5 mb-3 text-body-secondary">© 2017–2023</p> -->
      </form>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>