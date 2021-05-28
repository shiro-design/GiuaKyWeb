<?php
// Include config file
session_start();
require_once "config.php";
 
// Define variables and initialize with empty values
$tenloai = $mota = "";
$tenloai_err = $mota_err = "";


if(isset($_POST['save'])){

    $tenloai = $_POST['name'];
    $mota = $_POST['mota'];
    $sql = "INSERT INTO Loai(TenLoai,MoTa) VALUES ('$tenloai','$mota')";

    mysqli_query($link,$sql);


}
 
?>