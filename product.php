<?php
session_start();

include("process/xemSanPham.php");
$pmodel=new pModel();
$ds_sp_noi_bat=$pmodel->Xem_tat_ca(2,8);
$ds_sp_ban_chay=$pmodel->Xem_tat_ca(13,3);
$ds_sp_moi=$pmodel->Xem_tat_ca(6,3);
$ds_sp_xem_gan_day=$pmodel->Xem_tat_ca(20,3);


$view="views/product/vProduct.php";
include("templates/layout.php");	
?>