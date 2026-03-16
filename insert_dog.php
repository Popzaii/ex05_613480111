<?php
include 'connect.php'; // ดึงไฟล์เชื่อมต่อฐานข้อมูลมาใช้

$message = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // รับค่าจากฟอร์ม
    $p_name = $_POST['pet_name'];
    $p_breed = $_POST['breed_group'];
    $p_weight = $_POST['weight_lb'];
    $p_microchip = $_POST['microchip_id'];

    // คำสั่ง SQL สำหรับเพิ่มข้อมูล (อ้างอิงฟิลด์จากตาราง dog_profiles)
    $sql = "INSERT INTO dog_profiles (pet_name, breed_group, weight_lb, microchip_id) 
            VALUES ('$p_name', '$p_breed', '$p_weight', '$p_microchip')";

    if ($conn->query($sql) === TRUE) {
        $message = "<div class='alert alert-success'>เพิ่มข้อมูลสุนัขเรียบร้อยแล้ว!</div>";
    } else {
        $message = "<div class='alert alert-danger'>ข้อผิดพลาด: " . $sql . "<br>" . $conn->error . "</div>";
    }
}
?>

<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <title>เพิ่มข้อมูลสุนัข - ex05</title>
    <link href="https://cdn.jsdelivr.net" rel="stylesheet">
</head>
<body class="container py-5">
    <div class="card mx-auto" style="max-width: 500px;">
        <div class="card-body">
            <h4 class="card-title mb-4">ฟอร์มเพิ่มข้อมูลสุนัข</h4>
            <?php echo $message; ?>
            <form method="post" action="">
                <div class="mb-3">
                    <label>ชื่อสุนัข:</label>
                    <input type="text" name="pet_name" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label>กลุ่มสายพันธุ์:</label>
                    <input type="text" name="breed_group" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label>น้ำหนัก (ปอนด์):</label>
                    <input type="number" step="0.01" name="weight_lb" class="form-control">
                </div>
                <div class="mb-3">
                    <label>เลขไมโครชิพ:</label>
                    <input type="text" name="microchip_id" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-primary w-100">บันทึกข้อมูล</button>
            </form>
        </div>
    </div>
</body>
</html>
