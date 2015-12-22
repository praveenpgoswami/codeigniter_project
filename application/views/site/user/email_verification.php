<?php 
//$this->load->view('site/templates/header');
include_once('application/views/site/templates/header.php');
//require_once('linkedin.php');
?>



<link rel="stylesheet" type="text/css" href="css/colorbox.css" media="all" />
<link href="css/page_inner.css" media="screen" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/my-account.css" type="text/css" media="all"/>
<script type="text/javascript" src="js/site/SpryTabbedPanels.js"></script>

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="js/site/jquery.timers-1.2.js"></script>
<script type="text/javascript" src="js/site/jquery.galleryview-3.0-dev.js"></script>
<!-- script added 14/05/2014 -->


<!-- script end -->

<!---DASHBOARD-->
<div class="dashboard yourlisting emailverify bgcolor">

<div class="top-listing-head">
 <div class="main">   
            <ul id="nav">
                <li><a href="<?php echo base_url();?>dashboard"><?php if($this->lang->line('Dashboard') != '') { echo stripslashes($this->lang->line('Dashboard')); } else echo "Dashboard";?></a></li>
                <li><a href="<?php echo base_url();?>inbox"><?php if($this->lang->line('Inbox') != '') { echo stripslashes($this->lang->line('Inbox')); } else echo "Inbox";?></a></li>
                <li><a href="<?php echo base_url();?>listing/all"><?php if($this->lang->line('YourListing') != '') { echo stripslashes($this->lang->line('YourListing')); } else echo "Your Listing";?></a></li>
                <li><a href="<?php echo base_url();?>trips/upcoming"><?php if($this->lang->line('YourTrips') != '') { echo stripslashes($this->lang->line('YourTrips')); } else echo "Your Trips";?></a></li>
                <li class="active"><a href="<?php echo base_url();?>settings"><?php if($this->lang->line('Profile') != '') { echo stripslashes($this->lang->line('Profile')); } else echo "Profile";?></a></li>
                <li><a href="<?php echo base_url();?>account"><?php if($this->lang->line('Account') != '') { echo stripslashes($this->lang->line('Account')); } else echo "Account";?></a></li>
                <li><a href="<?php echo base_url();?>plan"><?php if($this->lang->line('Plan') != '') { echo stripslashes($this->lang->line('Plan')); } else echo "Plan";?></a></li>
            </ul> </div></div>
	<div class="main">
    	<div id="command_center">
    
             <ul id="nav">
                <li><a href="<?php echo base_url();?>dashboard"><?php if($this->lang->line('Dashboard') != '') { echo stripslashes($this->lang->line('Dashboard')); } else echo "Dashboard";?></a></li>
                <li><a href="<?php echo base_url();?>inbox"><?php if($this->lang->line('Inbox') != '') { echo stripslashes($this->lang->line('Inbox')); } else echo "Inbox";?></a></li>
                <li><a href="<?php echo base_url();?>listing/all"><?php if($this->lang->line('YourListing') != '') { echo stripslashes($this->lang->line('YourListing')); } else echo "Your Listing";?></a></li>
                <li><a href="<?php echo base_url();?>trips/upcoming"><?php if($this->lang->line('YourTrips') != '') { echo stripslashes($this->lang->line('YourTrips')); } else echo "Your Trips";?></a></li>
                <li class="active"><a href="<?php echo base_url();?>settings"><?php if($this->lang->line('Profile') != '') { echo stripslashes($this->lang->line('Profile')); } else echo "Profile";?></a></li>
                <li ><a href="<?php echo base_url();?>account"><?php if($this->lang->line('Account') != '') { echo stripslashes($this->lang->line('Account')); } else echo "Account";?></a></li>
                <li><a href="<?php echo base_url();?>plan"><?php if($this->lang->line('Plan') != '') { echo stripslashes($this->lang->line('Plan')); } else echo "Plan";?></a></li>
            </ul> 
			  <div class="dashboard-sidemenu"> 
            <ul class="subnav">
                <li><a href="<?php echo base_url();?>settings"><?php if($this->lang->line('EditProfile') != '') { echo stripslashes($this->lang->line('EditProfile')); } else echo "Edit Profile";?></a></li>
				<li ><a href="<?php echo base_url();?>photo-video"><?php if($this->lang->line('Photos') != '') { echo stripslashes($this->lang->line('Photos')); } else echo "Photos";?></a></li>
				<li class="active"><a href="<?php echo base_url();?>verification"><?php if($this->lang->line('TrustandVerification') != '') { echo stripslashes($this->lang->line('TrustandVerification')); } else echo "Trust and Verification";?></a></li>
                <li ><a href="<?php echo base_url();?>display-review"><?php if($this->lang->line('Reviews') != '') { echo stripslashes($this->lang->line('Reviews')); } else echo "Reviews";?></a></li>
 				<a class="invitefrds" href="users/show/<?php echo $UserDetail->row()->id;?>"><?php if($this->lang->line('ViewProfile') != '') { echo stripslashes($this->lang->line('ViewProfile')); } else echo "View Profile";?></a>
                          
            </ul>
			</div>
				<div class="listiong-areas">
            	<div id="account">
				
				<div class="box">
				<div class="middle">
			
				<div class="section notification_section">
				<div class="notification_area">
				<div class="notification_action">
				<div class="left-notic">
				
				<p class="bold-verify"><?php if($this->lang->line('VerifyYourID') != '') { echo stripslashes($this->lang->line('VerifyYourID')); } else echo "Verify Your ID";?></p>

				<p><?php if($this->lang->line('GettingyourVerified') != '') { echo stripslashes($this->lang->line('GettingyourVerified')); } else echo "Getting your Verified ID is the easiest way to help build trust in the community. We'll verify you by matching information from an online account to an official ID.";?><a href="pages/verify_id"><?php if($this->lang->line('Learnmore') != '') { echo stripslashes($this->lang->line('Learnmore')); } else echo "Learn more";?></a>
				</p>
				<p><?php if($this->lang->line('youwantbelow') != '') { echo stripslashes($this->lang->line('youwantbelow')); } else echo "Or, you can choose to only add the verifications you want below.";?></p>

				</div>
				<div class="right-notic">
				<?php 
				$condition = array('user_id'=>$UserDetail->row()->id,'id_verified'=>'yes');
				$user_id_exist=$this->user_model->get_all_details(REQUIREMENTS,$condition);
				//echo $user_id_exist->row()->id_verified;die;
				if($user_id_exist->row()->id_verified == 'Yes')
				{
					?><a class="verify-text" href="javascript:void(0);"><?php if($this->lang->line('Verified') != '') { echo stripslashes($this->lang->line('Verified')); } else echo "Verified";?></a><?php
				}else{
					?><a class="verify-text" href="verification/verify-mail"><?php if($this->lang->line('Verifyme') != '') { echo stripslashes($this->lang->line('Verifyme')); } else echo "Verify me";?></a><?php
				}
				?>
				
				<!--<a class="verify-text" href="verification/verify-mail">Verify me</a>-->
				
				
				</div>
				</div>
				</div>
				</div>
				</div>
				</div>
				
				
				
				
				
				
				
				
				<div class="box">
				<div class="middle">
             
              <h2 class="verifi-text"><?php if($this->lang->line('Verifications') != '') { echo stripslashes($this->lang->line('Verifications')); } else echo "Verifications";?> <i class="questn"><span class="verifi"><?php if($this->lang->line('Verificationshelp') != '') { echo stripslashes($this->lang->line('Verificationshelp')); } else echo "Verifications help build trust between guests and hosts and can make booking easier.";?></span></i></h2>
              <div class="section notification_section">
              <div class="notification_area">
              <div class="notification_action viewd">
              <?php 
				$user_id_exist=$this->user_model->get_all_details(REQUIREMENTS,array('id'=>$UserDetail->row()->id));
				if($user_id_exist->num_rows() == 1)
				{
					$eVerify = $UserDetail->row()->is_verified;
					$eV = ($eVerify == 'Yes' ? 'Verified':'Not Verified');
					$pVerify = $user_id_exist->row()->ph_verified;
					$pV = ($pVerify == 'Yes' ? 'Verified':'Not Verified')
					?><p class="nothing"> 

              </p><h5><?php if($this->lang->line('EmailAddressVerification') != '') { echo stripslashes($this->lang->line('EmailAddressVerification')); } else echo "Email Address Verification";?></h5>
			  
				<br>
              <?php echo $eV;?>
			  <p class="nothing"> 

              </p><br/><h5><?php if($this->lang->line('PhoneNumberVerification') != '') { echo stripslashes($this->lang->line('PhoneNumberVerification')); } else echo "Phone Number Verification";?></h5>
			  
				<br>
              <?php echo $pV;?>
			  <?php
				}
				else
				{
					?><p class="nothing"><?php if($this->lang->line('Noneofthe') != '') { echo stripslashes($this->lang->line('Noneofthe')); } else echo "None of the verifications you have made.";?></p><?php
				}
				?>
				
				
                           

              </div>
              </div>
              </div>
             
             
              </div>
				</div>



				<div class="box">
				<div class="middle">
			<h2><?php if($this->lang->line('AddMoreVerifications') != '') { echo stripslashes($this->lang->line('AddMoreVerifications')); } else echo "Add More Verifications";?></h2>
				<div class="section notification_section">
				<div class="notification_area">
				<ul class="notification_action mail">
					<li>
					<h3><?php if($this->lang->line('signup_emailaddrs') != '') { echo stripslashes($this->lang->line('signup_emailaddrs')); } else echo "Email Address";?></h3>
					<p><?php if($this->lang->line('Pleaseverify') != '') { echo stripslashes($this->lang->line('Pleaseverify')); } else echo "Please verify your email address by clicking the link in the message we just sent to:your@yourmail.com";?></p>
					<p><?php if($this->lang->line('findour') != '') { echo stripslashes($this->lang->line('findour')); } else echo "Can’t find our message? Check your spam folder or ";?><a href="verification/send-mail"> <?php if($this->lang->line('resendtheconfirmation') != '') { echo stripslashes($this->lang->line('resendtheconfirmation')); } else echo "resend the confirmation email.";?></a></p>
				    </li>
				    <li>
					<h3><?php if($this->lang->line('PhoneNumber') != '') { echo stripslashes($this->lang->line('PhoneNumber')); } else echo "Phone Number";?> </h3>
					<p><?php if($this->lang->line('Makeit') != '') { echo stripslashes($this->lang->line('Makeit')); } else echo "Make it easier to communicate with a verified phone number. We’ll send you a code by SMS or read it to you over the phone. Enter the code below to confirm that you’re the person on the other end. ";?></p>
					<p><?php if($this->lang->line('Restassured') != '') { echo stripslashes($this->lang->line('Restassured')); } else echo "Rest assured, your number is only shared with another member once you have a confirmed booking.";?> </p>
					<p><?php if($this->lang->line('Nophone') != '') { echo stripslashes($this->lang->line('Nophone')); } else echo "No phone number entered";?></p>
				    </li>
					 <div class="phone-number-verify-widget" style="display: block;">
			<div class="pnaw-step1">
			<div id="phone-number-input-widget-64e0b448" class="phone-number-input-widget">
			<label for="phone_country"><?php if($this->lang->line('Chooseacountry') != '') { echo stripslashes($this->lang->line('Chooseacountry')); } else echo "Choose a country";?>:</label>
			<div class="select">
			<select id="phone_country" name="phone_country" onchange="get_mobile_code(this.value)">
			<option value="">Select</option>
			<?php foreach($active_countries->result() as $active_country) :?>
			<option value="<?php echo $active_country->id;?>"><?php echo $active_country->name;?></option>
			<?php endforeach;?>
			</select>
			</div>
			<label for="phone_number"><?php if($this->lang->line('Addaphonenumber') != '') { echo stripslashes($this->lang->line('Addaphonenumber')); } else echo "Add a phone number";?>:</label>
			<div class="pniw-number-container clearfix">
			<div class="pniw-number-prefix" style="border-right: 1px solid #ccc;">+91</div>
			<input id="phone_number" class="pniw-number" type="text">
			</div>
			</div>
			<div class="pnaw-verify-container">
			<a class="btn btn-primary" rel="sms" href="javascript:void(0);" id="verify_sms"><?php if($this->lang->line('VerifyviaSMS') != '') { echo stripslashes($this->lang->line('VerifyviaSMS')); } else echo "VerifyviaSMS";?></a>
			<a class="btn btn-primary" rel="call" href="#"><?php if($this->lang->line('VerifyviaCall') != '') { echo stripslashes($this->lang->line('VerifyviaCall')); } else echo "VerifyviaCall";?></a>
			<a class="why-verify" target="_blank" href="pages/why-verify" style="display:none;"><?php if($this->lang->line('WhyVerify') != '') { echo stripslashes($this->lang->line('WhyVerify')); } else echo "Why Verify?";?></a>
			</div>
			</div>
			</div>
				    <li>
                   <!--<p><i class="icon icon-add"></i>Add More</p></li>-->

				    <li>
				    	<div class="phone-number-verify-widget verification_div" style="display: none;">
    <p class="message message_sent"></p>
    <label for="phone_number_verification"><?php if($this->lang->line('Pleaseenterthe') != '') { echo stripslashes($this->lang->line('Pleaseenterthe')); } else echo "Please enter the 4-digit code";?>:</label>
    <input type="text" id="mobile_verification_code">
     <a href="javascript:void(0);" onclick="check_phpone_verification()" rel="verify">
        <?php if($this->lang->line('Verify') != '') { echo stripslashes($this->lang->line('Verify')); } else echo "Verify";?>
      </a>
      <a href="javascript:void(0);" onclick="cancel_verification();">
        <?php if($this->lang->line('Cancel') != '') { echo stripslashes($this->lang->line('Cancel')); } else echo "Cancel";?>
      </a>
    
    <p class="arrive"><?php if($this->lang->line('Ifitdoesnt') != '') { echo stripslashes($this->lang->line('Ifitdoesnt')); } else echo "If it doesn't arrive, click cancel and try call verification instead.";?></p>
  
			</div>
						</li>


						 <li class="socil">
					<h3 class="face-bok"><?php if($this->lang->line('Facebook') != '') { echo stripslashes($this->lang->line('Facebook')); } else echo "Facebook";?></h3>
					<div class="verify-left">
					<p><?php if($this->lang->line('Signnwit') != '') { echo stripslashes($this->lang->line('Signnwit')); } else echo "Sign in with Facebook and discover your trusted connections to hosts and guests all over the world.";?> </p>
					</div>

					<a class="conect" href="<?php echo base_url().'facebook/user.php'; ?>" target="_blank"><?php if($this->lang->line('Connect') != '') { echo stripslashes($this->lang->line('Connect')); } else echo "Connect";?></a>	    </li>


					 <li class="socil">
					<h3 class="face-bok"><?php if($this->lang->line('Google') != '') { echo stripslashes($this->lang->line('Google')); } else echo "Google";?></h3>
					<div class="verify-left">
					<p><?php if($this->lang->line('Connectyour') != '') { echo stripslashes($this->lang->line('Connectyour')); } else echo "Connect your account to your Google account for simplicity and ease.";?> </p>
					</div>
					<a class="conect" href="<?php echo $authUrl; ?>" target="_blank"><?php if($this->lang->line('Connect') != '') { echo stripslashes($this->lang->line('Connect')); } else echo "Connect";?></a>	    </li>


					<li class="socil">
					<h3 class="face-bok"><?php if($this->lang->line('Linkedin') != '') { echo stripslashes($this->lang->line('Linkedin')); } else echo "Linkedin";?></h3>
					<div class="verify-left">
					<p><?php if($this->lang->line('"Createaink') != '') { echo stripslashes($this->lang->line('Createaink')); } else echo "Create a link to your professional life by connecting your account and LinkedIn accounts.";?>  </p>
					</div>
					<form id="linkedin_connect_form" action="<?php echo base_url();?>site/user/linkedin" method="get" target="_blank">
					<input type="hidden" name="<?php echo LINKEDIN::_GET_TYPE;?>" id="<?php echo LINKEDIN::_GET_TYPE;?>" value="initiate" />
					<input class="conect" type="submit" value="<?php if($this->lang->line('Connect') != '') { echo stripslashes($this->lang->line('Connect')); } else echo "Connect";?>" style="width: 220px;height: 44px;" />
					</form>
					  </li>

</ul>
				</div>
				</div>
				</div>
				</div>



				
				
	<!-- 
    <div class="box">
      <div class="middle">
			

         
         
  				<h1><?php echo $heading;?></h1>
               
        <div class="section notification_section" style="width:100%;">
					 
  	       <div id="div-form" style="border:1px solid #000;">
  		
         <p>Getting your Verified ID is the easiest way to help build trust in the Airbnb community.
		  We'll verify you by matching information from an online account to an official ID.</p>
		 <p>
      Or, you can choose to only add the verifications you want below.
       </p> 
	   <?php if($UserDetail->row()->is_verified=='Yes') {?>
	   <span style="color:green;">Verified</span>
	   <?php }else {?>
	   <a href="verification/send-mail">Verify Me</a>
	   <?php }?>
            
           </div> 
         </div>
		 
		 
		 <h1>Your Current Verification</h1>
		<?php if($UserDetail->row()->is_verified=='Yes') {?>
		 <div class="section notification_section" style="width:100%;">
					 
  	       <div id="div-form" style="border:1px solid #000;">
  		
         <p>You have confirmed your email:<?php echo $UserDetail->row()->email; ?>.  A confirmed email is important to allow us to securely communicate with you.

        </p>
	   <?php } ?>
	
            
           </div> 
         </div>script added 14/05/2014 -->			
			 
    <div class="clearfix"></div>
      </div>
    </div>
  </div>
         
  </div>
    </div>
    </div>

<!---DASHBOARD-->
<!---FOOTER-->

<script src="js/site/<?php echo SITE_COMMON_DEFINE ?>jquery-ui-1.8.18.custom.min.js"></script>
<link rel="stylesheet" type="text/css" media="all" href="css/site/<?php echo SITE_COMMON_DEFINE ?>jquery-ui-1.8.18.custom.css" />
<script type="text/javascript">
	/*jQuery(document).ready( function () {
		$(".datepicker").datepicker({ minDate:0, dateFormat: 'yy-mm-dd'});
	});*/
	
	
	

$(function() {
$( "#datefrom" ).datepicker({
defaultDate: "+1w",
changeMonth: true,
numberOfMonths: 1,
minDate:0,
onClose: function( selectedDate ) {
$( "#expiredate" ).datepicker( "option", "minDate", selectedDate );
}
});
$( "#expiredate" ).datepicker({
defaultDate: "+1w",
changeMonth: true,
numberOfMonths: 1,
minDate:0,
onClose: function( selectedDate ) {
$( "#datefrom" ).datepicker( "option", "maxDate", selectedDate );
}
});
});



$('#verify_sms').click(function()
{
var mobile_code=$('.pniw-number-prefix').text();
var phone_number=$('#phone_number').val();
if(phone_number =='')
{
alert('Please Enter Phone Number');
}
else if(isNaN(phone_number) || phone_number.length <9 || phone_number.length >10)
{
alert('Phone Number Should be Valid');
}
else{
$.ajax({
type:'POST',
url:'<?php echo base_url();?>site/twilio/product_verification',
data:{phone_no:phone_number,mobile_code:mobile_code},
success:function(response)
{
if(response=='success')
{
alert('We Have Sent Verification Code to Your Mobile Please Enter Verification Code');
 $('.verification_div').css('display','block');
}
}
});
}
});

function check_phpone_verification()
{
 mobile_verification_code=$('#mobile_verification_code').val();
$.ajax({
type:'POST',
url:'<?php echo base_url()?>site/product/check_phone_verification',
data:{mobile_verification_code:mobile_verification_code},
success:function(response)
{ 
if(response=='success')
{
window.location.reload(true);
}
else{
alert('Verification Code Does not match Please enter Correct Code');
}

}
}); 

}


function get_mobile_code(country_id)
{

 $.ajax({
type:'POST',
url:'<?php echo base_url();?>site/twilio/get_mobile_code',
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
</script>



<?php 

$this->load->view('site/templates/footer');
?>