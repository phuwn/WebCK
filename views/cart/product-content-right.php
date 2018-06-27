<?php 
if(isset($_SESSION["damua"]))
{
?>
<div class="col-md-8">
                    <div class="product-content-right">
                        <div class="woocommerce">
                            <form method="post">
                                <table cellspacing="0" class="shop_table cart">
                                    <thead>
                                        <tr>
                                        <th class="product-remove">&nbsp;</th>
                                            <th class="product-thumbnail"></th>
                                            <th class="product-name">Tên sản phẩm</th>
                                            <th class="product-price">Đơn giá</th>
                                            <th class="product-quantity">Số lượng</th>
                                            <th class="product-subtotal">Tổng tiền</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php 
                                        foreach ($_SESSION["damua"] as $id_sp){
                                            $san_pham=$pModel->Xem_chi_tiet($id_sp);
                                            ?>
                                        <tr id="tr1" class="cart_item">
                                            <td class="product-remove">
                                                <button class="remove_item" type="button" id="<?php echo $san_pham->id_sp; ?>x">×</button>
                                            </td>

                                            <td class="product-thumbnail">
                                                <a href="detail.php?id_sp=<?php echo $san_pham->id_sp;?>">
                                                    <img width="145" height="145" alt="error" class="shop_thumbnail" src="img/<?php echo $san_pham->hinh;?>">
                                                </a>
                                            </td>

                                            <td class="product-name">
                                                <a href="detail.php?id_sp=<?php echo $san_pham->id_sp;?>"><?php echo $san_pham->ten_sp;?></a>
                                            </td>

                                            <td class="product-price">
                                                <span id="don_gia" class="amount"><?php echo number_format($san_pham->don_gia) . " "; ?></span>đ
                                                <input type="hidden" name="dongia<?php echo $san_pham->id_sp;?>" value="<?php echo $san_pham->don_gia;?>" />
                                            </td>

                                            <td class="product-quantity">
                                                <div class="quantity buttons_added">
                                                    
                                                    <input type="number" size="4" id="quantitynum" class="input-text qty text" title="Qty" value="<?php echo $_SESSION["soluong"][$san_pham->id_sp];?>" min="1" step="1">
                                                    <button class="plus" id="<?php echo $san_pham->id_sp;?>y">+</button>
                                                </div>
                                            </td>

                                            <td class="product-subtotal">
                                                <span class="amount" id="sum"><?php echo number_format($_SESSION["soluong"][$san_pham->id_sp]*$san_pham->don_gia);?></span>đ
                                            </td>
                                        </tr>
                                        <?php 
                                        } 
                                        ?>
                                        <tr>
                                            <td class="actions" colspan="6">
                                                <input type="submit" value="CẬP NHẬT GIỎ HÀNG" name="update_cart" class="button" id="update" onclick="">
                                                <input type="submit" value="XÁC NHẬN THANH TOÁN" name="proceed" class="checkout-button button alt wc-forward">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form>

                            <div class="cart-collaterals">
                                <div class="cart_totals ">
                                    <h2>Tổng đơn hàng</h2>

                                    <table cellspacing="0">
                                        <tbody>
                                            <tr class="cart-subtotal">
                                                <th>
                                                    Tổng giỏ hàng</th>
                                                <td>
                                                    <span class="amount">4.000.000</span>đ
                                                </td>
                                            </tr>

                                            <tr class="shipping">
                                                <th>Giảm giá </th>
                                                <td>%</td>
                                            </tr>

                                            <tr class="order-total">
                                                <th>Tổng cộng</th>
                                                <td>
                                                    <strong>
                                                        <span class="amount">4.000.000 đ</span>
                                                    </strong>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
<?php 
}
else {
?>
<div class="col-md-8">
                    <div class="product-content-right">
                        <div class="woocommerce">
                            <form method="post" action="checkout.php">
                                <table cellspacing="0" class="shop_table cart">
                                    <thead>
                                        <tr>
                                            <th class="product-remove">&nbsp;</th>
                                            <th class="product-thumbnail"></th>
                                            <th class="product-name">Tên sản phẩm</th>
                                            <th class="product-price">Đơn giá</th>
                                            <th class="product-quantity">Số lượng</th>
                                            <th class="product-subtotal">Tổng tiền</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="actions" colspan="6">
                                                <div class="nocart" style="text-align: center;">
                                                    <label>Chưa có sản phẩm trong giỏ hàng </label>
                                                    <a href="product.php">Click vào đây để tham khảo sản phẩm</a>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form>
                            </div>
                        </div>
                    </div>
                </div>
<?php
}
?>