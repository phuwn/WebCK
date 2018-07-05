<?php
session_start();
$kq="";
if(isset($_POST['btn_dang_nhap']))
{
    $email=$_POST['email_admin'];
    $pass=$_POST['pass_admin'];


    include("../lib/user.php");
    //Khởi tạo đối tượng user
    $user=new User();
    if($email!="" && $pass !="")
    {

        $kq=$user->Check_admin($email,md5($pass));
        if($kq)
        {
                $_SESSION['admin']['ho_ten']=$kq[0]['ho_ten'];
                header('location:quan_tri.php');
        }
        else
        {
            echo "<script>alert('Không Hợp Lệ');window.location='index.php'</script>";
        }
        
    }
    else{
        echo "<script>alert('Vui lòng điền đầy đủ thông tin!!');window.location='index.php'</script>";
    }

}
?>