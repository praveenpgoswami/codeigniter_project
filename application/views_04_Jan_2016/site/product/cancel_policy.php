<?php 
$this->load->view('site/templates/header');
$this->load->view('site/templates/listing_head_side');

	$can_policy="";
	$roombedVal=json_decode($listValues->row()->rooms_bed);
	$can_policy=$roombedVal->can_policy;
?>
<script src="js/site/<?php echo SITE_COMMON_DEFINE ?>addProperty.js"></script>
         
            <div class="right_side cancelation">
            
            <div class="dashboard_price_main">
			Please select your cancellation policy. You can read more about the cancellation policy <a target="_blank" href="<?php echo 'pages/'.$cancellation_policy->row()->seourl;?>"> here</a>.
           <?php //echo stripslashes($cancellation_policy->row()->description);?>
            </div>
			<div class="cancelation-text">
			<label>Cancellation Policy</label>
			<?php  //echo $listDetail->row()->cancellation_policy;?>
			<select name="cancellation_policy" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'cancellation_policy');">

			
			<?php
									  if($can_policy!=""){ 
										$can_policyArr=@explode(',',$can_policy);
										foreach($can_policyArr as $rows){
									  ?>
									
									 <option value="<?php echo $rows; ?>"<?php if($listDetail->row()->cancellation_policy == $rows) {echo 'selected="selected"';} ?>>
											<?php echo $rows; ?>
										</option>
									  <?php 
										}
									  } 
									?>
			</select><br>
			<label>Security Deposit</label>
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
			<input type="text" value="<?php echo $listDetail->row()->security_deposit;?>" class="per_amount_scroll"  name="security_deposit" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'security_deposit');" />
			</div>
				<input type="submit" onclick="window.location.reload(true);" value="Save" class="newline-btn" />
            </div>
            
        </div>
        
    </div>
<script type="text/javascript">
function DeleteListYoutProperty(val){
	//$('#delete_profile_image').disable();
	var res = window.confirm('Are you sure?');
	if(res){
		window.location.href = 'site/product/delete_property_details/'+val;
	}else{
		//$('#delete_profile_image').removeAttr('disabled');
		return false;
	}
}
</script>   
<!---DASHBOARD--> 
<?php
$this->load->view('site/templates/footer');
?>