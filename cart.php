<?php
session_start();

include("process/xemSanPham.php");
$pModel=new pModel();	
$view="views/cart/vCart.php";
include("templates/layout.php");	
?>