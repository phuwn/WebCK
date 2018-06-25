<?php
@session_start();
class cController
{
	public function Hien_thi_gio_hang()
	{
		//models
		$gio_hang=$this->Lay_gio_hang();
		if($gio_hang)
		{
		$ds_tt_gio_hang=$this->Lay_thong_tin_gio_hang($gio_hang);
		}
		
		//echo "<pre>";
		//print_r($ds_tt_gio_hang);
		
		//views
			$view="views/gio_hang/v_gio_hang.php";
			include("templates/layout.php");
	}
	
	
	public function Them_vao_gio_hang($gio_hang)
	{
		$arr_id_sp=array();
		foreach($gio_hang as $key=>$value)
		{
			$arr_id_sp[]=$key;	
		}
		
		$chuoi_id_sp=implode(",",$arr_id_sp);
		
		include("models/productModel.php");
		$pModel=new pModel();
		$ds_san_pham=$pModel->Them_vao_gio_hang($chuoi_id_sp);
		$ds_sp_gio_hang=array();
		foreach($ds_san_pham as $sp)
		{
			$sp->soluong=$gio_hang[$sp->id_sp];
			$ds_sp_gio_hang[]=$sp;
		}
		
		return $ds_sp_gio_hang;
	}
	
	
	
	public function Them_gio_hang($id_sp,$don_gia,$so_luong)
	{		if($so_luong>0)
			{
				if(isset($_SESSION["gio_hang"][$id_sp]))
				{
					$_SESSION["thanh_tien"]-=$_SESSION["gio_hang"][$id_sp]*$don_gia;
					$_SESSION["so_luong"]-=	$_SESSION["gio_hang"][$id_sp];
				}
				
				$_SESSION["gio_hang"][$id_sp]=$so_luong;
				
				if(isset($_SESSION["thanh_tien"]))
				{
					$_SESSION["thanh_tien"]=$_SESSION["thanh_tien"]+$so_luong*$don_gia;
					$_SESSION["so_luong"]=$_SESSION["so_luong"]+$so_luong;
				}
				else
				{
					$_SESSION["thanh_tien"]=$so_luong*$don_gia;
					$_SESSION["so_luong"]=$so_luong;
				}
			}
	}
	
	
	public function CapNhatGioHang($id_sp,$so_luong,$don_gia)
	{
		if($so_luong>0)
		{
			$_SESSION["thanh_tien"]-=$_SESSION["gio_hang"][$id_sp] * $don_gia;
			$_SESSION["thanh_tien"]+=$so_luong*$don_gia;
			
			$_SESSION["so_luong"]-=$_SESSION["gio_hang"][$id_sp];
			$_SESSION["so_luong"]+=$so_luong;
			
			$_SESSION["gio_hang"][$id_sp]=$so_luong;
		}	
	}
	
	public function Lay_gio_hang()
	{
		if(isset($_SESSION["gio_hang"]))
			return $_SESSION["gio_hang"];
		else
			return false;
	}
	
	public function GetSoLuong()
	{
		if(isset($_SESSION["so_luong"]))
			return $_SESSION["so_luong"];
		else
			return 0;		
	}
	
	public function GetThanhTien()
	{
		if(isset($_SESSION["thanh_tien"]))
			return $_SESSION["thanh_tien"];
		else
			return 0;	
	}
	
	public function GetGioHang()
	{
		if(isset($_SESSION["gio_hang"]))
			return $_SESSION["gio_hang"];
		else
			return false;	
	}	
	
	public function Xoa_Mat_Hang($id_sp,$don_gia)
	{
		$gio_hang=$this->GetGioHang();
		$gio_hang_Moi=array();
		foreach($gio_hang as $k=>$v)
		{
			if($id_sp != $k)
			{
				$gio_hang_Moi[$k]=$v;
			}
			else
			{
				$_SESSION["thanh_tien"]-=$gio_hang[$id_sp]*$don_gia;
				$_SESSION["so_luong"]-=$gio_hang[$id_sp];	
			}	
		}
		
		if(!empty($gio_hang_Moi))
		{
			$_SESSION["gio_hang"]=$gio_hang_Moi;
		}
		else
		{
			//xóa giỏ hàng
			$this->Xoa_gio_hang();	
		}
	}
	
	public function Xoa_gio_hang()
	{
		unset($_SESSION["gio_hang"]);
		unset($_SESSION["thanh_tien"]);
		unset($_SESSION["so_luong"]);
	}
}
?>