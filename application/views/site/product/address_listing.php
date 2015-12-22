<?php
$this->load->view('site/templates/header');
$this->load->view('site/templates/listing_head_side');
$address = $rental_address->row()->address;
$street = '';
$street1 = '';
$area = '';
$location = '';
$city = '';
$state = '';
$country = '';
$lat = '';
$long = '';
$zip = '';
$address = str_replace(" ", "+", $address);
$json = file_get_contents("http://maps.google.com/maps/api/geocode/json?address=$address&sensor=false");
$json = json_decode($json);
//echo '<pre>';print_r($json);die;
$newAddress = $json->{'results'}[0]->{'address_components'};
foreach($newAddress as $nA)
{
	if($nA->{'types'}[0] == 'route')$street = $nA->{'long_name'};
	if($nA->{'types'}[0] == 'sublocality_level_2')$street1 = $nA->{'long_name'};
	if($nA->{'types'}[0] == 'sublocality_level_1')$area = $nA->{'long_name'};
	if($nA->{'types'}[0] == 'locality')$location = $nA->{'long_name'};
	if($nA->{'types'}[0] == 'administrative_area_level_2')$city = $nA->{'long_name'};
	if($nA->{'types'}[0] == 'administrative_area_level_1')$state = $nA->{'long_name'};
	if($nA->{'types'}[0] == 'country')$country = $nA->{'long_name'};
	if($nA->{'types'}[0] == 'postal_code')$zip = $nA->{'long_name'};
}
if($city == '')
$city = $location;

$lat = $json->{'results'}[0]->{'geometry'}->{'location'}->{'lat'};
$lang = $json->{'results'}[0]->{'geometry'}->{'location'}->{'lng'};
?>
<script src="js/site/<?php echo SITE_COMMON_DEFINE ?>addProperty.js"></script>

<div style='display:none'>

  <div id='inline_mapaddress' style='background:#fff;'>
  
  		<div class="popup_page">
  
  			<div class="popup_header"><?php if($this->lang->line('EnterAddress') != '') { echo stripslashes($this->lang->line('EnterAddress')); } else echo "Enter Address"; ?>
            	
                <div class="popup_sub_header"><?php if($this->lang->line('Whatisyour') != '') { echo stripslashes($this->lang->line('"Whatisyour')); } else echo "What is your listing's address?"; ?></div>
            
            </div>
            
            
            <div class="popup_detail">
            
            	<form name="rental_address" id="rental_address" method="post" action="site/product/insert_address">
            	<div class="banner_signup">
                
                		<ul class="popup_address">
                        
                        	<li>
                            	
                         
                         	<label>Location</label>
                            
                            <div class="select">
                            
                                <input type="text" class="title_overview" onblur="getAddressDetails();" name="address_location" placeholder="Please Enter the Location" id="address_location" value="<?php echo $rental_address->row()->address;?>" onFocus="geolocate()">
                            </div>
                         
                         
                         	</li>
							<li>
                            	
                         
                         	<label><?php if($this->lang->line('Country') != '') { echo stripslashes($this->lang->line('Country')); } else echo "Country"; ?></label>
                            
                            <div class="select">
                            
                                <input type="text" class="title_overview" name="country" placeholder="Please Enter the County" id="country" value="<?php echo $country;?>">
								
                            </div>
                         
                         
                         	</li>
                            <li>
                         
                         	<label><?php if($this->lang->line('State') != '') { echo stripslashes($this->lang->line('State')); } else echo "State"; ?></label>
                            <div class="select" id="listCountryCnt">
								<input type="text" class="title_overview" name="state" placeholder="Please Enter the State" id="state" value="<?php echo $state;?>">
                          </div>
                         </li>
                         
                          <li>
                         
                         	<label><?php if($this->lang->line('City') != '') { echo stripslashes($this->lang->line('City')); } else echo "City"; ?></label>
                            <div class="select" id="listStateCnt">
								<input type="text" class="title_overview" name="city" placeholder="Please Enter the City" id="city" value="<?php echo $city;?>">
                          </div>
                         </li>    
                         
                          <li>
                         
                         	<label><?php if($this->lang->line('StreetAddress') != '') { echo stripslashes($this->lang->line('StreetAddress')); } else echo "Street Address"; ?></label>
                            
                            <input name="address" id="address" type="text" value="<?php echo trim($street.' '.$street1);?>" class="title_overview" />
                         
                         </li>
                         
                         <li>
                         
                         	<label><?php if($this->lang->line('ZIPCode') != '') { echo stripslashes($this->lang->line('ZIPCode')); } else echo "ZIP Code"; ?></label>
                            
                            <input type="text" name="post_code" id="post_code" value=""  placeholder="e.g. 94103" class="title_overview" />
                         
                         </li>
                         
                         </ul>
                         
                         <div class="popup_address_bottom">
                         
                         	<input type="hidden" name="product_id" value="<?php echo $listDetail->row()->id; ?>" />
                         	<input type="hidden" name="latitude" id="latitude" value="<?php echo $rental_address->row()->lat; ?>" />
                         	<input type="hidden" name="longitude" id="longitude" value="<?php echo $rental_address->row()->lang; ?>" />
                         
                            <input type="submit" value="<?php if($this->lang->line('Submit') != '') { echo stripslashes($this->lang->line('Submit')); } else echo "Submit"; ?>" class="next_btn" onclick="return Address_Validation(this);" />
                            
                            <input type="reset" value="<?php if($this->lang->line('Cancel') != '') { echo stripslashes($this->lang->line('Cancel')); } else echo "Cancel"; ?>" class="cancel_btn" onclick="window.history.go();"/>
                         
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
                    
                    	<h3><?php if($this->lang->line('Address') != '') { echo stripslashes($this->lang->line('Address')); } else echo "Address"; ?></h3>
                        
                        <p><?php if($this->lang->line('Yourexactaddress') != '') { echo stripslashes($this->lang->line('Yourexactaddress')); } else echo "Your exact address is private and only shared with guests after a reservation is confirmed.However the host are responsible to provide the exact road name of the accommodations in order for guest to be able to plan for their trip smoothly."; ?></p>
                    
                    </div>
                    
                    <div class="dashboard_price_right">
                    
						<div class="address_map_main">
                        <?php if($rental_address->row()->lat !='' || $rental_address->row()->lang !=''){?>
						
					
						<div id="map" style="width:323px; height:482px"></div>
  
						
						<?php }else{ ?>
						 <div id="map" style="display:none;width:323px; height:482px"></div>
                        	<div class="address_map"><img src="images/empty-map.png" width="375px" /></div>
                        	<div class="address_pointer"><img src="images/map-pin.png" /></div>
                         <?php } ?>  
						 
						 <script>
							var myLatlng = new google.maps.LatLng(<?php echo $rental_address->row()->lat;?>,<?php echo $rental_address->row()->lang;?>);

							var citymap = {};
							citymap['chicago'] = {
							center: myLatlng,
							population: 200
							};

							var cityCircle;

							function initializeMapCircle() {
							// Create the map.
							var mapOptions = {
							zoom: 12,
							center: myLatlng,
							mapTypeId: google.maps.MapTypeId.TERRAIN
							};

							var map = new google.maps.Map(document.getElementById('map'),
							mapOptions);

							// Construct the circle for each value in citymap.
							// Note: We scale the area of the circle based on the population.
							for (var city in citymap) {
							var populationOptions = {
							strokeColor: '#FF0000',
							strokeOpacity: 0.8,
							strokeWeight: 2,
							fillColor: '#FF0000',
							fillOpacity: 0.35,
							map: map,
							center: citymap[city].center,
							radius: Math.sqrt(citymap[city].population) * 100
							};
							// Add the circle for this city to the map.
							cityCircle = new google.maps.Circle(populationOptions);
							}
							}

							google.maps.event.addDomListener(window, 'load', initializeMapCircle);

							</script>
	
	
	
                            <div class="address_add">
                            <?php if($rental_address->row()->lat =='' || $rental_address->row()->lang ==''){?>
                            <span class="this-list"><?php if($this->lang->line('Thislistinghas') != '') { echo stripslashes($this->lang->line('Thislistinghas')); } else echo "This listing has no address."; ?></span>
                                 <?php } ?>                           	
                            	
                                <div class="add_address_main"><a class="add_address_btn add-address" href="#"><?php if($this->lang->line('AddAddress') != '') { echo stripslashes($this->lang->line('AddAddress')); } else echo "Add Address"; ?></a></div>
                            
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
                    
                    	<h2><?php if($this->lang->line('YourAddressisPrivate') != '') { echo stripslashes($this->lang->line('YourAddressisPrivate')); } else echo "Your Address is Private"; ?></h2>
                    
                    	<p><?php if($this->lang->line('Itwillonly') != '') { echo stripslashes($this->lang->line('Itwillonly')); } else echo "It will only be shared with guests after a reservation is confirmed."; ?></p>
                        
                    
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
	}else{
		showAddress(evt);
		return false;
		//$('#rental_address').submit();
		//return true;
	}
 
 }
 
 
function getAddressDetails()
	{
		var address = $('#address_location').val();
		$.ajax({
			type: 'POST',
			url: baseURL+'site/product/get_location',
			data: {"address":address},
			dataType:'json',
			success: function(json){
				$('#country').val(json.country);
				$('#state').val(json.state);
				$('#city').val(json.city);
				$('#address').val(json.street);
				$('#post_code').val(json.zip);
				$('#latitude').val(json.lat);
				$('#longitude').val(json.lang);
			}
		});
		
	}
 </script>   
<!---DASHBOARD-->
<?php
$this->load->view('site/templates/footer');
?>