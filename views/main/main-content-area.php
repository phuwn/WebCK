<div class="maincontent-area">
       
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <h2 class="section-title">Sản phẩm nổi bật</h2>
                        <div class="product-carousel">
                        <?php
                        foreach($ds_sp_noi_bat as $sp_noi_bat)
						{
						?>
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="img/<?php echo $sp_noi_bat->hinh;?>" alt="">
                                    <div class="product-hover">
                                    <input type="hidden" id="dongia<?php echo $sp_noi_bat->id_sp;?>" value="<?php echo $sp_noi_bat->don_gia?>" />
                                    <input type="hidden" id="soluong<?php echo $sp_noi_bat->id_sp?>" value="1"/>
                                        <a href="javascript:void(0)" class="add-to-cart-link" id="<?php echo $sp_noi_bat->id_sp?>"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ</a>
                                        <a href="detail.php?id_sp=<?php echo $sp_noi_bat->id_sp;?>" class="view-details-link"><i class="fa fa-link"></i> Xem Chi Tiết</a>
                                    </div>
                                </div>
                                
                                <h2><a href="detail.php?id_sp=<?php echo $sp_noi_bat->id_sp;?>"><?php echo $sp_noi_bat->ten_sp;?></a></h2>
                                
                                <div class="product-carousel-price">
                                    <ins><?php echo number_format($sp_noi_bat->don_gia)." ";?>₫</ins> 
                                </div> 
                            </div>
                         <?php
						}
						 ?>   
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>