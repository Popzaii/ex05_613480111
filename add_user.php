<?php
include 'connect.php';
$message = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user = $_POST['username'];
    $pass = password_hash($_POST['password'], PASSWORD_DEFAULT); // เข้ารหัสรหัสผ่านเพื่อความปลอดภัย
    $name = $_POST['fullname'];
    $email = $_POST['email'];

    $sql = "INSERT INTO users (username, password, fullname, email) 
            VALUES ('$user', '$pass', '$name', '$email')";

    if ($conn->query($sql) === TRUE) {
        $message = "<div class='alert alert-success'>เพิ่มผู้ใช้งานสำเร็จ!</div>";
    } else {
        $message = "<div class='alert alert-danger'>ข้อผิดพลาด: " . $conn->error . "</div>";
    }
}
?>

<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <title>เพิ่มผู้ใช้งาน - ex05</title>
    <link href="https://cdn.jsdelivr.net" rel="stylesheet">
</head>
<body class="container py-5">
    <div class="card mx-auto shadow-sm" style="max-width: 450px;">
        <div class="card-body">
            <h4 class="mb-4 text-center">ลงทะเบียนผู้ใช้งานใหม่</h4>
            <?php echo $message; ?>
            <form method="post">
                <div class="mb-3">
                    <label>Username:</label>
                    <input type="text" name="username" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label>Password:</label>
                    <input type="password" name="password" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label>ชื่อ-นามสกุล:</label>
                    <input type="text" name="fullname" class="form-control">
                </div>
                <div class="mb-3">
                    <label>อีเมล:</label>
                    <input type="email" name="email" class="form-control">
                </div>
                <button type="submit" class="btn btn-primary w-100">บันทึกข้อมูล</button>
            </form>
        </div>
    </div>
</body>
</html>
