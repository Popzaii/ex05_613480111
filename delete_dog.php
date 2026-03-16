<?php
include 'connect.php';
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "DELETE FROM dog_profiles WHERE dog_id = $id";
    if ($conn->query($sql) === TRUE) {
        header("Location: index.php");
    }
}
?>
