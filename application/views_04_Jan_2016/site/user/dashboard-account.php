<?php 
$this->load->view('site/templates/header');
?>
<!---DASHBOARD-->
<div class="dashboard  yourlisting bgcolor account accountid1">
<?php 
$emailNoty = explode(',', $userDetails->row()->email_notifications);
if (is_array($emailNoty)){
$emailNotifications = $emailNoty;
}
$mobileNoty = explode(',', $userDetails->row()->notifications);
if (is_array($mobileNoty)){
$mobileNotifications = $mobileNoty;
}
                ?>
 <div class="top-listing-head">
 <div class="main">   
            <ul id="nav">
                <li><a href="<?php echo base_url();?>dashboard">Dashboard</a></li>
                <li><a href="<?php echo base_url();?>inbox">Inbox</a></li>
                <li><a href="<?php echo base_url();?>listing/all">Your Listing</a></li>
                <li><a href="<?php echo base_url();?>trips/upcoming">Your Trips</a></li>
                <li><a href="<?php echo base_url();?>settings">Profile</a></li>
                <li class="active"><a href="<?php echo base_url();?>account">Account</a></li>
                <li><a href="<?php echo base_url();?>plan">Plan</a></li>
            </ul> </div></div>
	<div class="main">
    	<div id="command_center">
    
             <ul id="nav">
                <li><a href="<?php echo base_url();?>dashboard">Dashboard</a></li>
                <li><a href="<?php echo base_url();?>inbox">Inbox</a></li>
                <li><a href="<?php echo base_url();?>listing/all">Your Listing</a></li>
                <li><a href="<?php echo base_url();?>trips/upcoming">Your Trips</a></li>
                <li><a href="<?php echo base_url();?>settings">Profile</a></li>
                <li class="active"><a href="<?php echo base_url();?>account">Account</a></li>
                <li><a href="<?php echo base_url();?>plan">Plan</a></li>
            </ul> 
            <ul class="subnav">
                <li class="active"><a href="<?php echo base_url();?>account">Notifications</a></li>
                                 <li><a href="<?php echo base_url();?>account-payout">Payout Preferences</a></li>
                <li><a href="<?php echo base_url();?>account-trans">Transaction History</a></li>
                <!-- <li><a href="<?php echo base_url();?>referrals">Referrals</a></li>-->
                <li><a href="<?php echo base_url();?>account-privacy">Privacy</a></li>
                <li><a href="<?php echo base_url();?>account-security">Security</a></li>
                <li><a href="<?php echo base_url();?>account-setting">Settings</a></li>            
            

            <a class="invitefrds" href="#" style="display:none">Invite Friends page</a>

            
          </ul>
    <div id="account">
    <div class="box">
	<form name="email_settings" method="post" action="site/user/update_notifications">
      <div class="middle">
		<h1>Mobile Notification / Text Messages</h1>
            
            <div class="section notification_section">
				
					
  	        <div class="notification_area">
  	         
              <div class="notification_action">

                <div class="left-sided sideg">

                <h5 style="margin: 0px; line-height: 17px;">Mobile Phone</h5>
				<p>Receive mobile updates by regular SMS text message.</p>
				<h5>Notify me when:</h5>
				<p>Applies to both text messages & push notifications.</p>
                </div>
				<div class="right-acnt">
				<p>You can add and verify phone numbers on your account from the<a href="settings">edit profile</a>section.</p>

				<label><input type="checkbox" name="reservation_request" id="reservation_request" <?php if (in_array('reservation_request', $mobileNotifications)){echo 'checked="checked"';}?>> <span>I receive a reservation request</span></label>

             </div>
  	          </div>
  	          </div>
		

  </div>

 </div>













  <div class="middle">
      
          <h1>Email Settings</h1>
            <div class="section notification_section">
           
          
          
            <div class="notification_area">
             
              <div class="notification_action">

                <div class="left-sided">

                  <h3>I want to receive:</h3>
                  <span>You can disable at these at any time</span>
                </div>
              <ul class="unstyled">
                <li>
                <input type="checkbox" name="upcoming_reservation" id="upcoming_reservation" <?php if (in_array('upcoming_reservation', $emailNotifications)){echo 'checked="checked"';}?>> 
                <label for="upcoming_reservation">I have an upcoming reservation.</label>
                </li>
                <li>
                <input type="checkbox" name="new_review" id="new_review" <?php if (in_array('new_review', $emailNotifications)){echo 'checked="checked"';}?> > 
                <label for="new_review">I have received a new review.</label>
                </li>
                <li>
                <input type="checkbox" name="new_reference" id="new_reference" <?php if (in_array('new_reference', $emailNotifications)){echo 'checked="checked"';}?>> 
                <label for="new_reference">I have received a new reference.</label>
                </li>
                <li>
                <input type="checkbox" name="reference_request" id="reference_request" <?php if (in_array('reference_request', $emailNotifications)){echo 'checked="checked"';}?>>
                <label for="reference_request">I have received a new reference request.</label>
                </li>
              <li>
                <input type="checkbox" name="review_reminder" id="review_reminder" <?php if (in_array('review_reminder', $emailNotifications)){echo 'checked="checked"';}?>> 
                <label for="review_reminder">I need to leave a review for one of my guests.</label>
                </li>
                <li>
                <input type="checkbox" value="1" name="calendar_reminder" id="calendar_reminder" <?php if (in_array('calendar_reminder', $emailNotifications)){echo 'checked="checked"';}?>> 
                <label for="calendar_reminder">I can improve my ranking in the search results by updating my calendar.</label>
                </li>
              </ul>
              </div>
              </div>
			  <input type="hidden" name="user_id" value="<?php $Details->row()->id;?>" />
              <input type="submit" value="Save" name="commit" class="btn green">


  </div>

 </div>
 </form>
</div>



                 

      </div>
    </div>
  </div>
         
  </div>
    </div>
</div>
<!---DASHBOARD-->
<!---FOOTER-->
<?php 
$this->load->view('site/templates/footer');
?>