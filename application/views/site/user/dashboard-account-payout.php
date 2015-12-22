<?php 
$this->load->view('site/templates/header');
?>
<script type="text/javascript" src="js/site/<?php echo SITE_COMMON_DEFINE ?>jquery-1.5.1.min"></script>
<script src="js/site/<?php echo SITE_COMMON_DEFINE ?>jquery.colorbox.js"></script>
<script type="text/javascript">
$(document).ready(function(){
			$(".paypal-popup").colorbox({width:"365px", height:"500px", inline:true, href:"#dddddinline_paypal"});
});
</script>
<div style='display:none'>

<div id='dddddinline_paypal' style='background:#fff;'>
  
  		<div class="popup_page" >
        <img src="<?php echo base_url().'images/site/paypal.png' ?>"  style="margin-top:20px;">
        
       
       <table>
        <tr><td><label> Full Name</label></td></tr>
        <tr><td><input type="text" name="bank_name" id="bank_name" value="<?php echo $userpay->row()->bank_name; ?>" /></td></tr> 
        <tr><td><label> Account Number</label></td></tr>
        <tr><td><input type="text" name="bank_no" id="bank_no" value="<?php echo $userpay->row()->bank_no; ?>" /></td></tr> 
        <tr><td><label> Bank Code</label></td></tr>
        <tr><td><input type="text" name="bank_code" id="bank_code" value="<?php echo $userpay->row()->bank_code; ?>" /></td></tr>
        <tr><td><label> Paypal Email</label></td></tr>
        <tr><td><input type="text" name="paypal_email" id="paypal_email" value="<?php echo $userpay->row()->paypal_email; ?>" /></td></tr>
        <tr><td>
        <button class="btn btn-block btn-primary large btn-large padded-btn-block" type="submit" onclick="javascript:paypaldetail();" >Submit</button>
        
        </td></tr>
       </table>
       
       
        </div>
        
  </div>
  
</div>
<!---DASHBOARD-->
<div class="dashboard  yourlisting bgcolor account acc-payout">

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
                 
                <li class="active"><a href="<?php echo base_url();?>account-payout">Payout Preferences</a></li>
                <li><a href="<?php echo base_url();?>account-trans">Transaction History</a></li>
                <!-- <li><a href="<?php echo base_url();?>referrals">Referrals</a></li>-->
                <li><a href="<?php echo base_url();?>account-privacy">Privacy</a></li>
                <li><a href="<?php echo base_url();?>account-security">Security</a></li>
                <li><a href="<?php echo base_url();?>account-setting">Settings</a></li>   
                
            </ul>
            	<div id="account">
    <div class="box">
      <div class="middle">

        <div id="payout_setup">
          
            <h2>Payout Methods</h2>
            
              <a data-toggle="modal" href="#myModal" class="btn btn paypal-popup2 cboxElement2" href="#"><?php if($userpay->row()->accname == ''){echo 'Add Payout Method';}else{ echo 'View Payout Method';}?></a>
          
        </div>
        <div id="taxes"></div>
        </div>
      </div> 
    </div>
         
  </div>
    </div>
</div>











<div id="myModal" class="modal fade in payoutprefer" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
 
                <div class="modal-header">
                    <a class="" data-dismiss="modal"><span class="">X</span></a>
                    <h4 class="modal-title" id="myModalLabel">Add Payout Details</h4>
                </div>
				<form action="<?php echo base_url(); ?>site/user/account_update" method="post">
				
				<input type="hidden" name="hid" id="hid" value="<?php echo $userpay->row()->id;?>" />
                <div class="modal-body">
                   <table>
                  <tbody>
                  <tr>
                  <td>
                  <label>Paypal Email *</label>
                  </td>
                  </tr>
                  <tr>
                  <td>
				  <input id="paypal_email" type="text" name="paypal_email" value="<?php echo $userpay->row()->paypal_email;?>">
                  </td>
                  </tr>
                  <tr>
                  <td>
                  <button style=" margin: 10px 0 0;"  class="btn btn-block btn-primary large btn-large padded-btn-block"  type="submit">Submit</button>
                  </td>
                  </tr>
                  </tbody>
                  </table>
                </div>
                </form>
                </div>
 
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dalog -->
</div><!-- /.modal -->
    

<!---DASHBOARD-->
<!---FOOTER-->
<?php 
$this->load->view('site/templates/footer');
?>