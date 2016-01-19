<?php 
$this->load->view('site/templates/header');
?>
<style>
.btn-create.create-button{
display:block;
}
.review_img
{
background: url(images/no-rating_star.png) repeat-x;
float: left;
height: 17px;
width: 86px;
position: absolute;
background-size: 14.1px auto !important;
}
.review_st
{
background: url(images/rating_star.png) repeat-x;
float: left;
height: 17px;
position: relative;
padding: 10px;
}
.right-review
{
float: right;
width: 82%;
margin-top: 10px;
}

.right-review li {
float: left;
width: 48%;
padding:0 0 0 30px;
border-bottom:none;
}
.right-review span {
color: #333;
float: left;
font-family: opensansregular;
font-size: 13px;
text-align: left;
  width: 50%;
  font-weight: bold;
}

</style>
<script src="js/site/<?php echo SITE_COMMON_DEFINE ?>jquery.colorbox.js"></script>
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.12.custom.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.stars.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/jquery.ui.stars.min.css" />
<script src="js/jRating.jquery.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/jRating.jquery.css" type="text/css" /> 
<link rel="stylesheet" href="css/site/my-account.css" type="text/css" />
<script src="js/site/jquery-ui-1.8.18.custom.min.js"></script>
<link rel="stylesheet" type="text/css" media="all" href="css/site/jquery-ui-1.8.18.custom.css" />
<!---DASHBOARD-->
<div class="dashboard yourlisting trip bgcolor">

<div class="top-listing-head">
 <div class="main">   
            <ul id="nav">
                <li><a href="<?php echo base_url();?>dashboard">Dashboard</a></li>
                <li><a href="<?php echo base_url();?>inbox">Inbox</a></li>
                <li><a href="<?php echo base_url();?>listing/all">Your Listing</a></li>
                <li class="active"><a href="<?php echo base_url();?>trips/upcoming">Your Trips</a></li>
                <li><a href="<?php echo base_url();?>settings">Profile</a></li>
                <li><a href="<?php echo base_url();?>account">Account</a></li>
                <li><a href="<?php echo base_url();?>plan">Plan</a></li>
            </ul> </div></div>
	<div class="main">
    	<div id="command_center">
    
            <ul id="nav">
                <li><a href="<?php echo base_url();?>dashboard">Dashboard</a></li>
                <li><a href="<?php echo base_url();?>inbox">Inbox</a></li>
                <li><a href="<?php echo base_url();?>listing/all">Your Listing</a></li>
                <li class="active"><a href="<?php echo base_url();?>trips/upcoming">Your Trips</a></li>
                <li><a href="<?php echo base_url();?>settings">Profile</a></li>
                <li><a href="<?php echo base_url();?>account">Account</a></li>
                <li><a href="<?php echo base_url();?>plan">Plan</a></li>
            </ul> 
            <ul class="subnav">
                <li class="active"><a href="<?php echo base_url();?>trips/upcoming">Your Trips</a></li>
                <li><a href="<?php echo base_url();?>trips/previous">Previous Trips</a></li>
            </ul>
            <div class="current_trips" id="trips">
               
               <div id="account">
                <div class="box">
                <div class="middle">
                
                <div style="margin:0;padding:0;display:inline"></div>
                <h2>Your Trips</h2>
                <div class="section notification_section">
                <div class="notification_area">

                    


                    <form method="post" action="">
                   <input type="text" placeholder="Where are you going?" name="product_title" value="">
                    <input class="sesarch-areas-btn" type="submit" value="Search">
                    </form>

					<?php 
					//echo '<pre>'; print_r($bookedRental->result_array());
					
					?>
					
					
                     <?php if($bookedRental->num_rows() >0)
                                { ?>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0" class="member_ship" id="productListTable">
                            <thead>
                             <tr height="40px">
                             
                                 <td style="width:100px"><strong>Property Name</strong></td>
                                 <td style="width:100px"><strong>Host</strong></td>
                                 <td style="width:140px"><strong>Dates and Location</strong></td>
                             <td style="width:100px"><strong>Amount</strong></td>
                           <!--  <td style="width:50px"><strong>Review</strong></td> -->
                             <td style="width:50px"><strong>Payment Status</strong></td>
							 <?php if($row->booking_status !='Booked'){ ?>
							 <td style="width:50px"><strong>Guide Approval</strong></td>
							 <?php } ?>
                             <!--<td width="15%" style="background:#f5f5f5;" ><strong>Action</strong></td>-->
                             </tr>
                            </thead>
                         
                                   <?php 
                                   //echo '<pre>';print_r($bookedRental->result()); die;
                                   
                                   
                                   
                                   
                                   foreach($bookedRental->result() as $row)
                                            { ?>
                                    
                                        <tbody>
                                        <?php //echo $row->approval;  die;?>
                                      
                                        <td><img src="<?php echo base_url(); ?>server/php/rental/<?php if($row->product_image == '') echo "dummyProductImage.jpg"; else echo $row->product_image;?>" width="100" height="100" alt="<?php echo $row->product_title; ?>"/> <a target="_blank" href="<?php echo base_url(); ?>rental/<?php echo $row->product_id; ?>" style="float:left;"></br><?php echo $row->product_title; ?></a></td>
                                        <td><a target="_blank" href="users/show/<?php echo $row->renter_id; ?>" style=""><?php echo $row->firstname." ".$row->lastname;?></a></td>                                   <td class="area-tags"> <?php  if($row->checkin!='0000-00-00 00:00:00' && $row->checkout!='0000-00-00 00:00:00'){ echo "<br>".date('M d',strtotime($row->checkin))." - ".date('d, Y',strtotime($row->checkout))."<br>";
										        if($row->product_title !=''){
                                                   echo "<a href='".base_url()."rental/".$row->product_id."'>".$row->product_title."</a><br>";
												   }
												   if($row->address !=''){
                                                   echo $row->address."<br>";
												   }
												   if($row->city_name !=''){
                                                   echo $row->city_name.",".$row->state_name." ".$row->post_code."<br>";
												   }
                                                   echo $row->country_name; 
												   echo "<br>";
												   echo "<label style='font-weight:bold;'>Booking No :</label>".$row->bookingno;
												   }
                                                   ?>
                                        </td>
                                        
                                        <td><?php 
										 echo strtoupper($currencySymbol)." ".number_format($row->totalAmt*$this->session->userdata('currency_r'),2);
										 
										/* $per = $this->cms_model->get_all_details(COMMISSION,array('commission_type'=>'Guest Booking'));
									   $pervalue = $per->row()->commission_percentage; 
										$percentage = $row->price*$row->numofdates;//*$row->NoofGuest;
										$gtotal = $percentage+($percentage*$pervalue)/100;
										
										 echo strtoupper($currencySymbol)." ".$gtotal*$this->session->userdata('currency_r'); */
										//echo strtoupper($currencySymbol)." ".round($row->price * $this->session->userdata('currency_r'),2)." / Night";?> 
										</td>
                                        
                                       
                                        <?php if($row->booking_status =='Booked'){ ?>
                                         <?php $this->data['reviewData'] = $this->product_model->get_trip_review($row->product_id,$userDetails->row()->id);                                        
                                        
                                        if($this->data['reviewData']->num_rows==0)
                                        {
                                        ?>
                                       <!-- <td><a data-toggle="modal" href="#add_review" onclick="return add_data(this)" user_id="<?php echo $row->renter_id;?>" product_id="<?php echo $row->product_id;?>" reviewer_id="<?php if($userDetails!='no') { echo $userDetails->row()->id; }?>" class="btn">Write a Review</a>
                                        </td> -->
<?php }else {?>

<!--<td><a data-toggle="modal" href="#display_review" onclick="return add_data(this)" user_id="<?php echo $row->renter_id;?>" product_id="<?php echo $row->product_id;?>" reviewer_id="<?php if($userDetails!='no') { echo $userDetails->row()->id; }?>" class="btn">Your Review</a>
                                        </td> -->

<?php }?>                               

<?php

//echo '<pre>'; print_r($row); die;
?>        
                                        <!-- <td><a href="rental/<?php echo $row->product_id; ?>#TabbedPanels3">Write a review</a></td> -->
                                        <?php }else{?>
                                       
                                        <?php } ?>
                                        <td><p style=" color: #000; font-weight: bold; "><?php echo $row->booking_status; ?></p>
										 <?php if($row->booking_status =='Booked'){ ?>
										<a href="site/user/invoice/<?php echo  $row->bookingno; ?>" target="_blank">Confirmation</a>
										
										<?php $this->data['reviewData'] = $this->product_model->get_trip_review($row->product_id,$userDetails->row()->id);                                        
                                        if($this->data['reviewData']->num_rows==0)
                                        {if(strtotime($row->checkout)<time()){
                                        ?>
										<a data-toggle="modal" href="#add_review" onclick="return add_data(this)" user_id="<?php echo $row->renter_id;?>" product_id="<?php echo $row->product_id;?>" reviewer_id="<?php if($userDetails!='no') { echo $userDetails->row()->id; }?>" class="btn"> Review </a>
										<!--<a href="site/user/invoice/<?php echo  $row->cid; ?>">Message</a> -->
										<?php }}else {?>
										<a data-toggle="modal" href="#display_review" onclick="return add_data(this)" user_id="<?php echo $row->renter_id;?>" product_id="<?php echo $row->product_id;?>" reviewer_id="<?php if($userDetails!='no') { echo $userDetails->row()->id; }?>" class="btn">Your Review</a>
										<?php }?>					


										
										<a data-toggle="modal" href="#inbox" onclick="return post_discussion(this)"
										renter_id="<?php echo $row->renter_id;?>" product_id="<?php echo $row->product_id;?>" reviewer_id="<?php if($userDetails!='no') { echo $userDetails->row()->id; }?>">Message</a>
										 <?php } ?>
										</td>
										 <?php if($row->booking_status !='Booked'){ ?>
										<td>
										<?php if($row->approval=='Accept') { ?>
										<a href="site/user/confirmbooking/<?php echo  $row->cid; ?>">Pay</a>
										<?php } else {  ?>
										<a href="javascript:void(0);"><?php echo $row->approval." confirmation";?></a><br />
										 <?php if($row->booking_status =='Booked'){ ?>
										<a href="site/user/invoice/<?php echo  $row->cid; ?>">Invoice</a>
										 <?php } ?>
										<?php } ?>
										</td>
										<?php } ?>
                                        </tbody>
                                            <?php   } ?>
                                        </table>
                                       <?php } 
                                    else
                                        { ?>
                            
                            <p>You have no current trips. <br><br></p>
                            <?php 
                            }
                            ?>


                <div class="notification_action">
                <input id="id" type="hidden" name="id" value="ramasamy@teamtweaks.com">
                </div>
                </div>
             
                </div>
                </form>
                <div class="clearfix"></div>
                </div>
                </div>
                </div>



    
    </div>       
  </div>
  </div>

<div id="add_review" class="modal in" style="overflow: hidden; display: none; height: 450px !important;" aria-hidden="false">
<div class="modal-header" style="background: none repeat scroll 0% 0% rgb(239, 239, 239); padding: 18px 10px 18px 40px;"><div ><b>Add Review</b><a style="float:right; padding-right: 30px;cursor: pointer;"; data-dismiss="modal"><span class="">X</span></a></div></div>
<?php if($loginCheck !=''){ echo form_open('site/product/add_review',array('id'=>'reviewForm','style'=>'margin: 20px 20px 20px 40px'));?>
<input type="hidden" id="proid" name="proid" value="" />
<input type="hidden" id="user_id" name="user_id" value="" />
<label>My review<span>*</span>
<span style="font-size:10px; color:#666;"> (Exclude personally identifiable information such as name, email address, etc)</span></label>
<textarea  name="review" id="review" class="scroll_newdes" style="height:90px; width: 440px;" ></textarea>
<div id="review_warn"  style="float:left; color:#FF0000;"></div>
<div class="clear"></div>
<input type="hidden" name="accuracy" id="r1"/>
<input type="hidden" name="communication" id="r2"/>
<input type="hidden" name="cleanliness" id="r3"/>
<input type="hidden" name="location" id="r4"/>
<input type="hidden" name="checkin" id="r5"/>
<input type="hidden" name="value" id="r6"/>
<input type="hidden" name="total_review" id="r7" value=""/>
<div class="star_rating starares">
<li><label>Accuracy</label><div class="exemple5" data-id="r1" id="r11" data="10_5"  style="width:60%;"></div></li>
<li><label>communication</label><div class="exemple5" data-id="r2" id="r21" data="10_5"  style="width:60%;"></div></li>
<li><label>cleanliness</label><div class="exemple5" data-id="r3" id="r31" data="10_5"  style="width:60%;"></div></li>
<li><label>location</label><div class="exemple5" data-id="r4" id="r41" data="10_5"  style="width:60%;"></div></li>
<li><label>checkin</label><div class="exemple5" data-id="r5" id="r51" data="10_5"  style="width:60%;"></div></li>
<li><label>value</label><div class="exemple5" data-id="r6" id="r61" data="10_5"  style="width:60%;"></div></li>
</div>
<div class="field_login" style=" margin-top:10px;">
  <input type="hidden" name="reviewer_id" value="<?php if($userDetails!='no') { echo $userDetails->row()->id; }?>" />
  <input type="hidden" name="reviewer_email" value="<?php if($userDetails!='no') { echo $userDetails->row()->email; }?>" />
  <input type="button" name="Review" id="Review"  onClick="add_review()"  style="float: right; background: none repeat scroll 0% 0% rgb(52, 129, 201); color: rgb(255, 255, 255); text-shadow: 0px 0px 0px rgb(255, 255, 255);" value="Submit my review">
</div>
<?php echo form_close();}?>
</div>



<div id="display_review" class="modal in" style="overflow: hidden; display: none; height: 450px !important;" aria-hidden="false">
<div class="modal-header" style="background: none repeat scroll 0% 0% rgb(239, 239, 239); padding: 18px 10px 18px 40px;"><div ><b>Your Review</b><a style="float:right; padding-right: 30px;cursor: pointer;"; data-dismiss="modal"><span class="">X</span></a></div></div>
<ul class="list-paging" style ="margin: 10px 10px 10px 10px">
<?php 
$reviewData = $this->data['reviewData'];
if($reviewData !=''){foreach($reviewData->result_array() as $review ):?>
<li>
<div class="peps">
<figure class="peps-area">
<img src="images/users/<?php if($review['image'] == '')echo "owner_img.png"; else echo $review['image']; ?>">
</figure>
<span class="johns" style="width:58%;"><b><?php echo $review['firstname']?><br/>(Your Review)</b></span>
</div>

<div class="listd-right">
<h3><?php  $word1 = word_limiter($review['review'], 25);
          $word2 = word_limiter($review['review'], 25);
          echo $word1;
          //echo $word2;?></h3>
<!--<a href="#">+ more</a>-->
<label class="date-year"><?php echo date('F Y',strtotime($review['dateAdded']));?></label>
</div>
<ul class="right-review">
<li><span style="padding-right:10px;">Accuracy</span><span class="review_img" ><img class="review_st" style="width:<?php echo $review['accuracy'] * 20?>%"></span></li>
<li><span style="padding-right:10px;">Location</span><span class="review_img" ><img class="review_st" style="width:<?php echo $review['location'] * 20?>%"></span></li>
<li><span style="padding-right:10px;">Communication</span><span class="review_img" ><img class="review_st" style="width:<?php echo $review['communication'] * 20?>%"></span></li>
<li><span style="padding-right:10px;">Check In</span><span class="review_img" ><img class="review_st" style="width:<?php echo $review['checkin'] * 20?>%"></span></li>
<li><span style="padding-right:10px;">Cleanliness</span><span class="review_img" ><img class="review_st" style="width:<?php echo $review['cleanliness'] * 20?>%"></span></li>
<li><span style="padding-right:10px;">Value</span><span class="review_img" ><img class="review_st" style="width:<?php echo $review['value'] * 20?>%"></span></li>
</ul>
</li>
<?php endforeach;}?>
</ul>

</div>

</div>
<!---DASHBOARD-->
<!---FOOTER-->
<script>
$(document).ready(function(){
    $('.exemple5').jRating({
        length:4.6,
        decimalLength:1,
        onSuccess : function(){
            alert('Success : your rate has been saved :)');
            //$("#rating_value_Err").hide();
        },
        onError : function(){
            alert('Error : please retry');
        }
    });
});


function add_review()
{
r1 = $('#r1').val();
r2 = $('#r2').val();
r3 = $('#r3').val();
r4 = $('#r4').val();
r5 = $('#r5').val();
r6 = $('#r6').val();
sum = parseInt(r1) + parseInt(r2) + parseInt(r3) + parseInt(r4) + parseInt(r5) + parseInt(r6);
total_review = sum/6;
$('#r7').val(total_review);
$('#reviewForm').submit();
}


function post_discussion(evt)
{


$('#rental_id').val($(evt).attr('product_id'));
$('#sender_id').val($(evt).attr('reviewer_id'));
$('#receiver_id').val($(evt).attr('renter_id'));

 //alert($('#rental_id').val());alert($('#sender_id').val());alert($('#receiver_id').val());
}

$(function()
{
$('#discussion').click(function()
{
if($('#message').val()=='')
{
$('#message_warn').html('Please Enter Message');
}
else{
$('#add_discussion').submit();
}
});
});


function add_data(evt)
{
	var product_id = $(evt).attr('product_id');
	var reviewer_id = $(evt).attr('reviewer_id');
	var user_id = $(evt).attr('user_id');
	$('#add_review #user_id').val(user_id);
	$('#add_review #proid').val(product_id);
	
	
}

</script>
<!------------------pop up for inbox message--------------------->
<div id="inbox" class="modal in" style="overflow: hidden; display: none; height: 450px;" aria-hidden="false">
<div class="modal-header" style="background: none repeat scroll 0% 0% rgb(239, 239, 239); padding: 18px 10px 18px 40px;"><div ><b>Message</b><a style="float:right; padding-right: 30px;cursor: pointer;"; data-dismiss="modal"><span class="">X</span></a></div></div>
<?php if($loginCheck !=''){ echo form_open('site/product/add_discussion',array('id'=>'add_discussion','style'=>'margin: 20px 20px 20px 40px'));?>
<input type="hidden" id="rental_id" name="rental_id" value="" />
<input type="hidden" id="sender_id" name="sender_id" value="" />
<input type="hidden" id="receiver_id" name="receiver_id" value="" />
<input type="hidden" id="posted_by" name="posted_by" value="customer" />
<input type="hidden" id="redirect" name="redirect" value="<?php echo $this->uri->segment(1).'/'.$this->uri->segment(2);?>" />
<label></label>
<textarea  name="message" id="message" class="scroll_newdes" style="height:90px; width: 440px;" ></textarea>
<div id="message_warn"  style="float:left; color:#FF0000;"></div>
<div class="clear"></div>
<div class="field_login" style=" margin-top:10px;">
<input type="button" name="discussion" id="discussion"   style="float: right; background: none repeat scroll 0% 0% rgb(52, 129, 201); color: rgb(255, 255, 255); text-shadow: 0px 0px 0px rgb(255, 255, 255);" value="Send">
</div>
<?php echo form_close();}?>
</div>
<!------------------end popup for inbox message------------------->
<?php 
$this->load->view('site/templates/footer');
?>