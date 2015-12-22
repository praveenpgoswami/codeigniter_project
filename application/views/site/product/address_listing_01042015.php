<?php
$this->load->view('site/templates/header');
$this->load->view('site/templates/listing_head_side');
?>
<script src="js/site/<?php echo SITE_COMMON_DEFINE ?>addProperty.js"></script>

<div style='display:none'>

  <div id='inline_mapaddress' style='background:#fff;'>
  
  		<div class="popup_page">
  
  			<div class="popup_header">Enter Address
            	
                <div class="popup_sub_header">What is your listing's address?</div>
            
            </div>
            
            
            <div class="popup_detail">
            
            	<form name="rental_address" id="rental_address" method="post" action="site/product/insert_address">
            	<div class="banner_signup">
                
                		<ul class="popup_address">
                        
                        	<li>
                            	
                         
                         	<label>Country</label>
                            
                            <div class="select">
                            
                                <select class="popup_select required" onchange="javascript:loadCountryListValues(this)" name="country" tabindex="-1" data-placeholder="Please select the country name" id="country">
                            <option value="">Select Country</option>
                      <?php foreach ($RentalCountry->result() as $row){
						?>
                                        
                      <option value="<?php echo $row->id;?>" <?php if($row->id==$rental_address_country){ echo 'selected="selected"'; } ?>><?php echo $row->name;?></option>
                      <?php }?>
                    </select>
                            
                            </div>
                         
                         
                         	</li>
                            <li>
                         
                         	<label>State</label>
                            <div class="select" id="listCountryCnt">
                             <select class="popup_select required" name="state" id="state" onchange="javascript:loadStateListValues(this)" tabindex="-1" data-placeholder="Please select the state name">
                      <option value="">Select State</option>
                      <?php foreach ($RentalState->result() as $row){ ?>
							<option value="<?php echo $row->id;?>"<?php if($row->id==$rental_address_state){ echo 'selected="selected"'; } ?>><?php echo $row->name;?></option>
                      <?php }?>
                    </select>
                          </div>
                         </li>
                         
                          <li>
                         
                         	<label>City</label>
                            <div class="select" id="listStateCnt">
                            <select class="popup_select required" name="city" id="city" tabindex="-1" data-placeholder="Please select the city name">
                      <option value="">Select City</option>
                      <?php foreach ($RentalCity->result() as $row){?>
                      		<option value="<?php echo $row->id;?>"<?php if($row->id==$rental_address_city){ echo 'selected="selected"'; } ?>><?php echo $row->name;?></option>
                      <?php }?>
                    </select>
                           
                          </div>
                         </li>    
                         
                          <li>
                         
                         	<label>Street Address</label>
                            
                            <input name="address" id="address" type="text" value="<?php echo $rental_address->row()->address;?>" class="title_overview" />
                         
                         </li>
                         
                          <li>
                         
                         	<label>Apt, Suite, Bldg. (Optional)</label>
                            
                            <input type="text" name="apt" value="<?php echo $rental_address->row()->apt;?>" placeholder="e.g. Apt #7" class="title_overview" />
                         
                         </li>
                         
                         
                         <li>
                         
                         	<label>ZIP Code</label>
                            
                            <input type="text" name="post_code" id="post_code" value="<?php echo $rental_address->row()->post_code;?>"  placeholder="e.g. 94103" class="title_overview" />
                         
                         </li>
                         
                        <!-- <li>
                         
                         	<label>Neighborhoods</label>
                            <select style="width: 100%; height:100px;" class="title_overview" name="neighborhood[]" multiple="multiple" data-placeholder="Please select the neighborhood ">
                                                <?php $NeiborArr=array();$NeiborArr=@explode(',',$listDetail->row()->neighborhood); if($NeiborCity->num_rows() > 0){foreach ($NeiborCity->result() as $row){?>
                                                    <option value="<?php echo trim(stripslashes($row->seourl));?>" <?php if(in_array($row->seourl,$NeiborArr)){echo 'selected="selected"';} ?>> <?php echo $row->name;?></option>
                                                <?php }}?>
                                        </select>
                                                     
                         </li>-->
                         
                         
                         </ul>
                         
                         <div class="popup_address_bottom">
                         
                         	<input type="hidden" name="product_id" value="<?php echo $listDetail->row()->id; ?>" />
                         	<input type="hidden" name="latitude" id="latitude" value="<?php echo $rental_address->row()->latitude; ?>" />
                         	<input type="hidden" name="longitude" id="longitude" value="<?php echo $rental_address->row()->longitude; ?>" />
                         
                            <input type="submit" value="Submit" class="next_btn" onclick="return Address_Validation(this);" />
                            
                            <input type="reset" value="Cancel" class="cancel_btn" onclick="window.history.go();"/>
                         
                         </div>
                         
                                 
                     </div>
                    
                    </form>	
            </div>
        
        </div>
        
  </div>
  
</div>


            <div class="right_side address-left">
            
            <div class="dashboard_price_main" style="border-bottom:none;">
            
            	<div class="dashboard_price">
            
                    <div class="dashboard_price_left">
                    
                    	<h3>Address</h3>
                        
                        <p>Your exact address is private and only shared with guests after a reservation is confirmed.However the host are responsible to provide the exact road name of the accommodations in order for guest to be able to plan for their trip smoothly.</p>
                    
                    </div>
                    
                    <div class="dashboard_price_right">
                    
					<?php //var_dump($rental_address->row());die;?>
                    	<div class="address_map_main">
                        <?php if($rental_address->row()->latitude !='' || $rental_address->row()->longitude !=''){?>
						<!--<iframe width="375px" height="375px" src="https://maps.google.com/?q=<?php echo $rental_address->row()->latitude;?>,<?php echo $rental_address->row()->longitude;?>&amp;ie=UTF8&amp;t=m&amp;z=8&amp;ll=<?php echo $rental_address->row()->latitude;?>,<?php echo $rental_address->row()->longitude;?>&amp;spn=0.006295,0.006295&amp;iwloc=A&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>-->
					
  <div id="map" style="width:323px; height:482px"></div>
  
						
						<?php }else{ ?>
						 <div id="map" style="display:none;width:323px; height:482px"></div>
                        	<div class="address_map"><img src="images/empty-map.png" width="375px" /></div>
                        	<div class="address_pointer"><img src="images/map-pin.png" /></div>
                         <?php } ?>  
                         <!-- <script type="text/javascript" src="js/map_google_load.js"></script> -->
                         <script src='http://maps.google.com/maps?file=api&amp;v=2&amp;key=<?php echo $this->config->item('google_map_api');?>'></script>
 <!--  <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script> -->
  <script>
  function load() {
	  oldlat = '<?php echo $rental_address->row()->latitude;?>';
	  oldlng = '<?php echo $rental_address->row()->longitude;?>';
	  if(oldlat == '') oldlat='37.77264';
	  if(oldlng == '') oldlng='-122.40992';
      if (GBrowserIsCompatible()) {
        var map = new GMap2(document.getElementById("map"));
        map.addControl(new GSmallMapControl());
        map.addControl(new GMapTypeControl());
        var center = new GLatLng(oldlat,oldlng);
        map.setCenter(center, 15);
        geocoder = new GClientGeocoder();
        var marker = new GMarker(center, {draggable: true});  
        map.addOverlay(marker);
         $("#latitude").val(center.lat().toFixed(5));
        $("#longitude").val(center.lng().toFixed(5)); 

	  GEvent.addListener(marker, "dragend", function() {
       var point = marker.getPoint();
	      map.panTo(point);
        $("#latitude").val(point.lat().toFixed(5));
       $("#longitude").val(point.lng().toFixed(5)); 
       $.ajax({
			type:'POST',
			url:'<?php echo base_url()?>site/product/save_lat_lng',
			data:{latitude:point.lat().toFixed(5),longitude:point.lng().toFixed(5),product_id:'<?php echo $rental_address->row()->product_id; ?>'},
			success:function(response)
			{
			//alert('yes');
			}
		});

        });

      }
	}
	load();
	function showAddress(evt) {
		var country = $(evt).parents('form').find('#country option:selected').text();
		var state = $(evt).parents('form').find('#state option:selected').text();
		var city = $(evt).parents('form').find('#city option:selected').text();
		var street = $(evt).parents('form').find('#address').val();
		var zip = $(evt).parents('form').find('#post_code').val();
//		var country = 'Malaysia';
		address = street+','+city+','+state+','+country+' '+zip;
	   var map = new GMap2(document.getElementById("map"));
       map.addControl(new GSmallMapControl());
       map.addControl(new GMapTypeControl());
       if (geocoder) {
        geocoder.getLatLng(
          address,
          function(point) {
            if (!point) {
              alert("Address "+address + " not found");
              return false;
            } else {
            	$("#latitude").val(point.lat().toFixed(5));
            	$("#longitude").val(point.lng().toFixed(5));
            	$('#rental_address').submit();
            }
          }
        );
      }
    }
	</script> 
                            <div class="address_add">
                            <?php if($rental_address->row()->latitude =='' || $rental_address->row()->longitude ==''){?>
                            <span class="this-list">This listing has no address.</span>
                                 <?php } ?>                           	
                            	
                                <div class="add_address_main"><a class="add_address_btn add-address" href="#">Add Address</a></div>
                            
                            </div>
                        
                        
                        </div>
                    
                    </div>
                
                </div>
            
            </div>
            
            </div>
            
            <div class="calender_comments">
            
            	<div class="calender_comment_content">
                
                	<i class="calender_comment_content_icon"><img src="images/calender_available_icon.jpg" /></i>
                    
                    <div class="calender_comment_text">
                    
                    	<h2>Your Address is Private</h2>
                    
                    	<p>It will only be shared with guests after a reservation is confirmed.</p>
                        
                    
                    </div>
                    
                </div>
            
            </div>
        
        </div>
        
    </div>
    
 <script type="text/javascript">
 function Address_Validation(evt){
 	if(jQuery.trim($('#country').val())== ''){
		$('#country').focus();
		return false;
	}else if(jQuery.trim($('#state').val())== ''){
		$('#state').focus();
		return false;	
	}else if(jQuery.trim($('#city').val())== ''){
		$('#city').focus();
		return false;
	}else if(jQuery.trim($('#address').val())== ''){
		$('#address').focus();	
		return false;
	}else if(jQuery.trim($('#post_code').val())== ''){
		$('#post_code').focus();
		return false;	
	}else{
		showAddress(evt);
		return false;
		//$('#rental_address').submit();
		//return true;
	}
 
 }
 </script>   
<!---DASHBOARD-->
<?php
$this->load->view('site/templates/footer');
?>