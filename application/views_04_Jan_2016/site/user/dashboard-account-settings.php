<?php 
$this->load->view('site/templates/header');
?>
<!---DASHBOARD-->
<div class="dashboard  yourlisting bgcolor account acc-setting">

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
               <li><a href="<?php echo base_url();?>account">Notifications</a></li>
                                 <li><a href="<?php echo base_url();?>account-payout">Payout Preferences</a></li>
                <li><a href="<?php echo base_url();?>account-trans">Transaction History</a></li>
                <!-- <li><a href="<?php echo base_url();?>referrals">Referrals</a></li>-->
                <li><a href="<?php echo base_url();?>account-privacy">Privacy</a></li>
                <li><a href="<?php echo base_url();?>account-security">Security</a></li>
                <li class="active"><a href="<?php echo base_url();?>account-setting">Settings</a></li>   
            </ul>
            	<div id="account">
    <div class="box">
      <div class="middle">
        <form method="post" action="account-setting" accept-charset="UTF-8" id="dashboard_account_setting"><div style="margin:0;padding:0;display:inline"></div>
          <h2><?php echo $heading;?></h2>
          <div class="section notification_section">
            <div class="notification_area">
              
              <div class="notification_action">


              
               
                <table class="password-fields">
                    <tbody><tr>
					<td>Country of Residence:<!--<i class="questn">
              <span class="verifi">
              Verifications help build trust between guests and hosts and can make booking easier.
              <i class="arsd-ico rot"></i>
              <a href="#">Learn more »</a>
              </span>
              </i>--></td><td>
					<select id="country" name="country" style="width: 270px; height: 41px; margin: 3px 3px 3px 21px;">
					<option value="">Select</option>
					<?php foreach ($countries->result() as $country):?>
					<option value="<?php echo $country->id;?>" <?php if($userDetails->row()->country==$country->id){?>selected="selected"<?php }?>><?php echo $country->name;?></option>
					<?php endforeach;?>
					</select>

					
                    <div id="old_password_warn"  style="float:right; color:#FF0000;"></div></td>
					<span style="float:right;" class="error" id="country_warn"></span>
					</tr>
                  </tbody></table>

                       <p class="confirms">Click save Country of Residence to confirm</p>
              </div>
            </div>
            <div class="buttons">
              <input type="button" value="Save Country of Residence" onclick="return dashboard_account_setting();" name="commit" class="invitefrds">
            </div>
          </div>
</form>
      

        <div class="clearfix"></div>
      </div>
    </div>















    <div class="box cancel-account">
      <div class="middle">
       
          <h2>Cancel Account</h2>
          <div class="section notification_section">
            <div class="notification_area">
              
              <div class="notification_action">


              <a href="site/cms/cancelmyaccount/<?php echo $userDetails->row()->id; ?>"> <input type="button" value="Cancel My Account"  class="invitefrds"></a>
              </div>
            </div>
            
          </div>

      

        <div class="clearfix"></div>
      </div>
    </div>


  </div>
         
  </div>
    </div>
</div>
<script type="text/javascript">
function dashboard_account_setting()
{
$('#country_warn').text('');
var country=$('#country').val();
if(country=='')
{
$('#country_warn').text('Please Select Country');
return false;
}
else
{
$('#dashboard_account_setting').submit();
}
}
		
	 
function removeError(idval){
	$("#"+idval+"_warn").html('');}
</script>
<!---DASHBOARD-->
<!---FOOTER-->
<?php 
$this->load->view('site/templates/footer');
?>