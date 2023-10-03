    <?php
    $conn = new mysqli('db403-mysql', 'root', 'P@ssw0rd', 'students_activity');
    if ($conn->connect_error) {
        echo $conn->commect_error;
        die();
    }
    ?>
 