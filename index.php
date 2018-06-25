<?php
session_start();
include("controllers/mainController.php");
$Trang_Chu=new mController();
$Trang_Chu->Hien_Thi_Trang_Chu();
?>