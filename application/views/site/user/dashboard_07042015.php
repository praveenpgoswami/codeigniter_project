<?php 
$this->load->view('site/templates/header');	
?>

<!---DASHBOARD-->
<div class="dashboard yourlisting dash-home bgcolor">

<div class="top-listing-head">
 <div class="main">   
            <ul id="nav">
                <li class="active"><a href="<?php echo base_url();?>dashboard">Dashboard</a></li>
                <li><a href="<?php echo base_url();?>inbox">Inbox</a></li>
                <li><a href="<?php echo base_url();?>listing/all">Your Listing</a></li>
                <li><a href="<?php echo base_url();?>trips/upcoming">Your Trips</a></li>
                <li><a href="<?php echo base_url();?>settings">Profile</a></li>
          <!-- <li><a href="<?php echo base_url();?>user/<?php echo $userDetails->row()->id; ?>/wishlists">Wishlists</a></li> -->      
                <li><a href="<?php echo base_url();?>account">Account</a></li>
                <li><a href="<?php echo base_url();?>plan">Plan</a></li>
            </ul> </div></div>
  <div class="main">
      <div id="command_center">
    
            <ul id="nav">
                <li class="active"><a href="<?php echo base_url();?>dashboard">Dashboard</a></li>
                <li><a href="<?php echo base_url();?>inbox">Inbox</a></li>
                <li><a href="<?php echo base_url();?>listing/all">Your Listing</a></li>
               <?php /*?><li><a href="<?php echo base_url();?>rental/<?php echo $userDetails->row()->id;?>">Your Listing</a></li><?php */?>
                <li><a href="<?php echo base_url();?>trips/upcoming">Your Trips</a></li>
                <li><a href="<?php echo base_url();?>settings">Profile</a></li>
                <li><a href="<?php echo base_url();?>account">Account</a></li>
                <li><a href="<?php echo base_url();?>plan">Plan</a></li>
            </ul>
<div class="clearfix" id="dashboard">
              <div id="left">


                <div class="box" id="user_box">
                  <div class="middle">
                    <div id="user_pic">
                      <div class="_pm_container">
        
       
              
                        <a title="View Profile" href="users/show/<?php echo $userDetails->row()->id; ?>"><img width="209" height="209" title="<?php echo $userDetails->row()->firstname; echo $userDetails->row()->loginUserType?> " src="<?php if($userDetails->row()->loginUserType == 'google'){ echo $userDetails->row()->image;} elseif($userDetails->row()->image == '' ){ echo base_url();?>images/site/profile.png<?php } else { echo base_url().'images/users/'.$userDetails->row()->image;}?>" alt="<?php echo $userDetails->row()->firstname;?>"></a>
                      <a href="photo-video" class="upload-photo"><i></i><span>upload profile photo</span></a>
        
        </div>            </div>
                    <h2>
                      <label style="cursor:text"><?php echo ucfirst($userDetails->row()->firstname);?></label>
                       <!--<a href="users/show/<?php echo $userDetails->row()->id; ?>"><?php echo ucfirst($userDetails->row()->firstname);?></a>-->
                    </h2>
                    <p>
                      <a href="users/show/<?php echo $userDetails->row()->id;?>">View Profile</a>
                    </p>

                    <div class="bulid-prof"><a href="settings">build your profile</a></div>
                  </div>
                </div>
        
              
        
                <div class="box" id="quick_links">
                  <div class="middle">
                    <h3 class="box-header">Quick Links</h3>
                    <ul class="unstyled">
                        <li><a href="<?php echo base_url()."listing/all";?>">View/Manage Listing</a></li>
                        <li><a href="<?php echo base_url()."listing-reservation";?>">Reservations</a></li>
                        <li><a href="users/show/<?php echo $userDetails->row()->id;?>">Reviews</a></li>
                    </ul>
                  </div>
                </div>
        
                  <div class="box" id="snapshot">
                    <div class="middle">
                      <h3 class="box-header">Snapshot</h3>
                      <ul class="unstyled">
                        <li class="clearfix">
                        <div class="stat_name">All Page Views</div>
                        <div class="stat_value">
                          0
                        </div>
                        </li>
                      </ul>
                    </div>
                  </div>
        
              </div>
        
              <div class="dashboard-right" id="main">





               








              <div id="account">
              <div class="box">
              <div class="middle">
             
              <h2>Alerts</h2>
              <div class="section notification_section">
              <div class="notification_area">
              <div class="notification_action">
              
			  
			  
			  
			 <a target="_blank" class="dashboard_alert_link" href="account-payout">Please tell us how to pay you.<i class="icon icon-caret-right"></i></a> <br />

              <div class="conformation-mail">
			   <?php
			 // echo $userDetails->row()->is_verified;
			  if($userDetails->row()->is_verified =='No'){ ?>
              Please confirm your email address by clicking on the link we just emailed you. If you cannot find the email, you can
			 
			  <a href="site/user/dashboard_resend_confirm_mail">request a new confirmation email</a>
        or
			
          <a href="settings">change your email address</a>.
		  <?php  }
			  ?>
        
        </div>

              </div>
              </div>
              </div>
             
             
              </div>
              </div>









            <div class="box" style="display:none">
              <div class="middle">
              
              
              <div class="section notification_section nwli">
              <div class="notification_area">
              <div class="notification_action">
              <div class="noti-left">

                
                <p class="invote-text"> Invite friends, earn travel credit! </p>
                <p> Earn up to $6,151 for everyone you invite. </p>

              </div>
                <div class="noti-right">
                   <a class="invite-frd-btn" href="invite-friends">Invite Friends</a>


                </div>

    

              </div>
              </div>
              </div>
              
             
              </div>
              </div>








              <div class="box">
              <div class="middle">
            
              <h2>Messages (<?php echo $count = count($dashboardinbox->result());?>)</h2>
              <div class="section notification_section">
              <div class="notification_area">
              <div class="notification_action">
			  <?php if ($count > 0 ) {?>
              <table>
			  <tr height="25"><th width="30%">Sender</th><th width="70%">Message</th></tr>
			  <?php foreach($dashboardinbox->result() as $msg){ if($i == 3)break;?>
			  <tr height="25"><td><?php echo $msg->email;?></td><td><?php echo $msg->message;?></td></tr>
			  <?php $i=$i+1;} ?>
			  </table>
			  <?php }
			  else
			  {?>
			  <p>No messages to show</p>
			  <?php }?>
			  </div>
              </div>
              </div>
             
             
              </div>
              </div>

                  







                      <div class="box">
              <div class="middle">
             
              <h2 class="verifi-text">Verifications <i class="questn"><span class="verifi">Verifications help build trust between guests and hosts and can make booking easier. <i class="arsd-ico rot"></i><a href="#">Learn more »</a></span></i></h2>
              <div class="section notification_section">
              <div class="notification_area">
              <div class="notification_action viewd">
              
              <p class="nothing"> 

 
                   
              <h5>Email Address Verification</h5>
			  
         <?php
			 // echo $userDetails->row()->is_verified;
			  if($userDetails->row()->is_verified != 'Yes'){ ?>
          Please verify your email address by clicking the link in the message we just sent to: <?php echo $userDetails->row()->email; ?>

Can’t find our message? Check your spam folder or resend the confirmation email.
<?php } else echo 'Verified';  ?>
 <br />

              
      
            
           
        </p>
		</br>
		<p class="nothing"> 

 
                   
              <h5>Phone Number Verification</h5>
			  
         <?php
			  if($ph_verified != 'yes'){ 
				echo 'Not Verified';
			} else echo 'Verified';  ?>
 <br />

              
      
            
           
        </p>

        <div class="no-veri">
       <!--<span>No verifications yet</span>-->
       <a href="verification">Add More </a>

        </div>

             

              </div>
              </div>
              </div>
             
             
              </div>
              </div>




              </div>

  </div>
              <div class="clear"></div>
            </div>
  </div>
    </div>
</div>
<!---DASHBOARD-->

<!---FOOTER-->
<?php

$this->load->view('site/templates/footer');
?>

