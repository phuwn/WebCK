<?php 
    session_start();
    if (isset($_SESSION["damua"])){
        if (isset($_POST['btn_thanhtoan']))
        {
            require_once("../lib/connect_db.php");

            $email = $_POST['billing_email'];
            $comment = $_POST['order_comments'];
            $name = $_POST['billing_name'];
            $sdt = $_POST['billing_phone'];
            $add = $_POST['billing_address'];
            $sql = "INSERT INTO khach_hang values(NULL, '$name', '$sdt', '$email', '$add')";
            $res=mysqli_query($conn, $sql);
            $last_id = mysqli_insert_id($conn);
            $sql = "INSERT INTO don_hang values(NULL, $last_id, '$comment', 'chưa thanh toán')";
            $res=mysqli_query($conn, $sql);
            $last_id = mysqli_insert_id($conn);
            foreach ($_SESSION["damua"] as $id_sp) {
                $soluong = $_SESSION["soluong"][$id_sp];
                $sql = "INSERT INTO ct_don_hang values($last_id, $id_sp, $soluong)";
                $conn->query($sql);
            }
            unset($_SESSION["damua"]);
            unset($_SESSION["soluong"]);
            unset($_SESSION["cart"]);
        }
        header('location: ../');
    }

    else {
        echo "<script> alert('bạn chưa mua hàng');window.location='../product.php'</script>";
    }
?>