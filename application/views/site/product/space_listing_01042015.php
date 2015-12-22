<?php 
$this->load->view('site/templates/header');
$this->load->view('site/templates/listing_head_side');
?>
<?php
	$bedrooms="";
	$beds="";
	$bedtype="";
	$bathrooms="";
	$noofbathrooms="";
	$min_stay="";
	$accommodates="";
if($listValues->num_rows()==1){
	$roombedVal=json_decode($listValues->row()->rooms_bed);
	$bedrooms=$roombedVal->bedrooms;
	$beds=$roombedVal->beds;
	$bedtype=$roombedVal->bedtype;
	$bathrooms=$roombedVal->bathrooms;
	$noofbathrooms=$roombedVal->noofbathrooms;
	$min_stay=$roombedVal->min_stay;
	$accommodates=$roombedVal->accommodates;
}
?>
<script src="js/site/<?php echo SITE_COMMON_DEFINE ?>addProperty.js"></script>
         
            <div class="right_side space-listing">
            
            
            
            <div class="dashboard_price_main">
            
            	<div class="dashboard_price">
            
                    <div class="dashboard_price_left">
                    
                    	<h3>Rooms and Beds</h3>
                        
                        <p>The number of rooms and beds guests can access. </p>
                    
                    </div>
                    
                    <div class="dashboard_price_right">
                    
                    	<div class="dashboard_apart width100">
                        
                        	<label>Bedrooms</label>
                            
                            <div class="select">
                            
                            	<select class="rooms_select" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'bedrooms');" name="bedrooms">
    
                                      <option>Select</option>
                                      <?php 
									  if($bedrooms!=""){ 
										$bedroomsArr=@explode(',',$bedrooms);
										foreach($bedroomsArr as $row){
									  ?>
										<option value="<?php echo $row; ?>" <?php if($listDetail->row()->bedrooms == $row) echo 'selected="selected"'; ?>>
											<?php echo $row; ?>
										</option>
									  <?php 
										}
									  } 
									  ?>
                                      
                                  </select>
                            
                            
                            </div>
                        
                        
                        </div>
                        
                        <div class="dashboard_apart">
                        
                        	<label>Beds</label>
                            
                            <div class="select">
                            
                            	<select class="rooms_select"  onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'beds');" name="beds">
    
                                     <option value="">Select</option>
									 <?php 
									  if($beds!=""){ 
										$bedsArr=@explode(',',$beds);
										foreach($bedsArr as $row){
									  ?>
										<option value="<?php echo $row; ?>" <?php if($listDetail->row()->beds == $row) echo 'selected="selected"'; ?>>
											<?php echo $row; ?>
										</option>
									  <?php 
										}
									  } 
									  ?>
                               </select>
                            
                            
                            </div>
                        
                        
                        </div>
                        
                        <div class="dashboard_apart">
                        
                        	<label>Bed Type</label>
                            
                            <div class="select">
                            
                            	<select class="rooms_select" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'bed_type');" name="bed_type">
                                    <option value="">Select</option> 
									<?php 
									  if($bedtype!=""){ 
										$bedtypeArr=@explode(',',$bedtype);
										foreach($bedtypeArr as $row){
									  ?>
										<option value="<?php echo $row; ?>" <?php if($listDetail->row()->bed_type == $row) echo 'selected="selected"'; ?>>
											<?php echo $row; ?>
										</option>
									  <?php 
										}
									  } 
									  ?>
                                </select>
                            
                            
                            </div>
                        </div>
						
                        
                        <div class="dashboard_apart width100">                        
                        	<label>Bathrooms</label>
                            <div class="select">
                            	<select class="rooms_select" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'bathrooms');" name="bathrooms">
                                     <option value="">Select</option>
                                     <?php 
									  if($bathrooms!=""){ 
										$bathroomsArr=@explode(',',$bathrooms);
										foreach($bathroomsArr as $row){
									  ?>
										<option value="<?php echo $row; ?>" <?php if($listDetail->row()->bathrooms == $row) echo 'selected="selected"'; ?>>
											<?php echo $row; ?>
										</option>
									  <?php 
										}
									  } 
									  ?>									 
									 <?php /*  <option value="<?php echo $listDetail->row()->bathrooms;?>" <?php if($listDetail->row()->bathrooms != '') {echo 'selected="selected"';}else{ echo 'style="display:none"';} ?>>
										<?php echo $listDetail->row()->bathrooms;?>
									  </option> */ ?>
                                </select>
                            </div>
						</div>
                        
                        <div class="dashboard_apart width100">                        
                        	<label>Number of Bathrooms</label>
                            <div class="select">
                            	<select class="rooms_select" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'noofbathrooms');" name="noofbathrooms">
                                     <option value="">Select</option>
                                     <?php 
									  if($noofbathrooms!=""){ 
										$noofbathroomsArr=@explode(',',$noofbathrooms);
										foreach($noofbathroomsArr as $row){
									  ?>
										<option value="<?php echo $row; ?>" <?php if($listDetail->row()->noofbathrooms == $row) echo 'selected="selected"'; ?>>
											<?php echo $row; ?>
										</option>
									  <?php 
										}
									  } 
									  ?>					
                                </select>
                            </div>
						</div>
						
						
							<div class="dashboard_apart width100">
                        
                        	<label>Minimum Stay</label>
                            
                            <div class="select">
                            
                            	<select class="rooms_select" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'minimum_stay');" name="minimum_stay" >									
                                     <option value="">Select</option>
									 <?php 
									  if($min_stay!=""){ 
										$min_stayArr=@explode(',',$min_stay);
										foreach($min_stayArr as $row){
									  ?>
										<option value="<?php echo $row; ?>" <?php if($listDetail->row()->minimum_stay==$row){?>selected="selected"<?php }?>>
											<?php echo $row; ?>
										</option>
									  <?php 
										}
									  } 
									  ?>
                                </select>
                            
                            
                            </div>
                        
                         <input type="hidden" name="id" value="<?php echo $listDetail->row()->id;?>" />
                        </div>
                        
                    
                    </div>
                    
                </form>
                </div>
                
               <!-- <a href="site/product/redirect_base/<?php echo $listDetail->row()->id;?>"><input type="button" value="POST YOUR LIST" class="list_btn"/></a>-->
            
            </div>













            <div class="dashboard_price_main">
            
              <div class="dashboard_price">
            
                    <div class="dashboard_price_left">
                    
                      <h3>Listing Info</h3>
                        
                        <p>Basic information about your listing.</p>
                    
                    </div>
					
					<?php 
					
					$listvalue = $this->product_model->get_all_details(LISTSPACE_VALUES,array('listspace_id'=>9));
					//echo '<pre>'; print_r($listDetail->result_array());
					//die ?>
					
                   <form name="space_listing" method="post" action="site/product/saveSpacelist">
                    <div class="dashboard_price_right">
                    <?php
					$pcount=0;
					foreach($listspace->result() as $value){
					  $id=$value->id;
					 ?>
                      <div class="dashboard_apart">
                        
                          <label><?php echo $value->attribute_name; ?></label>
                            
                            <div class="select">
							<select  name="home_type"  onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'home_type');">
							<?php
                            $sql = 'SELECT * FROM fc_listspace_values WHERE listspace_id = '.$id;
							$inner = $this->db->query($sql);
							foreach($inner->result() as $listvalues)
						 {
						 if($pcount == 0){
						 ?>  
							  <option  <?php if($listvalues->list_value == $listDetail->row()->home_type) echo 'selected="selected"'; ?> ><?php echo $listvalues->list_value; ?></option>
							  <?php }else{  ?>
							   <option  <?php if($listvalues->list_value == $listDetail->row()->room_type) echo 'selected="selected"'; ?> ><?php echo $listvalues->list_value; ?></option>
                                 
						<?php
						
						}
						} ?>
						 </select>
                            </div>
                        </div>
						
						<?php 
						
						$pcount++;
						}
						?>
                        
                      
                        
                        <div class="dashboard_apart">
                        
                          <label>Accommodates</label>
                            
                            <div class="select">
                            
                              <select class="accommodates" name="accommodates" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'accommodates');">
 
									
									 <?php 
									  if($accommodates!=""){ 
										$accommodatesArr=@explode(',',$accommodates);
										foreach($accommodatesArr as $row){
									  ?>
										<option value="<?php echo $row; ?>" <?php if($listDetail->row()->accommodates==$row){?>selected="selected"<?php }?>>
											<?php echo $row; ?>
										</option>
									  <?php 
										}
									  } 
									  ?>
									
									
									
                                     <!-- <option value="1" <?php if($listDetail->row()->accommodates == 1) echo 'selected="selected"'; ?>>1</option>
                                      
                                      <option value="2"<?php if($listDetail->row()->accommodates == 2) echo 'selected="selected"'; ?>>2</option>
                                      
                                      <option value="3"<?php if($listDetail->row()->accommodates == 3) echo 'selected="selected"'; ?>>3</option>
                                      
                                      <option value="4"<?php if($listDetail->row()->accommodates == 4) echo 'selected="selected"'; ?>>4</option>
                                      
                                      <option value="5"<?php if($listDetail->row()->accommodates == 5) echo 'selected="selected"'; ?>>5</option>
                                      
                                      <option value="6"<?php if($listDetail->row()->accommodates == 6) echo 'selected="selected"'; ?>>6</option>
                                      
                                      <option value="7"<?php if($listDetail->row()->accommodates == 7) echo 'selected="selected"'; ?>>7</option>
                                      
                                      <option value="8"<?php if($listDetail->row()->accommodates == 8) echo 'selected="selected"'; ?>>8</option>
                                      
                                      <option value="9"<?php if($listDetail->row()->accommodates == 9) echo 'selected="selected"'; ?>>9</option>
                                      
                                      <option value="10"<?php if($listDetail->row()->accommodates == 10) echo 'selected="selected"'; ?>>10</option>
                                      
                                      <option value="11"<?php if($listDetail->row()->accommodates == 11) echo 'selected="selected"'; ?>>11</option>
                                      
                                      <option value="12"<?php if($listDetail->row()->accommodates == 12) echo 'selected="selected"'; ?>>12</option>
                                      
                                      <option value="13"<?php if($listDetail->row()->accommodates == 13) echo 'selected="selected"'; ?>>13</option>
                                      
                                      <option value="14"<?php if($listDetail->row()->accommodates == 14) echo 'selected="selected"'; ?>>14</option>
                                      
                                      <option value="15" <?php if($listDetail->row()->accommodates == 15) echo 'selected="selected"'; ?>>15</option>
                                      
                                      <option value="16"<?php if($listDetail->row()->accommodates == "16") echo 'selected="selected"'; ?>>16+</option>-->
                                      
                                  </select>
                            
                            
                            </div>
                        
                        
                        </div>
						
						
						<div class="dashboard_apart" style="display:none">
                        
                          <label>Minimum Stay</label>
                            
                            <div class="select">
                            <?php $type = $listDetail->row()->room_type;?>
                              <select name="room_type"  onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'minimum_stay');" > 
                              <option value="">Select</option>
							  <?php for($i=1;$i<=10;$i++){ ?>
							  <option value="<?php echo $i; ?>" <?php if($i==$listDetail->row()->minimum_stay){echo 'selected="selected"';}?>><?php echo $i.' Days'; ?></option>';
							 <?php }?>
							  </select>
                            
                            
                            </div>
                        
                        
                        </div>
                        
                    
                    </div>
                
                </div>
            
            </div>
            
          <!--   <p class="price_text_links">If you wish, you can permanently <a href="javascript:void(0);" onclick="return DeleteListYoutProperty('<?php echo $listDetail->row()->id; ?>');">delete this listing.</a></p> -->
            
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