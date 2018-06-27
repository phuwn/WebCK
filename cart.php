<?php
session_start();

include("process/xemSanPham.php");
			include("process/xemLoaiSanPham.php");
			$pModel=new pModel();
			
			$view="views/cart/vCart.php";
			include("templates/layout.php");	
?>