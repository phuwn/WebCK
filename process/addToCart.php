<?php
session_start();
include("controllers/cartController.php");
$cController=new cController();
$id_sp=$_POST["id"];
$soluong=$_POST["soluong"];
$dongia=$_POST["dongia"];

$cController->Them_gio_hang($id_sp,$dongia,$soluong);

$arrGioHang=array('sl'=>$cController->GetSoLuong(),'tt'=>number_format($cController->GetThanhTien()));
echo json_encode($arrGioHang);
?>