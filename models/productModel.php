<?php
include_once("lib/database.php");
class pModel extends database
{
	public function Xem_tat_ca($vt=-1,$limit=-1)
	{
		$sql="SELECT * FROM san_pham ";
		if($vt>=0 && $limit>0)
		{
			$sql.="LIMIT $vt,$limit";	
		}
		$this->setQuery($sql);
		return $this->loadAllRows();	
	}
	
	
	public function Xem_chi_tiet($id_sp)
	{
		$sql="SELECT * FROM san_pham ";
		$sql.="WHERE id_sp=?";
		$this->setQuery($sql);
		$parram=array($id_sp);
		
		return $this->loadRow($parram);	
	}
	
	public function Xem_theo_loai($id_loai,$ngoai_tru=-1,$vt=-1,$limit=-1)
	{
		$sql="SELECT * FROM san_pham ";
		
		$sql.="WHERE id_loai=?";
		if($ngoai_tru>0)
		{
			$sql.=" AND id_sp<>$ngoai_tru";	
		}
		
		if($vt>=0 && $limit>0)
		{
			$sql.=" LIMIT $vt,$limit ";	
		}
		$this->setQuery($sql);
		$parram=array($id_loai);
		
		return $this->loadAllRows($parram);	
	}	
	
	public function Them_vao_gio_hang($gio_hang)
	{
		$sql="SELECT * FROM san_pham ";
		$sql.="WHERE ma_san_pham in($gio_hang)";
		$this->setQuery($sql);
		
		return $this->loadAllRows();	
	}
	
	
// 	public function Tim_san_pham($gia_tri_tim)
// 	{
// 		$sql="SELECT * FROM san_pham WHERE ten_san_pham like '%$gia_tri_tim%'";
// 		$this->setQuery($sql);
		
// 		return $this->loadAllRows();	
// 	}

}
?>