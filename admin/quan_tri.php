<?php
session_start();
if(!isset($_SESSION['admin']['ho_ten']))
{
    header('location:index.php');
}
$view="views/v_quan_tri.php";
include("templates/layout.php");
?>