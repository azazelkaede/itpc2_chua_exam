<?php

$conn = mysqli_connect("localhost", "root", "tyangge");

if (!$conn){
    die("connection failed");
}
$mobile = $_POST['mobile'];
$password = $_POST['password'];

$sql = "SELECT * FROM customers WHERE mobile='$mobile' AND password='$password'";
$result = $conn->query($sql);

if ($result && mysqli_num_rows($result) > 0) {
    echo "login successful WELCOME!";
    exit();
}else {
echo "invalid mobile or password";
}
mysqli_close($conn);
?>



    





