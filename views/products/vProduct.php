<div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                    <div class="col-md-12">
                        <ul class="breadcrumb">
                        <li><a href=".">Trang Chủ</a></li>
                        <li><a href="san_pham.php">Danh mục</a></li>
                        <li class="active"><?php echo isset($danh_muc_hien_tai)?$danh_muc_hien_tai:"Tất cả sản phẩm";?></li> 
                        </ul>

                    </div>
                </div>
            <div class="row">
            	<?php include("v_menu_left.php")?>
            	<?php include("v_right.php")?>
            </div>
            
            <?php include("v_phan_trang.php")?>
        </div>
    </div>