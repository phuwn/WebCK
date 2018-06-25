<?php
session_start();
include("controllers/detailController.php");
$Chi_tiet_san_pham=new dController();
$Chi_tiet_san_pham->Hien_thi_chi_tiet_san_pham();
?>