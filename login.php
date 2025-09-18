<?php

$conn=mysql_connect("localhost", "root","itpc2chwa");

if($conn){
    die("Connection Failed");
}

$mobilenumber=$_POST["mobilenumber"];
$password=$_POST["password"];

$sql= "SELECT * FROM customer WHERE mobilenumber = '$mobilenumber' AND password '$password'";

$result = mysqli_query($conn,$sql);

if(mysqli_num_rows)($result) >0 {
echo("Success")
exit();
} 
else{
    echo("Failed")
    exit();
}
mysqli_close($conn);

?>