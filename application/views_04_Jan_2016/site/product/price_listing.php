<?php
$this->load->view('site/templates/header');
$this->load->view('site/templates/listing_head_side');
?>

<script src="js/site/<?php echo SITE_COMMON_DEFINE ?>addProperty.js"></script>
<script type="text/javascript">
function Visibility() {
$('.price_text_links').css('display','none');
//$('.dashboard_price_main last').css('display','none');
document.getElementById('monthly').style.display = "block";
	return false;
	}

</script>
             

  <div class="right_side lan-heit price-listing">
            
            <div class="dashboard_price_main">
            
            	<div class="dashboard_price">
            		<div style="float:right; color:#FF0000;" id="imgmsg_<?php echo $listDetail->row()->id; ?>"></div>
                    <div class="dashboard_price_left">
                    
                    	<h3>Base Price</h3>
                        
                        <p>A title and summary displayed on your public listing page. </p>
                    
                    </div>
                    <form id="pricelist" name="pricelist" action="site/product/savePriceList" method="post">
                    <div class="dashboard_price_right">
                    
                    	<label>Per night</label>
                        
                        <div class="amoutnt-container">
                        
                        	<?php if($listDetail->row()->currency != ''){
						$currency_type=$listDetail->row()->currency;
						$currency_symbol_query='SELECT * FROM '.CURRENCY.' WHERE currency_type="'.$currency_type.'"';
						$currency_symbol=$this->product_model->ExecuteQuery($currency_symbol_query);
	
						if($currency_symbol->num_rows() > 0)
						{
							$currency_sym = $currency_symbol->row()->currency_symbols;
						}
						else{
							$currency_sym = '$';
						}
						?>
						
							<span class="WebRupee"><?php echo $currency_sym; ?></span>
						<?php } else { ?>
							<span class="WebRupee">$</span>
						<?php } ?>
                        
                        	<input type="text" value="<?php if($listDetail->row()->price !='0.00'){echo intval($listDetail->row()->price);}?>" class="per_amount_scroll"  name="price" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'price');" />
                            
                            <input type="hidden" id="id" name="id" value="<?php echo $listDetail->row()->id; ?>" />
                        
                        </div>
                        
                      <!--<label>Minimum Price</label>
                        
                        <div class="amoutnt-container">
                        
                        	<span class="WebRupee">RM</span>
                        
                        	<input type="text" value="<?php if($listDetail->row()->minimum_price !='0.00'){echo $listDetail->row()->minimum_price;}?>" class="per_amount_scroll"  name="minimum_price" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'minimum_price');" />
                            
                            
                        
                        </div>
						
						
						<label>Maximum Price</label>
                        
                        <div class="amoutnt-container">
                        
                        	<span class="WebRupee">RM</span>
                        
                        	<input type="text" value="<?php if($listDetail->row()->maximum_price !='0.00'){echo $listDetail->row()->maximum_price;}?>" class="per_amount_scroll"  name="maximum_price" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'maximum_price');" />
                            
                            
                        
                        </div>-->
                        
                        <div class="dashboard_currency">
                        
                        	<label>Currency</label>
                            
                            <div class="select select-large select-block">
                            
                            	<select name="currency" id="currency" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'currency');get_currency_symbol(this)" >
								      <!--<option value="">select</option>-->
    
                                      <option value="ARS" <?php if($listDetail->row()->currency == 'ARS') echo 'selected="selected"';?>>ARS</option>
                                    
                                      <option value="AUD" <?php if($listDetail->row()->currency == 'AUD') echo 'selected="selected"';?>>AUD</option>
                                    
                                      <option value="BRL" <?php if($listDetail->row()->currency == 'BRL') echo 'selected="selected"';?>>BRL</option>
                                    
                                      <option value="CAD" <?php if($listDetail->row()->currency == 'CAD') echo 'selected="selected"';?>>CAD</option>
                                    
                                      <option value="CHF" <?php if($listDetail->row()->currency == 'CHF') echo 'selected="selected"';?>>CHF</option>
                                    
                                      <option value="CNY" <?php if($listDetail->row()->currency == 'CNY') echo 'selected="selected"';?>>CNY</option>
                                    
                                      <option value="CZK" <?php if($listDetail->row()->currency == 'CZK') echo 'selected="selected"';?>>CZK</option>
                                    
                                      <option value="DKK" <?php if($listDetail->row()->currency == 'DKK') echo 'selected="selected"';?>>DKK</option>
                                    
                                      <option value="EUR" <?php if($listDetail->row()->currency == 'EUR') echo 'selected="selected"';?>>EUR</option>
                                    
                                      <option value="GBP" <?php if($listDetail->row()->currency == 'GBP') echo 'selected="selected"';?>>GBP</option>
                                    
                                      <option value="HKD" <?php if($listDetail->row()->currency == 'HKD') echo 'selected="selected"';?>>HKD</option>
                                    
                                      <option value="HUF" <?php if($listDetail->row()->currency == 'HUF') echo 'selected="selected"';?>>HUF</option>
                                    
                                      <option value="IDR" <?php if($listDetail->row()->currency == 'IDR') echo 'selected="selected"';?>>IDR</option>
                                    
                                      <option value="ILS" <?php if($listDetail->row()->currency == 'ILS') echo 'selected="selected"';?>>ILS</option>
                                    
                                      <option value="INR" <?php if($listDetail->row()->currency == 'INR') echo 'selected="selected"';?>>INR</option>
                                    
                                      <option value="JPY" <?php if($listDetail->row()->currency == 'JPY') echo 'selected="selected"';?>>JPY</option>
                                    
                                      <option value="KRW" <?php if($listDetail->row()->currency == 'KRW') echo 'selected="selected"';?>>KRW</option>
                                    
                                      <option value="MYR" <?php if($listDetail->row()->currency == 'MYR') echo 'selected="selected"';?>>MYR</option>
                                    
                                      <option value="MXN" <?php if($listDetail->row()->currency == 'MXN') echo 'selected="selected"';?>>MXN</option>
                                    
                                      <option value="NOK" <?php if($listDetail->row()->currency == 'NOK') echo 'selected="selected"';?>>NOK</option>
                                    
                                      <option value="NZD" <?php if($listDetail->row()->currency == 'NZD') echo 'selected="selected"';?>>NZD</option>
                                    
                                      <option value="PHP" <?php if($listDetail->row()->currency == 'PHP') echo 'selected="selected"';?>>PHP</option>
                                    
                                      <option value="PLN" <?php if($listDetail->row()->currency == 'PLN') echo 'selected="selected"';?>>PLN</option>
                                    
                                      <option value="RUB" <?php if($listDetail->row()->currency == 'RUB') echo 'selected="selected"';?>>RUB</option>
                                    
                                      <option value="SEK" <?php if($listDetail->row()->currency == 'SEK') echo 'selected="selected"';?>>SEK</option>
                                    
                                      <option value="SGD" <?php if($listDetail->row()->currency == 'SGD') echo 'selected="selected"';?>>SGD</option>
                                    
                                      <option value="THB" <?php if($listDetail->row()->currency == 'THB') echo 'selected="selected"';?>>THB</option>
                                    
                                      <option value="TRY" <?php if($listDetail->row()->currency == 'TRY') echo 'selected="selected"';?>>TRY</option>
                                    
                                      <option value="TWD" <?php if($listDetail->row()->currency == 'TWD') echo 'selected="selected"';?>>TWD</option>
                                    
                                      <option value="USD" <?php if($listDetail->row()->currency == 'USD') echo 'selected="selected"';?>>USD</option>
                                    
                                      <option value="VND" <?php if($listDetail->row()->currency == 'VND') echo 'selected="selected"';?>>VND</option>
                                    
                                      <option value="ZAR" <?php if($listDetail->row()->currency == 'ZAR') echo 'selected="selected"';?>>ZAR</option>
                                    
                                  </select>
                            
                            
                            </div>
                        
                        
                        </div>


						
					<!--	<label>Security Deposit</label>
                        
                        <div class="amoutnt-container">
                        
                      <input type="text" value="<?php echo $listDetail->row()->security_deposit;?>" class="per_amount_scroll"  name="security_deposit" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'security_deposit');" />
                           
</div>

                      <label>Extra People</label>
                        
                        <div class="amoutnt-container" style="border: medium none !important;">
                        
<select name="extra_people" id="extra_people" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'extra_people');">
<option value="">Select</option>
<?php for($i=1;$i<=20;$i++) {?>
<option value="<?php echo $i;?>" <?php if($i==$listDetail->row()->extra_people){?>selected="selected"<?php }?>><?php echo $i;?></option>
<?php } ?>
</select>						
 </div>-->
                    
                    
                    </div>
                   
                </form>



                </div>
                
                
                
            
            </div>
            <span class="onclk-text">Want to offer a discount for longer stays?<span onclick="show_block_cate('1')"> You can also set weekly and monthly prices.</span></span>
            
            <?php
			
			$display = ($listDetail->row()->price_perweek==0) ? "none" : "block";
			
			
			
			 ?>
            <div class="dashboard_price_main" id="monthly" style="display:<?php echo $display; ?>" >
            
            	<div class="dashboard_price">
            
                    <div class="dashboard_price_left">
                    
                    	<h3>Long-Term Prices</h3>
                        
                        <p>A title and summary displayed on your public listing page. </p>
                    
                    </div>
                    <form id="pricelist" name="pricelist" action="site/product/savePriceList" method="post">
                    <div class="dashboard_price_right">
                    
                    	<label>Per Week</label>
                        
                      <div class="amoutnt-container">
                        
                        	<?php if($listDetail->row()->currency != ''){
						$currency_type=$listDetail->row()->currency;
						$currency_symbol_query='SELECT * FROM '.CURRENCY.' WHERE currency_type="'.$currency_type.'"';
						$currency_symbol=$this->product_model->ExecuteQuery($currency_symbol_query);
	
						if($currency_symbol->num_rows() > 0)
						{
							$currency_sym = $currency_symbol->row()->currency_symbols;
						}
						else{
							$currency_sym = '$';
						}
						?>
						
							<span class="WebRupee"><?php echo $currency_sym; ?></span>
						<?php } else { ?>
							<span class="WebRupee">$</span>
						<?php } ?>
                        
                        	<input type="text" value="<?php echo intval($listDetail->row()->price_perweek);?>" class="per_amount_scroll"  name="price_perweek" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'price_perweek');" />
                            
                            <input type="hidden" id="id" name="id" value="<?php echo $listDetail->row()->id; ?>" />
                        
                        </div>
                        
<!-- 		<div class="text_price_highlight">
                        	<span class="WebRupee">$</span>
                        	<strong>15481</strong>
							suggested 
                        </div>  -->                        
                        
                        
                        <label>Per Month</label>
                        
                        <div class="amoutnt-container">
                        
                        	<?php if($listDetail->row()->currency != ''){
						$currency_type=$listDetail->row()->currency;
						$currency_symbol_query='SELECT * FROM '.CURRENCY.' WHERE currency_type="'.$currency_type.'"';
						$currency_symbol=$this->product_model->ExecuteQuery($currency_symbol_query);
	
						if($currency_symbol->num_rows() > 0)
						{
							$currency_sym = $currency_symbol->row()->currency_symbols;
						}
						else{
							$currency_sym = '$';
						}
						?>
						
							<span class="WebRupee"><?php echo $currency_sym; ?></span>
						<?php } else { ?>
							<span class="WebRupee">$</span>
						<?php } ?>
                        
                        	<input type="text" value="<?php echo intval($listDetail->row()->price_permonth);?>" class="per_amount_scroll"  name="price_permonth" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'price_permonth');" />
                            
                            <input type="hidden" id="id" name="id" value="<?php echo $listDetail->row()->id; ?>" />
                        
                        </div>
                        
<!-- 		<div class="text_price_highlight">
                        	<span class="WebRupee">$</span>
                        	<strong>30000</strong>
							suggested 
                        </div>  -->                        
                        
                      
                    
                    
                    </div>
                   
                </form>
                </div>
                
                
                
            
            </div>
            
            
            
            
           <!--<p class="price_text_links">Want to offer a discount for longer stays? <a href="javascript:;" onClick="return Visibility();">You can also set weekly and monthly prices.</a></p>-->
            
             <!-- monthly and weekly price -->
           
           
           
           <div class="dashboard_price_main" style="display:none">
            
            	<div class="dashboard_price1" style="display:none;">
            
                    <div class="dashboard_price_left">
                    
                    	<h3>Pricing</h3>
                        
                        <p>A title and summary displayed on your public listing page. </p>
                    
                    </div>
                    <form id="pricelist" name="pricelist" action="site/product/savePriceList" method="post">
                    <div class="dashboard_price_right">
                    
                    	<label>Per night</label>
                        
                        <div class="per_amount_main">
                        
                        	<span class="WebRupee">Rs</span>
                        
                        	<span style="margin-left:16px; margin-top:-46px; width:148px;"><input type="text" value="<?php echo $listDetail->row()->price;?>" class="per_amount_scroll"  name="price"  /></span>
                            
                            <input type="hidden" id="id" name="id" value="<?php echo $listDetail->row()->id; ?>" />
                        
                        </div>
                        
                        <div class="text_price_highlight">
                        
                        	<span class="WebRupee">Rs</span>
                        	<strong>5481</strong>
							suggested 
                        </div>
                        
                        <div class="dashboard_currency">
                        
                        	<label>Currency</label>
                            
                            <div class="select select-large select-block">
                            
                            	<select name="currency" onchange="this.form.submit();" id="currency" >
    
                                      <option value="ARS" <?php if($listDetail->row()->currency == 'ARS') echo 'selected="selected"';?>>ARS</option>
                                    
                                      <option value="AUD" <?php if($listDetail->row()->currency == 'AUD') echo 'selected="selected"';?>>AUD</option>
                                    
                                      <option value="BRL" <?php if($listDetail->row()->currency == 'BRL') echo 'selected="selected"';?>>BRL</option>
                                    
                                      <option value="CAD" <?php if($listDetail->row()->currency == 'CAD') echo 'selected="selected"';?>>CAD</option>
                                    
                                      <option value="CHF" <?php if($listDetail->row()->currency == 'CHF') echo 'selected="selected"';?>>CHF</option>
                                    
                                      <option value="CNY" <?php if($listDetail->row()->currency == 'CNY') echo 'selected="selected"';?>>CNY</option>
                                    
                                      <option value="CZK" <?php if($listDetail->row()->currency == 'CZK') echo 'selected="selected"';?>>CZK</option>
                                    
                                      <option value="DKK" <?php if($listDetail->row()->currency == 'DKK') echo 'selected="selected"';?>>DKK</option>
                                    
                                      <option value="EUR" <?php if($listDetail->row()->currency == 'EUR') echo 'selected="selected"';?>>EUR</option>
                                    
                                      <option value="GBP" <?php if($listDetail->row()->currency == 'GBP') echo 'selected="selected"';?>>GBP</option>
                                    
                                      <option value="HKD" <?php if($listDetail->row()->currency == 'HKD') echo 'selected="selected"';?>>HKD</option>
                                    
                                      <option value="HUF" <?php if($listDetail->row()->currency == 'HUF') echo 'selected="selected"';?>>HUF</option>
                                    
                                      <option value="IDR" <?php if($listDetail->row()->currency == 'IDR') echo 'selected="selected"';?>>IDR</option>
                                    
                                      <option value="ILS" <?php if($listDetail->row()->currency == 'ILS') echo 'selected="selected"';?>>ILS</option>
                                    
                                      <option value="INR" <?php if($listDetail->row()->currency == 'INR') echo 'selected="selected"';?>>INR</option>
                                    
                                      <option value="JPY" <?php if($listDetail->row()->currency == 'JPY') echo 'selected="selected"';?>>JPY</option>
                                    
                                      <option value="KRW" <?php if($listDetail->row()->currency == 'KRW') echo 'selected="selected"';?>>KRW</option>
                                    
                                      <option value="MYR" <?php if($listDetail->row()->currency == 'MYR') echo 'selected="selected"';?>>MYR</option>
                                    
                                      <option value="MXN" <?php if($listDetail->row()->currency == 'MXN') echo 'selected="selected"';?>>MXN</option>
                                    
                                      <option value="NOK" <?php if($listDetail->row()->currency == 'NOK') echo 'selected="selected"';?>>NOK</option>
                                    
                                      <option value="NZD" <?php if($listDetail->row()->currency == 'NZD') echo 'selected="selected"';?>>NZD</option>
                                    
                                      <option value="PHP" <?php if($listDetail->row()->currency == 'PHP') echo 'selected="selected"';?>>PHP</option>
                                    
                                      <option value="PLN" <?php if($listDetail->row()->currency == 'PLN') echo 'selected="selected"';?>>PLN</option>
                                    
                                      <option value="RUB" <?php if($listDetail->row()->currency == 'RUB') echo 'selected="selected"';?>>RUB</option>
                                    
                                      <option value="SEK" <?php if($listDetail->row()->currency == 'SEK') echo 'selected="selected"';?>>SEK</option>
                                    
                                      <option value="SGD" <?php if($listDetail->row()->currency == 'SGD') echo 'selected="selected"';?>>SGD</option>
                                    
                                      <option value="THB" <?php if($listDetail->row()->currency == 'THB') echo 'selected="selected"';?>>THB</option>
                                    
                                      <option value="TRY" <?php if($listDetail->row()->currency == 'TRY') echo 'selected="selected"';?>>TRY</option>
                                    
                                      <option value="TWD" <?php if($listDetail->row()->currency == 'TWD') echo 'selected="selected"';?>>TWD</option>
                                    
                                      <option value="USD" <?php if($listDetail->row()->currency == 'USD') echo 'selected="selected"';?>>USD</option>
                                    
                                      <option value="VND" <?php if($listDetail->row()->currency == 'VND') echo 'selected="selected"';?>>VND</option>
                                    
                                      <option value="ZAR" <?php if($listDetail->row()->currency == 'ZAR') echo 'selected="selected"';?>>ZAR</option>
                                    
                                  </select>
                            
                            
                            </div>
                        
                        
                        </div>
                    
                    
                    </div>
                   
                </form>
                </div>
                
                
                
            
            </div>
            
            
            <!-- monthly and weekly price end -->
            </div>
            
            
          
            
            
            
            
            
            <div class="calender_comments nwe">
            
            	<div class="calender_comment_content">
                
                	<i class="calender_comment_content_icon"><img src="images/calender_available_icon.jpg" /></i>
                    
                    <div class="calender_comment_text">
                    
                    	<h2>Setting a price</h2>
                    
                    	<p>For new listings with no reviews, it's important to set a competitive price. Once you get your first booking and review, you can raise your price!</p>
                        
                        <p><b>The suggested nightly price tip is based on:</b></p>
                        
                        <ol class="calender_comment_text_list">
                        
                        	<li>Seasonal travel demand in your area.</li>
                            
                            <li>The median nightly price of recent bookings in your city.</li>
                            
                            <li>The details of your listing.</li>
                       
                        </ol>
                        
                    
                    </div>
                    
                    
                
                </div>
            
            </div>
        	
        
        </div>
        
    </div>

<!---DASHBOARD-->
<script type="text/javascript">
function get_currency_symbol(elem)
{
currency_type=$(elem).val();
$.ajax({
type:'POST',
data:{currency_type:currency_type},
dataType:'json',
url:'<?php echo base_url();?>site/product/get_currency_symbol',
success:function(response)
{
if(response['currency_symbol'] !='no')
{
$('.WebRupee').text(response['currency_symbol']);
}
}
});
}
</script>

<script> 

function show_block_cate(columin_id)
{
  $(".onclk-text").css("display","none");
   $("#monthly").css("display","block");
  //$(".test-page-link"+columin_id).slideDown("slow");
}

$(window).load(function()
{
if('<?php echo  $listDetail->row()->currency;?>'=='')
{
$('#currency').val('MYR');
}
});

$(function()
{
if($('.dashboard_price_main').css('display')=='block')
{
//$('.onclk-text').css('display','none');
}
});
</script>


<?php
$this->load->view('site/templates/footer');
?>