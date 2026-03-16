<?php include 'connect.php'; ?>
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <title>จัดการข้อมูลสุนัข - ex05</title>
    <link href="https://cdn.jsdelivr.net" rel="stylesheet">
</head>
<body class="container py-5">
    <h2 class="mb-4 text-primary">รายชื่อสุนัขในระบบ</h2>
    <table class="table table-hover table-bordered shadow-sm">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>ชื่อสุนัข</th>
                <th>สายพันธุ์</th>
                <th>น้ำหนัก (lb)</th>
                <th>จัดการ</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $sql = "SELECT * FROM dog_profiles";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "<tr>
                            <td>{$row['dog_id']}</td>
                            <td>{$row['pet_name']}</td>
                            <td>{$row['breed_group']}</td>
                            <td>{$row['weight_lb']}</td>
                            <td>
                                <a href='edit_dog.php?id={$row['dog_id']}' class='btn btn-warning btn-sm'>แก้ไข</a>
                                <a href='delete_dog.php?id={$row['dog_id']}' class='btn btn-danger btn-sm' onclick='return confirm(\"ยืนยันการลบ?\")'>ลบ</a>
                            </td>
                          </tr>";
                }
            }
            ?>
        </tbody>
    </table>
</body>
</html>
