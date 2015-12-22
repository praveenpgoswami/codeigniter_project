<?php 
$this->load->view('site/templates/header');
?>
<script src="js/site/<?php echo SITE_COMMON_DEFINE ?>addProperty.js"></script>
<!---DASHBOARD-->
<div class="dashboard  yourlisting bgcolor account accountid1">

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
                <li class="active"><a href="<?php echo base_url();?>account-privacy">Privacy</a></li>
                <li><a href="<?php echo base_url();?>account-security">Security</a></li>
                <li><a href="<?php echo base_url();?>account-setting">Settings</a></li>            


            
          </ul>
            	<div id="privacy">
    <div id="notification-area">
    <div class="box">
      <div class="middle">
        <h2>Social Connections</h2>
        <div class="padded-text">
          <div class="setting-description">
           <p> Social Connections highlights your connections to other members of the Renters community.</p>

 <p>Shown on your profile, Wish Lists, and in search results, Social Connections helps you find Renters users who are mutual friends, people from your alma mater, or hosts that your friends recommend.</p>

 <p>If you turn off this feature, all these connections will be hidden from you and other people on both your profile, Wish Lists, and on your listings.</p>

 <div class="checking-area"> 
 <input type="checkbox" id="social_recommend" name="social_recommend" <?php if($userDetails->row()->social_recommend=='yes'){?> checked="checked"<?php }?>> 
 <span>Show other Renters users my social connections (recommended)</span> </div>
          </div>


          <div class="panel-footer">
          <input  class="save-social" type="button" value="Save Social Connections" onclick="social_recommend_profile_search('social_recommend')">
          </div>
             </div>


        <h2>Your Listings and Profile in Search Engines</h2>

        <div class="padded-text">
            <div class="setting-description">
              <p>Search engines attract lots of traffic to your listing and generate interest and bookings for our hosts.</p>

<p>Perhaps you want to be listed on Airbnb but have concerns about your listings and profile being advertised more widely. You can turn off search indexing, preventing search engines such as Google and Bing from displaying your pages in their search results.</p>

<p>Note: This may reduce your bookings and will take a few days to take effect.</p>

<div class="checking-area"> 
<input type="checkbox" id="search_by_profile" name="search_by_profile" <?php if($userDetails->row()->search_by_profile=='yes'){?> checked="checked"<?php }?>> 
<span>Include my profile and listing in search engines like Google and Bing (recommended) </span> </div>
          </div>


          <div class="panel-footer">
          <input  class="save-social" type="button" value="Save Findability" onclick="social_recommend_profile_search('search_by_profile')">
          </div>
            </div>
             </div>
      </div>
    </div>
  </div></div>
         
  </div>
    </div>
</div>
<!---DASHBOARD-->
<script type="text/javascript">
function social_recommend_profile_search(update_field_name)
{
//var update_field=update_field;
if($('#'+update_field_name).is(':checked'))
{
var update_field_value='yes';
}
else
{
var update_field_value='no';
}
$.ajax({
type:'POST',
data:{update_field:update_field_name,update_value:update_field_value},
url:'<?php echo base_url()?>site/cms/social_recommend_profile_search',
success:function(response)
{
if(response=='yes')
{
window.location.reload(true);
}
}
});
}
</script>
<!---FOOTER-->
<?php 
$this->load->view('site/templates/footer');
?>