<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ex05_613480111"; 

// สร้างการเชื่อมต่อ
$conn = new mysqli($servername, $username, $password, $dbname);

// ตรวจสอบการเชื่อมต่อ
if ($conn->connect_error) {
    die("การเชื่อมต่อล้มเหลว: " . $conn->connect_error);
}

// ตั้งค่าภาษาไทย
$conn->set_charset("utf8");
?>
