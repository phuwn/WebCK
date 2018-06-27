<?php
session_start();

include("process/xemSanPham.php");
			include("process/xemLoaiSanPham.php");
			$pModel=new pModel();
			$tModel=new tModel();
			if(isset($_GET["id_sp"]))
			{
				//sản phẩm
				$id_sp=$_GET["id_sp"];
				$san_pham=$pModel->Xem_chi_tiet($id_sp);
				//danh mục
				$id_loai=$san_pham->id_loai;
				$loai_san_pham=$tModel->Xem_chi_tiet($id_loai);
				//sản phẩm khác
				$ngoai_tru=$id_sp;
				$san_pham_khac=$pModel->Xem_theo_loai($id_loai,$ngoai_tru);
			}
		
			$view="views/detail/vDetail.php";
			include("templates/layout.php");	
?>