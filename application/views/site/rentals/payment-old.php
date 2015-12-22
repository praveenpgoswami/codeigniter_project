<?php 
//echo '<pre>';print_r($productList->result());die;
$this->load->view('site/templates/header');
 $product = $productList->row();
 $BookingUser = $BookingUserDetails->row(); 

?>
<input type="hidden" id="rental_id" value="<?php echo $product->id; ?>" />
<script type="text/javascript" src="js/site/SpryTabbedPanels.js"></script>
<!---DASHBOARD-->
<div class="dashboard">

	<div class="main">
    	
        <div class="payment_main">
        
        	<div class="payment_works">
            
                <h1>How this works</h1>
                  <p>
                    Please provide your billing details to complete your reservation.  If you provide a profile photo and a message to the host, you will receive instant confirmation of your reservation; otherwise you will receive a response within 24 hours.  You will not be charged until your reservation is confirmed.
                  </p>
            
            </div>
            
            <div class="payment_user">
                      
                        <h1>1. Include a message to your host</h1>
                        <p>Hosts like to know the purpose of your trip and the others traveling in your party. They also appreciate knowing what you like about their place.</p>
                        <p>If you have any questions, include those too.</p>
                        
                        
                        <div class="payment_comments">
                        
                          <div class="payment_user_box">
                                 
                                 <span class="payment_img"><img src="images/users/<?php if($product->userphoto!=''){echo $product->userphoto;}else{echo 'user_thumb.png';} ?>" /></span>  
                                
                                 <strong><?php if($product->user_name!=''){echo $product->user_name;}else{} ?></strong>
                              
                          </div>
                          <textarea class="payment_comments_text" rows="5" name="Enquiry" id="Enquiry"></textarea>
						  
						  <input type="hidden" id="guide_id" name="guide_id" value="<?php echo $product->id; ?>" />
                        </div>
                        
                        <div class="payment_listing">
                          
                            <h1>2. The Listing</h1>
                            
                            <div class="payment_box">
                            
                                <span class="payment_box_photo"><img src="<?php echo PRODUCTPATH.$product->product_image; ?>" width="74" height="114" /></span>
                    
                              <div class="product_payment_detail">
                              
                                <h2><a target="_blank" class="listing_link" href="rental/<?php echo $product->id; ?>"><?php echo $product->product_title; ?></a></h2>
                                
                                <div class="product_payment_detail_main">
                                
                                  <div class="product_payment_detail_left">
                                  
                                    <?php echo $product->address; ?><br><?php echo $product->city_name; ?>, <?php echo $product->statename; ?> <?php echo $product->post_code; ?><br>United States
                                    
                                  </div>
                                  
                                  <div class="product_payment_detail_right">
                                  
                                    <ul>
                                    
                                      <li>
                                        <span class="property">Room Type:</span>
                                        <span class="value"><?php echo $product->room_type; ?></span>
                                      </li>
                                      
                                      <li>
                                          <span class="property">Cancellation:</span>
                                      </li>
                                      
                                    </ul>
                                    
                                  </div>
                                  
                                  
                                </div>
                                
                              </div>
                              
                            </div>
                            
                          </div>

                        <div class="payment_trip">
                        
                            <h1>3. Your Trip</h1>
                    
                            <ul class="payment_trip_detail">
                            
                              <li class="top">
                              
                                <span class="label-old"><span class="inner"><span class="checkout_icon icon_cal"></span>Check in</span></span>
                                <span class="data"><span class="inner"><?php echo $product->checkin; ?> <em class="check_in_out_time">(Flexible check in time)</em></span></span>
                                
                              </li>
                              <li>
                              
                                <span class="label-old"><span class="inner"><span class="checkout_icon icon_cal"></span>Check out</span></span>
                                <span class="data"><span class="inner"><?php echo $product->checkout; ?> <em class="check_in_out_time">(Flexible check out time)</em></span></span>
                                
                              </li>
                              <li>
                              
                                <span class="label-old"><span class="inner"><span class="checkout_icon icon_cal"></span>Nights</span></span>
                                <span class="data"><span class="inner"><?php echo $product->numofdates; ?></span></span>
                                
                              </li>
                              <li class="bottom">
                              
                                <span class="label-old"><span class="inner"><span class="checkout_icon icon_person"></span>Guests</span></span>
                                <span class="data"><span class="inner"><?php echo $product->NoofGuest; ?></span></span>
                                
                              </li>
                              
                            </ul>
                    
                    
                            <ul class="payment_trip_detail">
                                <li class="top">
                                  <span class="label-old">
                                    <span class="inner">
                                      <span id="icon_cal" class="checkout_icon"></span>Rate (per night)
                                    </span>
                                  </span>
                                  <span class="data">
                                    <span class="inner">
                                      <?php echo $currencySymbol; ?><?php echo $product->price * $this->session->userdata('currency_r'); ?><sup></sup>
                                    </span>
                                  </span>
                                </li>
                    
                                <li>
                                  <span class="label-old">
                                    <span class="inner"><span id="icon_cal" class="checkout_icon"></span>Cleaning fee</span>
                                  </span>
                                  <span class="data">
                                    <span class="inner">
                                      ----<sup></sup>
                                    </span>
                                  </span>
                                </li>
                    
                              <li>
                                <span class="label-old"><span class="inner"><span class="checkout_icon icon_calc"></span>
                                      Subtotal
                                </span></span>
                                <span class="data">
                                  <span class="inner">
                                     <?php echo $currencySymbol; ?><?php echo ($product->price * $this->session->userdata('currency_r')) * $product->numofdates; ?><sup></sup>
                                  </span>
                                
                                </span>
                              </li>
                                 <li>
                                    <span class="label-old"><span class="inner">
                                      <span class="checkout_icon icon_check"></span>
                                      Service fee
                                    </span></span>
                                    <span class="data">
                                        <span class="inner">
                                          <?php if($tax->row()->promotion_type=='flat')
										  {
										  echo $currencySymbol.$tax->row()->commission_percentage;
										  }
										  else{
										  echo $currencySymbol.(($product->price * $this->session->userdata('currency_r')) * $product->numofdates*$BookingUserDetails->row()->NoofGuest)*$tax->row()->commission_percentage/100;
										  }
										  
										  ?>
                                        </span>
                                    </span>
                                  </li>
                                  
                                <li class="bottom payment_total">
                                  <span class="label-old"><span class="inner"><span class="checkout_icon icon_star"></span>Total</span></span>
                                  <span class="data">
                                    <span class="inner">
									 <?php
									 $subtotal=($product->price * $this->session->userdata('currency_r')) * $product->numofdates;
									 //$subtotal=($product->price * $this->session->userdata('currency_r')) * $product->numofdates*$BookingUserDetails->row()->NoofGuest;

               							if($tax->row()->promotion_type=='flat')
										  {
										 $tax_price=$tax->row()->commission_percentage;
										  }
										  else{
										 $tax_price=(($product->price * $this->session->userdata('currency_r')) * $product->numofdates*$BookingUserDetails->row()->NoofGuest)*$tax->row()->commission_percentage/100;
										  }
										   
										  ?>
                                        <?php echo $currencySymbol; ?><?php echo $subtotal+$tax_price; ?><sup></sup>
                                    </span>
                                  </span>
                                </li>
                            </ul>
                    
                          </div>

       					<div class="payment_listing">
        
          <h1>4. Additional Required Information</h1>


            <div class="payment_box">

                <div class="payment_verification">
                
                  <label>What city are you currently in?</label>
                  
                  <input type="text" class="location" autocomplete="off" id="location" name="city" placeholder="Where do you want to go?"  />
                  <div id="location_warn" ></div>
                  <span class="example">e.g. New York, NY; San Francisco, CA; Paris, FR</span>
                  
                </div>
                
            </div>
            
            </div>
            
                        <div class="payment_box">
                        
                             <div class="payment_info_box">
                             
                                  <div class="payment_info_box_link">
                               
                                    <label>
                                      <input type="radio" value="Yes" name="caltophone" checked="checked" />
                                      Yes
                                    </label>
                                    <label>
                                      <input type="radio" value="No" name="caltophone" />
                                      No
                                    </label>
                                    
                                  </div>
                                
                                  <span class="payment_info_box_inquiry"> Can this host call you about your inquiry?</span>
                                  
                        </div>
            
                            <div class="payment_suggestion">
                            
                              <span>Your number won't be revealed. They can only call from 9am to 9pm in your time zone.</span>
                              
                              <label class="label-inline" for="guest_preferences_time_zone">
                                Your time zone:
                              </label>
                              <div class="select">
                              
                                <select style="width:500px !important; display:block !important;" id="enquiry_timezone" name="enquiry_timezone">
                                      <option value="Hawaii">(GMT-10:00) Hawaii</option>
                                        <option value="Alaska">(GMT-09:00) Alaska</option>
                                        <option value="Pacific Time (US &amp; Canada)">(GMT-08:00) Pacific Time (US &amp; Canada)</option>
                                        <option value="Arizona">(GMT-07:00) Arizona</option>
                                        <option value="Mountain Time (US &amp; Canada)">(GMT-07:00) Mountain Time (US &amp; Canada)</option>
                                        <option selected="selected" value="Central Time (US &amp; Canada)">(GMT-06:00) Central Time (US &amp; Canada)</option>
                                        <option value="Eastern Time (US &amp; Canada)">(GMT-05:00) Eastern Time (US &amp; Canada)</option>
                                        <option value="Indiana (East)">(GMT-05:00) Indiana (East)</option><option disabled="disabled" value="">-------------</option>
                                        <option value="International Date Line West">(GMT-11:00) International Date Line West</option>
                                        <option value="Midway Island">(GMT-11:00) Midway Island</option>
                                        <option value="Samoa">(GMT-11:00) Samoa</option>
                                        <option value="Tijuana">(GMT-08:00) Tijuana</option>
                                        <option value="Chihuahua">(GMT-07:00) Chihuahua</option>
                                        <option value="Mazatlan">(GMT-07:00) Mazatlan</option>
                                        <option value="Central America">(GMT-06:00) Central America</option>
                                        <option value="Guadalajara">(GMT-06:00) Guadalajara</option>
                                        <option value="Mexico City">(GMT-06:00) Mexico City</option>
                                        <option value="Monterrey">(GMT-06:00) Monterrey</option>
                                        <option value="Saskatchewan">(GMT-06:00) Saskatchewan</option>
                                        <option value="Bogota">(GMT-05:00) Bogota</option>
                                        <option value="Lima">(GMT-05:00) Lima</option>
                                        <option value="Quito">(GMT-05:00) Quito</option>
                                        <option value="Caracas">(GMT-04:30) Caracas</option>
                                        <option value="Atlantic Time (Canada)">(GMT-04:00) Atlantic Time (Canada)</option>
                                        <option value="La Paz">(GMT-04:00) La Paz</option>
                                        <option value="Santiago">(GMT-04:00) Santiago</option>
                                        <option value="Newfoundland">(GMT-03:30) Newfoundland</option>
                                        <option value="Brasilia">(GMT-03:00) Brasilia</option>
                                        <option value="Buenos Aires">(GMT-03:00) Buenos Aires</option>
                                        <option value="Georgetown">(GMT-03:00) Georgetown</option>
                                        <option value="Greenland">(GMT-03:00) Greenland</option>
                                        <option value="Mid-Atlantic">(GMT-02:00) Mid-Atlantic</option>
                                        <option value="Azores">(GMT-01:00) Azores</option>
                                        <option value="Cape Verde Is.">(GMT-01:00) Cape Verde Is.</option>
                                        <option value="Casablanca">(GMT) Casablanca</option>
                                        <option value="Dublin">(GMT) Dublin</option>
                                        <option value="Edinburgh">(GMT) Edinburgh</option>
                                        <option value="Lisbon">(GMT) Lisbon</option>
                                        <option value="London">(GMT) London</option>
                                        <option value="Monrovia">(GMT) Monrovia</option>
                                        <option value="Amsterdam">(GMT+01:00) Amsterdam</option>
                                        <option value="Belgrade">(GMT+01:00) Belgrade</option>
                                        <option value="Berlin">(GMT+01:00) Berlin</option>
                                        <option value="Bern">(GMT+01:00) Bern</option>
                                        <option value="Bratislava">(GMT+01:00) Bratislava</option>
                                        <option value="Brussels">(GMT+01:00) Brussels</option>
                                        <option value="Budapest">(GMT+01:00) Budapest</option>
                                        <option value="Copenhagen">(GMT+01:00) Copenhagen</option>
                                        <option value="Ljubljana">(GMT+01:00) Ljubljana</option>
                                        <option value="Madrid">(GMT+01:00) Madrid</option>
                                        <option value="Paris">(GMT+01:00) Paris</option>
                                        <option value="Prague">(GMT+01:00) Prague</option>
                                        <option value="Rome">(GMT+01:00) Rome</option>
                                        <option value="Sarajevo">(GMT+01:00) Sarajevo</option>
                                        <option value="Skopje">(GMT+01:00) Skopje</option>
                                        <option value="Stockholm">(GMT+01:00) Stockholm</option>
                                        <option value="Vienna">(GMT+01:00) Vienna</option>
                                        <option value="Warsaw">(GMT+01:00) Warsaw</option>
                                        <option value="West Central Africa">(GMT+01:00) West Central Africa</option>
                                        <option value="Zagreb">(GMT+01:00) Zagreb</option>
                                        <option value="Athens">(GMT+02:00) Athens</option>
                                        <option value="Bucharest">(GMT+02:00) Bucharest</option>
                                        <option value="Cairo">(GMT+02:00) Cairo</option>
                                        <option value="Harare">(GMT+02:00) Harare</option>
                                        <option value="Helsinki">(GMT+02:00) Helsinki</option>
                                        <option value="Istanbul">(GMT+02:00) Istanbul</option>
                                        <option value="Jerusalem">(GMT+02:00) Jerusalem</option>
                                        <option value="Kyiv">(GMT+02:00) Kyiv</option>
                                        <option value="Minsk">(GMT+02:00) Minsk</option>
                                        <option value="Pretoria">(GMT+02:00) Pretoria</option>
                                        <option value="Riga">(GMT+02:00) Riga</option>
                                        <option value="Sofia">(GMT+02:00) Sofia</option>
                                        <option value="Tallinn">(GMT+02:00) Tallinn</option>
                                        <option value="Vilnius">(GMT+02:00) Vilnius</option>
                                        <option value="Baghdad">(GMT+03:00) Baghdad</option>
                                        <option value="Kuwait">(GMT+03:00) Kuwait</option>
                                        <option value="Moscow">(GMT+03:00) Moscow</option>
                                        <option value="Nairobi">(GMT+03:00) Nairobi</option>
                                        <option value="Riyadh">(GMT+03:00) Riyadh</option>
                                        <option value="St. Petersburg">(GMT+03:00) St. Petersburg</option>
                                        <option value="Volgograd">(GMT+03:00) Volgograd</option>
                                        <option value="Tehran">(GMT+03:30) Tehran</option>
                                        <option value="Abu Dhabi">(GMT+04:00) Abu Dhabi</option>
                                        <option value="Baku">(GMT+04:00) Baku</option>
                                        <option value="Muscat">(GMT+04:00) Muscat</option>
                                        <option value="Tbilisi">(GMT+04:00) Tbilisi</option>
                                        <option value="Yerevan">(GMT+04:00) Yerevan</option>
                                        <option value="Kabul">(GMT+04:30) Kabul</option>
                                        <option value="Ekaterinburg">(GMT+05:00) Ekaterinburg</option>
                                        <option value="Islamabad">(GMT+05:00) Islamabad</option>
                                        <option value="Karachi">(GMT+05:00) Karachi</option>
                                        <option value="Tashkent">(GMT+05:00) Tashkent</option>
                                        <option value="Chennai">(GMT+05:30) Chennai</option>
                                        <option value="Kolkata">(GMT+05:30) Kolkata</option>
                                        <option value="Mumbai">(GMT+05:30) Mumbai</option>
                                        <option value="New Delhi">(GMT+05:30) New Delhi</option>
                                        <option value="Kathmandu">(GMT+05:45) Kathmandu</option>
                                        <option value="Almaty">(GMT+06:00) Almaty</option>
                                        <option value="Astana">(GMT+06:00) Astana</option>
                                        <option value="Dhaka">(GMT+06:00) Dhaka</option>
                                        <option value="Novosibirsk">(GMT+06:00) Novosibirsk</option>
                                        <option value="Sri Jayawardenepura">(GMT+06:00) Sri Jayawardenepura</option>
                                        <option value="Rangoon">(GMT+06:30) Rangoon</option>
                                        <option value="Bangkok">(GMT+07:00) Bangkok</option>
                                        <option value="Hanoi">(GMT+07:00) Hanoi</option>
                                        <option value="Jakarta">(GMT+07:00) Jakarta</option>
                                        <option value="Krasnoyarsk">(GMT+07:00) Krasnoyarsk</option>
                                        <option value="Beijing">(GMT+08:00) Beijing</option>
                                        <option value="Chongqing">(GMT+08:00) Chongqing</option>
                                        <option value="Hong Kong">(GMT+08:00) Hong Kong</option>
                                        <option value="Irkutsk">(GMT+08:00) Irkutsk</option>
                                        <option value="Kuala Lumpur">(GMT+08:00) Kuala Lumpur</option>
                                        <option value="Perth">(GMT+08:00) Perth</option>
                                        <option value="Singapore">(GMT+08:00) Singapore</option>
                                        <option value="Taipei">(GMT+08:00) Taipei</option>
                                        <option value="Ulaan Bataar">(GMT+08:00) Ulaan Bataar</option>
                                        <option value="Urumqi">(GMT+08:00) Urumqi</option>
                                        <option value="Osaka">(GMT+09:00) Osaka</option>
                                        <option value="Sapporo">(GMT+09:00) Sapporo</option>
                                        <option value="Seoul">(GMT+09:00) Seoul</option>
                                        <option value="Tokyo">(GMT+09:00) Tokyo</option>
                                        <option value="Yakutsk">(GMT+09:00) Yakutsk</option>
                                        <option value="Adelaide">(GMT+09:30) Adelaide</option>
                                        <option value="Darwin">(GMT+09:30) Darwin</option>
                                        <option value="Brisbane">(GMT+10:00) Brisbane</option>
                                        <option value="Canberra">(GMT+10:00) Canberra</option>
                                        <option value="Guam">(GMT+10:00) Guam</option>
                                        <option value="Hobart">(GMT+10:00) Hobart</option>
                                        <option value="Melbourne">(GMT+10:00) Melbourne</option>
                                        <option value="Port Moresby">(GMT+10:00) Port Moresby</option>
                                        <option value="Sydney">(GMT+10:00) Sydney</option>
                                        <option value="Vladivostok">(GMT+10:00) Vladivostok</option>
                                        <option value="Magadan">(GMT+11:00) Magadan</option>
                                        <option value="New Caledonia">(GMT+11:00) New Caledonia</option>
                                        <option value="Solomon Is.">(GMT+11:00) Solomon Is.</option>
                                        <option value="Auckland">(GMT+12:00) Auckland</option>
                                        <option value="Fiji">(GMT+12:00) Fiji</option>
                                        <option value="Kamchatka">(GMT+12:00) Kamchatka</option>
                                        <option value="Marshall Is.">(GMT+12:00) Marshall Is.</option>
                                        <option value="Wellington">(GMT+12:00) Wellington</option>
                                        <option value="Nuku'alofa">(GMT+13:00) Nuku'alofa</option>
								</select>
                                  
                              </div>
                              
                            </div>
            
                            <div class="payment_contact">
                            
                              <hr class="thin_line">
                              
                                <label>What is your best contact phone number?</label>
                                
                                <input type="text" value="" name="phone_no" id="phone_no"  />
                                
                            </div>
                            
                        </div>
            
			
			
		
			          
			
			
                      	<div class="payment_box">
                
                        <h1>5. Payment options 
                         
                         </h1>
                         
                         
                         <div id="TabbedPanels1" class="TabbedPanels">
           
                                <ul class="TabbedPanelsTabGroup">
                                  <li class="TabbedPanelsTab " tabindex="0" onclick="return submit_button1();">Credit Card</li>
                                  <li class="TabbedPanelsTab " tabindex="0" onclick="return submit_button2();">PayPal</li>
                                </ul>
            
                                    <div class="TabbedPanelsContentGroup">
                                    
                                      <div class="TabbedPanelsContent ">
                                         <form method="post" action="site/checkout/PaymentCredit" id="credit_card_form">
                                      		<div class="payment_detail_method">
                                      
                                     		
                                        
                                            
                                              <div class="payment_left">
                                              
                                                <label>First Name</label>
                                                <input type="text" value="<?php echo $BookingUser->firstname; ?>" id="firstname" name="firstname" style="width:138px;" size="30"  />
                                                
                                        
                                                <label>Last Name</label>
                                                <input type="text" value="<?php echo $BookingUser->lastname; ?>" id="lastname" name="lastname" style="width:138px;" size="30"  />
                                                
                                        
                                                <label>Street Address</label>
                                                <input type="text" value="<?php echo $BookingUser->UserAddress; ?>" size="30" id="address" name="address"  />
                                                
                                        
                                                <label>Apt, Suite, Bldg (optional)</label>
                                                <input type="text" id="suite" name="suite" size="30"  />
                                                
                                        
                                                <label>City</label>
                                                <input type="text" id="city" name="city" value="<?php echo $BookingUser->UserCity; ?>" style="width:151px;" size="30"  />
                                        
                                                <label>State</label>
                                                <input type="text" id="state" name="state" value="<?php echo $BookingUser->UserState; ?>" style="width:40px;" size="30"  />
                                        
                                                <label>Postal Code</label>
                                                <input type="text" id="postal_code" name="postal_code" value="<?php echo $BookingUser->UserPostCode; ?>" style="width:75px;" size="30"  /><span style="margin-left:10px;"><b><?php echo $BookingUser->UserCountry; ?></b></span>
                                        
                                              </div>
                                              
                                        
                                              <div  class="payment_right">
                                              
                                                <label><?php if($this->lang->line('checkout_card_type') != '') { echo stripslashes($this->lang->line('checkout_card_type')); } else echo "Card Type"; ?></label>
                                                	<select id="cardType" name="cardType">
                                                   		<option value="visa">Visa</option>
                                                        <option value="mastercard">MasterCard</option>
                                                        <option value="american_express">American Express</option>
                                                        <option value="discover">Discover</option>
                                                        <option value="jcb">JCB</option>
                                                    </select>
                                        
                                                <div style="position:relative;">
                                                
                                                  <label><?php if($this->lang->line('checkout_card_no') != '') { echo stripslashes($this->lang->line('checkout_card_no')); } else echo "Credit Card Number"; ?></label>
                                                  <input  id="cardNumber" name="cardNumber" type="text" style="width:222px; margin-top:5px;" autocomplete="off" />
                                                  
                                                  </div>
                                        
                                                <label><?php if($this->lang->line('checkout_exp_date') != '') { echo stripslashes($this->lang->line('checkout_exp_date')); } else echo "Expiration Date"; ?></label>
                                                
                                                <select id="CCExpDay" name="CCExpDay" style="margin-right:5px; width:100px; float:left;">
                                                	<?php for($i=1;$i<13;$i++)
															{
																echo '<option value="'.$i.'">'.$i.'</option>';
															}?>
                                                </select>
                                                
                                                <select id="CCExpMnth" name="CCExpMnth"  style="margin-right:5px; width:100px; float:left;">
											<?php for($i=date('Y');$i< (date('Y') + 25);$i++){ ?>	
												<option value="<?php echo $i; ?>"><?php echo $i; ?></option>
                                            <?php } ?>    
											</select>
                                                
                                                <input type="hidden" value="authorize" name="creditvalue" />
                                                
                                        		<input type="hidden" value="<?php echo $product->price; ?>" name="total_price" />
												
				                                <input type="hidden" value="<?php echo $product->id; ?>" name="booking_rental_id" />
                                                <label><?php if($this->lang->line('checkout_security_code') != '') { echo stripslashes($this->lang->line('checkout_security_code')); } else echo "Security Code"; ?></label>
                                                <input id="payment-card-security" name="creditCardIdentifier" type="password" style="width:84px;" size="4" autocomplete="off" />
                                                
                                              </div>
                                                                                    
                                            </div>
                                         </form>
                                            
                                      </div>
                                      <div class="TabbedPanelsContent">
                                      
                                      <div class="currency_alert">This payment transacts in
                                               <?php echo $currencySymbol; ?>.  Your total charge is <?php echo $currencySymbol.' '.($product->price * $this->session->userdata('currency_r')) * $product->numofdates; ?>.
                                            </div>
                                        
                                            <p class="payment_method_paypal">
                                                <span style="font-weight:bold;">Instructions:</span>
                                                <br>
                                                After clicking "Book it" you will be redirected to PayPal to authorize the payment.
                                                <span style="font-weight:bold;">
                                                  You must complete the process or the transaction will not occur.
                                                </span>
                                            </p>
                                        
                                      </div>
                                      
                                      
                                 <script type="text/javascript">
                                    
                                    var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
                                   
                                    </script>
                                    
                                    </div>
            
           					<div class="clear"></div>
           
          				</div>
                        
                      </div>

                        <div class="payment_listing">
                        
                            <h1>6. Policies</h1>
                    
                            <ul class="payment_trip_detail">
                              <li class="top">
                                <span class="label-old">
                                  <span class="inner"><span class="checkout_icon icon_crossed_out"></span>Cancellation</span>
                                </span>
                                <span class="data">
                                  <span class="inner">
                                    <a class="cancel-policy-link" target="_blank"  href="<?php echo base_url();?>pages/cancellation-policies">Strict: 50% refund up until 1 week prior to arrival, except fees</a>
                                  </span>
                                </span>
                              </li>
                              <li class="bottom">
                                <span class="label-old">
                                  <span class="inner">
                                    <span class="checkout_icon icon_house"></span>
                                    <span class="house_rules_label">House Rules</span>
                                  </span>
                                </span>
                                <span class="data">
                                  <span class="inner">
                                    <a class="house-rules-link" target="_blank"  href="<?php echo base_url();?>pages/privacy-policy">Read Policy</a>
                                  </span>
                                </span>
                              </li>
                    
                              <div class="clear"></div>
                            </ul>
                          </div>


                          <div class="payment_agree" style="padding-bottom:10px;">
                            <p>
                            
                            <input type="checkbox" style="float:left; width:25px;" id="terms" />
                            
                            <label for="agrees_to_terms">I agree to the <a target="_blank" class="terms_link" href="<?php echo base_url();?>pages/privacy-policy">terms of service</a>.<span id="terms_warn"></span></label></p>                            
                    
                            <input type="submit" id="card" style="margin:10px 0 0 10px;" onclick="return credit_card_form_func();" value="Book it using Credit Card"  class="btn large green"></span>
                            <div id="paypal_but" style="display:none"><input type="submit" id="paypal" style="margin:10px 0 0 10px;" onclick="paypal_form();" value="Book it using Paypal"  class="btn large green"></div>
                          </div>

            </div>
        
        </div>
        
    </div>
    
    <div class="dashboard_bottom">
    
    	<div class="main">
        
        	<ul class="dashboard_links">
            
            	<li class="center">
                
                	<div class="trust_box"><img src="images/site/trust.jpg" /></div>
                    
                    <h3>Trust & Safety</h3>
                    
                    <p>World-class security & communications features mean you never have to accept a booking unless you're 100% comfortable.</p>
                
                </li>
                
               <li class="center">
                
                	<div class="trust_box trust_shadow"><img src="images/host_guarantee.png" width="98" height="98" /></div>
                    
                    <h3>$1,000,000 Host Guarantee</h3>
                    
                    <p>Your peace of mind is priceless. So we don't charge for it. Every single booking on Rental-ya is covered by our Host Guarantee - at no cost to you.</p>
                
                </li>
                
                <li class="center">
                
                	<div class="trust_box"><img src="<?php echo base_url(); ?>images/site/host_couple.jpg" /></div>
                    
                    <h3>Secure Payments</h3>
                    
                    <p>Our fast, flexible payment system puts money in your bank account 24 hours after guests check in.</p>
                
                </li>
            
            </ul>
        
        </div>
    
    </div>
    
    
</div>
<!---DASHBOARD-->
<input type="hidden" value="<?php echo $subtotal+$tax_price;?>" id="totprice" />

												
<script type="text/javascript">
function credit_card_form_func()
{ 

	var caltophone=jQuery("input:radio[name=caltophone]:checked").val();
	var terms = document.getElementById("terms").checked;
	
	
	if($('#phone_no').val()==''){
		$('#terms_warn').html('<p style="color:#F00; margin-right:3px;">Please Enter Contact Phone Number.</p> ');
		return false;
	}else if(terms == true)
		{
			
			$.ajax({
			type:'POST',
			url:'site/product/edit_enquiry_details',
			data:{'rental_id':$('#rental_id').val(),'Enquiry':$('#Enquiry').val(),'caltophone':caltophone,'phone_no':$('#phone_no').val(),'enquiry_timezone':$('#enquiry_timezone').val()},
			dataType:'json',
			success:function(json){
			document.getElementById("credit_card_form").submit();
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

function paypal_form()
{

	var caltophone=jQuery("input:radio[name=caltophone]:checked").val();
	var terms = document.getElementById("terms").checked;
	var product = <?php echo $product->id;?>;
    var amount = parseInt($('#totprice').val());
	//alert(amount);
	//var no_of_guests=$('#no_of_guests').val();
	//var tax=$('#tax').val();
	
	//amount=(amount*no_of_guests)+tax;
	
	if(jQuery($('#phone_no').val())==''){
		$('#terms_warn').html('<p style="color:#F00; margin-right:3px;">Please Enter Contact Phone Number.</p>');
		return false;
	}else if(terms == true)
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
			//alert(json.val);
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

</script>

<script type="text/javascript" src="js/1.8-jquery-ui-min.js"></script>
<link rel="stylesheet" type="text/css" href="javascript/autocomplete/jquery-ui-1.8.2.custom.css" media="all" />
<script type="text/javascript" src="javascript/autocomplete/jquery-ui-1.8.2.custom.min.js"></script> 
<?php
$this->load->view('site/templates/footer');
?>