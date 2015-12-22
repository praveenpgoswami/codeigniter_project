<?php 
//echo '<pre>';print_r($productList->result());die;
$this->load->view('site/templates/header');
 $product = $productList->row();
 $BookingUser = $BookingUserDetails->row();
$servicetax = $service_tax->row();
 $country = $countryList; 

?>





<script type="text/javascript">
$(document).ready(function () {
    $('.pad').hide();
    $('.heading').click(function () {
        $(this).next('.pad').slideToggle();
        if($(this).find('.span1').attr('id') == 'yes') {
            $(this).find('.span1').attr('id', '').html('&#8744;');
        } else {
            $(this).find('.span1').attr('id', 'yes').html('&#8743;');
        }
    });
});
</script>
<script type="text/javascript">
$(document).ready(function () {
    $('.pad1').hide();
    $('.heading1').click(function () {
        $(this).next('.pad1').slideToggle();
        if($(this).find('.span2').attr('id') == 'yes') {
            $(this).find('.span2').attr('id', '').html('&#8744;');
        } else {
            $(this).find('.span2').attr('id', 'yes').html('&#8743;');
        }
    });
});
</script>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('input[type="checkbox"]').click(function(){
            if($(this).attr("value")=="red"){
                $(".red").toggle();
            }
        });
    });
</script>


<input type="hidden" id="rental_id" value="<?php echo $product->id; ?>" />
<script type="text/javascript" src="js/site/SpryTabbedPanels.js"></script>

<section>
<div class="payment-container">
<div class="container">


<div class="payment-section1">
			<div class="payed-container">
            <article class="pay-head">
            <span>1. Overview of your Booking</span>
            <a href="<?php echo base_url(); ?>"><i class="arow-keyd"></i>Back to offer</a>
            </article>

            <div class="over-view-details">
            <div class="over-view-details-left">
			<img src="<?php echo base_url();?>server/php/rental/<?php echo $product->product_image;?>" />
			</div>
            <div class="over-view-details-right">
                    <div class="detl-headline">
                    <h3><?php echo $product->bedrooms;?> Room Appartment for upto <?php echo $product->NoofGuest;?> people</h3>
                    <span><?php echo $product->product_title;?></span>
                    </div>

                    <ul class="checkin-details-left cheks-status">
                        <li>
                            <label>Check in:</label>
                            <span><?php echo date('Y-m-d',strtotime($product->checkin)); ?></span>
                        </li>

                         <li>
                            <label>Check out:</label>
                            <span><?php echo date('Y-m-d',strtotime($product->checkout)); ?></span>
                        </li>


                         <li>
                            <label>You Stay:</label>
                            <span><?php echo $product->numofdates." Nights"; ?></span>
                        </li>

                        <li>
                            <label>Guests:</label>
                            <span><?php echo $product->NoofGuest." Guests"; ?></span>
                        </li>
                    </ul>

                     <ul class="checkin-details-right cheks-status">
                        <li>
                            <label>Price for per nights:</label>
                            <span> <?php echo $currencySymbol."  "; ?><?php echo $product->price * $this->session->userdata('currency_r'); ?></span>
                        </li>

                         <li>
                            <label>Service fees</label>
                            <span>
							<?php
							
							
							if($servicetax->promotion_type=='flat')
										  {
										  echo $currencySymbol.$tax->row()->commission_percentage;
										  echo $servicetax->commission_percentage;
										  }
										  else{
										  $nodates = $product->numofdates;
										  $single = $product->price * $this->session->userdata('currency_r');
										  $pertage = $servicetax->commission_percentage;
										  //echo '(Instead of '. round(($single*$pertage)/100).'%'.')';
										  echo $currencySymbol."  ".round(($single*$pertage)/100);
										  // echo $currencySymbol.(($servicetax->commission_percentage * $this->session->userdata('currency_r')) * $product->numofdates*$BookingUserDetails->row()->NoofGuest)*$servicetax->commission_percentage/100;
										  }
										  
							 ?>
						</span>
                        </li>


                         <li>
                            <label>Total:</label>
                            <span><?php
									 $subtotal=($product->price * $this->session->userdata('currency_r')) * $product->numofdates;
                                    if($servicetax->promotion_type=='flat')
										  {
										 $tax_price=$servicetax->commission_percentage;
										  }
										  else{
										 $tax_price=(($product->price * $this->session->userdata('currency_r')) * $product->numofdates*$BookingUserDetails->row()->NoofGuest)*$servicetax->commission_percentage/100;
										  }
										   
										  ?>
                                        <?php
										$stotal = $subtotal+$tax_price;
										echo $currencySymbol."  "; ?><?php echo round($stotal);?>
						</span>
                        </li>

                        
                    </ul>
</div>

<div class="notify-profile">
    <div class="thick-area"><img src="images/thick.png"></div>
    <div class="thick-infos"><span class="choise">Great Choice! You are Just 1 minute away from booking. </span><p>Fill in your details below to complete the booking. Once you submit your booking, it will be confirmed immediately and you will receive an email with the host’s contact details and the exact address of the property.</p></div>
</div>
</div>
</div>
</div>


<?php 
$ipayuser = $this->product_model->get_all_details(USERS,array('id'=>$BookingUserDetails->row()->userid));
?>


<div class="payment-section1">
<div class="payed-container">
            <article class="pay-head">
                <span>2. Personal Information</span>
                
            </article>

            <div class="over-view-details">
					 
			 
			 
			  
			 <form method="post" action="site/checkout/PaymentCredit" id="credit_card_form">
                <ul class="login-list-cont">
 

                 <li>
                    <span>First Name</span>
                    <input type="text" name = "firstname" value="<?php echo $BookingUser->firstname; ?>">
                </li>

                <li>
                    <span>Last Name</span>
                    <input type="text" name = "lastname" value="<?php echo $BookingUser->lastname;?>">
                </li>

                 <li>
                    <span>Country</span>
                    <select name = "country" id="phone_country" onchange="get_mobile_code(this.value)">
					<?php foreach($country as $cont){?>
					<option value = "<?php echo $cont->id;?>" <?php if($cont->id == $BookingUser->UserCountry){?> selected <?php }?>><?php echo $cont->name;?></option>
					<?php } ?>
					</select>
                </li>

                <li class="caling-area">
                    <span>Phone Number<label>For establishing Contact with the host</label></span>
                    <select>
					<?php foreach($country as $cont){?>
					<?php if($cont->id == $BookingUser->UserCountry){?><option class="pniw-number-prefix" selected ><?php echo $cont->code;?></option><?php }?>
					<?php } ?>
					</select>
                    <input type="text" name = "phone_no" value="<?php echo $BookingUser->phone_no; ?>">
                </li>


                   <li>
                    <span>Email Address</span>
                    <input type="text" name = "email_id" id = "email_id" value="<?php echo $BookingUser->email;?>" onblur="updateUserEmail();">
					<input type="hidden" id="user_id" name="user_id"  value="<?php echo $BookingUser->userid;?>"/>
                </li>

                <!--<li>
                    <span>Pasword<label> So you can access your booking information again later </label></span>
                    <input type="text">
                </li>-->
                </ul>
</form>


</div>
</div>


<div align="center">
<a href="site/user/booking_confirm/<?php echo $this->uri->segment(2); ?>"><input type="button" id="bookbtn" name="bookbtn" value="BOOK NOW" style="height:50px;background-color:#0190e2;color:#FFF;width:150px;"/></a>
</div>



</div>


<div class="payment-section1" style="display:none;">
<div class="payed-container">
            <article class="pay-head">
                <span>3.How would you like to pay? </span>
            </article>

            <div class="over-view-details">
                <ul class="coupn-list-cont">
                <li>
				<form id="myForm" name="myForm" onsubmit="return validateForm();" method="POST">
				<span class="heading copncode">Do you have Coupon code?<span class="span1" style="float:right;">&#8744;</span></span>
				<div id="occ" class="pad">
				<br />
				<input type="text" name="couponcode" id="couponcode" placeholder="Coupon Code"  />&nbsp; &nbsp;
				<!-- <span class="error">This field is required</span> -->
				<input type="hidden" id="huser_id" name="huser_id" value="<?php echo $product->user_id;?>">
				<input type="hidden" name="total" id="total" value="<?php echo $subtotal+$tax_price; ?>"/>
				<input type="button" value="Apply" onclick="coupon_codes();">
				
				
				
				<br />
				<p id="totals"></p>
				<p id="disper"></p>
				<p id="disamount"></p>
				</div>
				
				</form>
                </li>

                 <!--<li>
                    <label class="pay-texty">Payment For</label>
           <select><option>United State</option><option>2</option></select>
                </li>-->

                <li>
                   <input type="radio" onclick="return submit_button1();" id="credit" name="pay"><span class="credit-card">Net Banking</span>
                   <img src="<?php echo base_url();?>images/visa1.png" />
				  
                </li>


                  <li>
                   <input type="radio" name="pay" onclick="return submit_button2();" ><span class="credit-card">Paypal</span>
                    <img src="<?php echo base_url();?>images/visa2.png" />
					
                </li>
				<li>
				
              <div id="occ" class="pad1">
				<br />
					<form name="cod" action="<?php echo base_url();?>site/product/shippingdetails" method="POST">
					<table>
					<tr>
					<th><label>Name</label></th>
					<td><input type="text" name="name" id="shippingname" value="<?php echo $BookingUser->firstname; ?>" /></td>
					</tr>
					
					<tr>
					<th><label>Email</label></th>
					<td><input type="text" name="email" id="shippingemail" value="<?php echo $product->email;?>" /></td>
					</tr>
					<tr>
					<th><label>Mobile</label></th>
					<td><input type="text" name="mobileno" id="shippingmobileno" value="<?php echo $product->phone_no;?>" /></td>
					</tr>
					<tr>
					<th><label>Address</label></th>
					<td><textarea name="address" id="shippingaddress"><?php echo $product->address;?></textarea></td>
					</tr>
					</table>
					<input type="checkbox"  value="red" name="checkbox" id="checkbox" /><span class="heading3" style="cursor:pointer">Are You Change Shipping Address?<span class="span3" style="float:right;">&#8744;</span></span>
					
					<div id="occ" class="red" style="display:none;">
					<br />
					<br />
					
					<!-- final value -->
				<input type="hidden"  id="disamounts" name="disamounts" value=0 />
				<input type="hidden"  id="distype" name="distype" />
				<input type="hidden"  id="dval" name="dval" />				
				<input type="hidden"  id="dcouponcode" name="dcouponcode" />
				<input type="hidden" name="total_amt" id="total_amt" value="<?php echo $subtotal+$tax_price; ?>"/>
				
				<!-- final value End -->
					
					
					
					
					
					
					
					
					
					
					<table>
					<tr>
					<th><label>Name</label></th>
					<td><input type="text" name="shippingname" id="shippingname" value="" /></td>
					</tr>
					
					<tr>
					<th><label>Email</label></th>
					<td><input type="text" name="shippingemail" id="shippingemail" value="" /></td>
					</tr>
					<tr>
					<th><label>Mobile</label></th>
					<td><input type="text" name="shippingmobileno" id="shippingmobileno" value="" /></td>
					</tr>
					<tr>
					<th><label>Address</label></th>
					<td><textarea name="shippingaddress" id="shippingaddress"></textarea></td>
					</tr>
					
					<input type="hidden" id="product_id" name="product_id" value="<?php echo $this->uri->segment(2); ?>" />
					<input type="hidden" id="sell_id" name="sell_id"  value="<?php echo $product->user_id;?>"/>
					<input type="hidden" id="user_id" name="user_id"  value="<?php echo $BookingUser->userid;?>"/>
					<input type="hidden" name="price" id="price" value="<?php echo $subtotal+$tax_price; ?>"/>
					<input type="hidden" name="payment_type" id="payment_type" value="COD"/>
					<input type="hidden" name="dprice" id="dprice"   />
					</table>
					
				
					</div>
					<input type="submit"/>
					</form>
					
				</div>
				
				</div>
			</li>
                </ul>
				
				<span id="terms_warn" style="background:red;"></span>
                <div class="booknw-area">
                    <span>Congratulations, You got the best price for this property! </span>
					 <input checked="checked" type="submit" id="card" name="caltophone" style="margin:10px 0 0 10px;"  onclick="return credit_card_form_func();" value="Book Now(Net Banking)"  class="boks12">
					 
                    <div id="paypal_but" style="display:none"><input type="submit" name="caltophone" style="margin:10px 0 0 10px;"  onclick="paypal_form();" value="Book Now(paypal)" id="paypal"  class="boks12"></div>
					
                    <label class="submtig-text"> By submitting a booking request, you accept the Terms and Conditions<a target="_blank" href="<?php echo base_url();?>pages/privacy-policy"">terms and conditions</a></label>
                </div>
					
                <div class="norto-areas">
                    <a href="#"><img src="<?php echo base_url();?>images/veri1.png"></a>
                    <a href="#"><img src="<?php echo base_url();?>images/veri2.png"></a>
                    <a href="#"><img src="<?php echo base_url();?>images/veri3.png"></a>
                </div>
				
				
				
				
				

</div>
</div>
</div>



</div>
</div>
</div>
</section>

<!---DASHBOARD-->
<!--<input type="hidden" value="<?php echo $subtotal+$tax_price;?>" id="totprice" />-->
<?php 
$sub_tot_price_in_dollar=$product->price*$product->numofdates;
   if($tax->row()->promotion_type=='flat')
      {
	$tax_price_in_dollar=$tax->row()->commission_percentage;
	 }
	else{
	 $tax_price_in_dollar=($product->price * $product->numofdates*$BookingUserDetails->row()->NoofGuest)*$tax->row()->commission_percentage/100;
	}


?>
<input type="hidden" value="<?php echo $sub_tot_price_in_dollar+$tax_price_in_dollar;?>" id="totprice" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>												
<script type="text/javascript">

function credit_card_form_func()
{ 
  

	var caltophone=jQuery("input:radio[name=caltophone]:checked").val();
	var terms = document.getElementById("credit").checked;
	var dis = parseInt($('#disamounts').val());
	if( dis == ""){
	var amount = parseInt($('#totprice').val());
	}else{
	var amount =  parseInt($('#disamounts').val());
	}
	if($('#phone_no').val()==''){
		$('#terms_warn').html('<p style="color:#F00; margin-right:3px;">Please Enter Contact Phone Number.</p> ');
		return false;
	}else if(terms == true)
		{
		//alert("erl");
			document.getElementById("ipay88").submit();
			// $.ajax({
			// type:'POST',
			// url:'site/product/edit_enquiry_details',
			// data:{'rental_id':$('#rental_id').val(),'Enquiry':$('#Enquiry').val(),'caltophone':caltophone,'phone_no':$('#phone_no').val(),'enquiry_timezone':$('#enquiry_timezone').val()},
			// dataType:'json',
			// success:function(json){
			// document.getElementById("credit_card_form").submit();
			// }
		// });
			
		}
	else
		{
			$('#terms_warn').html('<p style="color:#F00; margin:6px;padding:3px;">Please choose your <b>payment mode<b></p> ');
			$('#terms_warn').show().delay('3000').fadeOut();
			return false;
		}
}

function paypal_form()
{

	var caltophone=jQuery("input:radio[name=caltophone]:checked").val();
	var product = <?php echo $product->id;?>;
	var dis = parseInt($('#disamounts').val());
	if( dis == ""){
	var amount = parseInt($('#totprice').val());
	}else{
	var amount =  parseInt($('#disamounts').val());
	}
    
	//alert(amount);
	
	
	if(jQuery($('#phone_no').val())==''){
		$('#terms_warn').html('<p style="color:#F00; margin-right:3px;">Please Enter Contact Phone Number.</p>');
		return false;
	}else if(true == true)
		{
			$.ajax({
			type:'POST',
			url:'site/product/edit_enquiry_details',
			data:{'rental_id':$('#rental_id').val(),'Enquiry':$('#Enquiry').val(),'caltophone':caltophone,'phone_no':$('#phone_no').val(),'enquiry_timezone':$('#enquiry_timezone').val(),'guide_id':$('#guide_id').val()},
			dataType:'json',
			success:function(json){
            window.location = BaseURL+"site/checkout/PaymentProcess/"+product+"/"+amount;
			}
		});
			
		}
	else
		{
			$('#terms_warn').html('<p style="color:#F00; margin-right:3px;">This field is required</p> ');
			$('#terms_warn').show().delay('3000').fadeOut();
			return false;
		}
}
function updateenqueryDetails(){
		$.ajax({
			type:'POST',
			url:'site/product/edit_enquiry_details',
			data:{'rental_id':$('#rental_id').val(),'Enquiry':$('#Enquiry').val(),'enquiry_timezone':$('#enquiry_timezone').val()},
			dataType:'json',
			success:function(json){ 
				//return;
			}
		});
		
		
}
function submit_button1()
{
	$('#paypal').hide();
	$('#card').show();
	
}

function submit_button2()
{
	$('#card').hide();
	$('#paypal').show();
	$('#paypal_but').css('display', 'block');
}

function coupon_codes()
{
 var totalamount = parseInt($('#totprice').val());
$.ajax({
			type:'POST',
			url:'<?php echo base_url();?>site/product/coupons',
			data:{'couponcode':$('#couponcode').val(),'total':$('#total').val()},
			dataType:'json',
			success: function(json){
			//alert(json);
			
			var test = json.split("-"); 
			$('#totals').html('<p style="color:#F00; margin-right:3px;">'+'Total Amount :'+ test[3] +'</p> ');
			$('#totals').show();
			
			
			if(test[4] == 1){
			$('#disper').html('<p style="color:#F00; margin-right:3px;">'+'Flat Discount Amount :'+ test[1] +'</p> ');
			$('#disper').show();
			}else{
			$('#disper').html('<p style="color:#F00; margin-right:3px;">'+'Discount Percentage :'+ test[1] +'</p> ');
			$('#disper').show();
			
			}
			$('#disamount').html('<p style="color:#F00; margin-right:3px;">'+'Discounted Amount :'+ test[2] +'</p> ');
			$('#disamount').show();
			document.getElementById("dcouponcode").value=test[0];
			document.getElementById("disamounts").value=test[2];
			document.getElementById("distype").value=test[4];
			document.getElementById("dval").value=test[1];
			//alert(totalamount);
				return;
			}
			
		});  
		
}


function updateUserEmail()
{
	$.ajax({
			type:'POST',
			url:'site/product/edit_user_email',
			data:{'email_id':$('#email_id').val(),'user_id':$('#user_id').val()},
			dataType:'json',
			success:function(json){ 
				//return;
			}
		});
}


function get_mobile_code(country_id)
{

 $.ajax({
type:'POST',
url:'<?php echo base_url();?>site/user/get_mobile_code',
data:{country_id:country_id},
dataType:'json',
success:function(response)
{
$('.pniw-number-prefix').text(response['country_mobile_code']);
//alert(response);
}
});
}

</script>

<script type="text/javascript" src="js/1.8-jquery-ui-min.js"></script>
<link rel="stylesheet" type="text/css" href="javascript/autocomplete/jquery-ui-1.8.2.custom.css" media="all" />
<script type="text/javascript" src="javascript/autocomplete/jquery-ui-1.8.2.custom.min.js"></script> 
<?php
$this->load->view('site/templates/footer');
?>