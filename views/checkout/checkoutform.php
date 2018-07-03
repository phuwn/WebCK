<div class="product-content-right">
                        <div class="woocommerce">
                            <div class="col-md-4">
  <div id="customer_details" class="col2-set">
    <div class="col-1">
      <div class="woocommerce-billing-fields">
        <h3>Thông tin giao hàng</h3>
        <p id="billing_country_field" class="form-row form-row-wide address-field update_totals_on_change validate-required woocommerce-validated">
          <!--<label class="" for="billing_country">Country <abbr title="required" class="required">*</abbr> </label>-->
        
        <p id="billing_first_name_field" class="form-row form-row-first validate-required">
          <!--<label class="" for="billing_first_name">First Name <abbr title="required" class="required">*</abbr> </label>-->
          <input type="text" value="" placeholder="Họ và tên" id="billing_first_name" name="billing_first_name" class="input-text ">
        </p>
        
        <div class="clear"></div>
        <p id="billing_email_field" class="form-row form-row-first validate-required validate-email">
          <!--<label class="" for="billing_email">Email Address <abbr title="required" class="required">*</abbr> </label>-->
          <input type="text" value="" placeholder="Email" id="billing_email" name="billing_email" class="input-text ">
        </p>
        <p id="billing_phone_field" class="form-row form-row-last validate-required validate-phone">
          <!--<label class="" for="billing_phone">Phone <abbr title="required" class="required">*</abbr> </label>-->
          <input type="text" value="" placeholder="Số điện thoại" id="billing_phone" name="billing_phone" class="input-text ">
        </p>
        <div class="clear"></div>
        <p id="billing_address_1_field" class="form-row form-row-wide address-field validate-required">
          <!--<label class="" for="billing_address_1">Address <abbr title="required" class="required">*</abbr> </label>-->
          <input type="text" value="" placeholder="Địa chỉ" id="billing_address_1" name="billing_address_1" class="input-text ">
        </p>
        
          <select class="country_to_state country_select" id="tinh_thanh" name="billing_country" onchange="Xl_ajax_tinh_thanh(this.value)" >
            <option value="null" selected="">Vui lòng chọn tỉnh/thành phố.</option>

          </select>
          
         <p id="order_comments_field" class="form-row notes">
                      <textarea cols="5" rows="2" placeholder="Ghi chú đơn hàng" id="order_comments" class="input-text " name="order_comments"></textarea>
                    </p> 
      </div>
    </div>
        </div>
        </div>
                                    </div>
                                </div>
                            </form>

                        </div>                       
                    </div>                    
</div>