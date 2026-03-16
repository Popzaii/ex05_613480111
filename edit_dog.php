<?php 
include 'connect.php';
$id = $_GET['id'];
$sql = "SELECT * FROM dog_profiles WHERE dog_id = $id";
$result = $conn->query($sql);
$row = $result->fetch_assoc();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['pet_name'];
    $breed = $_POST['breed_group'];
    
    $update_sql = "UPDATE dog_profiles SET pet_name='$name', breed_group='$breed' WHERE dog_id=$id";
    if ($conn->query($update_sql) === TRUE) {
        header("Location: index.php");
    }
}
?>
<!DOCTYPE html>
<html lang="th"><head><meta charset="UTF-8"><link href="https://cdn.jsdelivr.net" rel="stylesheet"></head>
<body class="container py-5">
    <div class="card mx-auto shadow" style="max-width: 400px;">
        <div class="card-body">
            <h4>แก้ไขข้อมูล ID: <?php echo $id; ?></h4>
            <form method="post">
                <div class="mb-3"><label>ชื่อสุนัข:</label><input type="text" name="pet_name" value="<?php echo $row['pet_name']; ?>" class="form-control"></div>
                <div class="mb-3"><label>สายพันธุ์:</label><input type="text" name="breed_group" value="<?php echo $row['breed_group']; ?>" class="form-control"></div>
                <button type="submit" class="btn btn-primary w-100">บันทึกการแก้ไข</button>
            </form>
        </div>
    </div>
</body></html>
