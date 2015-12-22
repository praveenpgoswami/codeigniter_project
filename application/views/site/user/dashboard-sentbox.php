<?php 
$this->load->view('site/templates/header');
//print_r($dashboardsent->result());die;

//print_r($user_details);die;
?>

<script type="text/javascript"  src="js/validation.js"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js'></script>

<!---DASHBOARD-->
<div class="dashboard yourlisting inbox bgcolor">

<div class="top-listing-head">
 <div class="main">   
            <ul id="nav">
                <li><a href="<?php echo base_url();?>dashboard">Dashboard</a></li>
                <li class="active"><a href="<?php echo base_url();?>inbox">Inbox</a></li>
                <li><a href="<?php echo base_url();?>listing/all">Your Listing</a></li>
                <li><a href="<?php echo base_url();?>trips/upcoming">Your Trips</a></li>
                <li><a href="<?php echo base_url();?>settings">Profile</a></li>
                <li><a href="<?php echo base_url();?>account">Account</a></li>
                <li><a href="<?php echo base_url();?>plan">Plan</a></li>
            </ul> </div></div>
	<div class="main">
    	<div style="min-height: 270px;" id="command_center">
    
            <ul id="nav">
                <li><a href="<?php echo base_url();?>dashboard">Dashboard</a></li>
                <li class="active"><a href="<?php echo base_url();?>inbox">Inbox</a></li>
                <li><a href="<?php echo base_url();?>listing/all">Your Listing</a></li>
                <li><a href="<?php echo base_url();?>trips/upcoming">Your Trips</a></li>
                <li><a href="<?php echo base_url();?>settings">Profile</a></li>
                <li><a href="<?php echo base_url();?>account">Account</a></li>
                <li><a href="<?php echo base_url();?>plan">Plan</a></li>
            </ul>


            


            <div id="page-wrap">
			
 <div id="example-two">
          
        <ul class="nav">
                <li class="nav-one"><a href="<?php echo base_url().'inbox';?>" >Inbox</a></li>
                <li class="nav-two"><a href="<?php echo base_url().'sentbox';?>" class="current">Sent</a></li>
        </ul>
        
        <div class="list-wrap">
        
          <div id="tab_inbox">
            <div class="box" id="inbox">
                <div class="middle clearfix">
                          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="member_ship datatable" id="productListTable">
                     				  <thead>
 										 <tr><td width="5%" ><strong>Sno</strong></td>
   										 <td width="13%" ><strong>Sender</strong></td>
   										 <td width="17%" ><strong>Subject</strong></td>
   										 <td width="13%" ><strong>Date</strong></td>
   										 <td width="10%" ><strong>Action</strong></td>
   
 										 </tr>
										 </thead>
                                        <tbody>
                                        <?php 
										
										if($dashboardinbox->num_rows() > 0){
											$c_id=1;
											foreach($dashboardinbox->result() as $InboxStr){?>
											<tr>
                                            <td><?php  echo $c_id; ?></td>
											
											<?php 
									//echo $user_details[$c_id];
$this->data ['userdetail'] = $this->cms_model->get_all_details (USERS, array ('id' => $InboxStr->guide_id));

											?>
											
											
											
											
                                            <td><?php  echo $user_details[$InboxStr->sender_id]; ?></td>
                                            <td><?php echo $InboxStr->message; ?></td>
                                            <td><?php echo $InboxStr->date_created; ?></td>
                                            <td><div class="edit"><a href="site/user_settings/view_inquiry_details/<?php echo $InboxStr->id;?>">View Message</a>&nbsp;<a onclick="return confirm('Are you sure want to delete?');" href="site/user_settings/delete_inquiry_details/<?php echo $InboxStr->id;?>">Delete</a></div>
											
											</td>
                                            </tr>
											<?php $c_id=$c_id+1;}
										
										}else{
											echo '<tr><td colspan="5"><center>There is no message(s) in inbox</center> </td></tr>';										
										} ?>
                                        </tbody>
                                        </table>
                                        
                                        
                                        </p>
                  <?php echo $links;?>                            
                              
          </div>
 			 </div>  
          </div>
		  
		   <div id="tab_sent" style="display:none;">
            <div class="box" id="inbox">
                <div class="middle clearfix">
                          <table width="99%" border="0" cellspacing="0" cellpadding="0" class="member_ship" id="productListTable">
                     				  <thead>
 										 <tr><td width="5%" ><strong>Sno</strong></td>
   										 <td width="13%" ><strong>Receiver</strong></td>
   										 <td width="17%" ><strong>Subject</strong></td>
   										 <td width="13%" ><strong>Date</strong></td>
   										 <td width="10%" ><strong>Action</strong></td>
   
 										 </tr>
										 </thead>
                                        <tbody>
                                        <?php 
										
										if($dashboardsent->num_rows() > 0){ 
											$c_id=1;
											foreach($dashboardsent->result() as $InboxStr){?>
											<tr>
                                            <td><?php  echo $c_id; ?></td>
											
											<?php 
											//echo $user_details[$c_id];
//$this->data ['userdetail'] = $this->cms_model->get_all_details (USERS, array ('id' => $InboxStr->guide_id));

											?>
											
											
											
											
                                            <td><?php echo $user_details[$InboxStr->receiver_id]; ?></td>
                                            <td><?php echo $InboxStr->message; ?></td>
                                            <td><?php echo $InboxStr->date_created; ?></td>
                                            <td><div class="edit"><a href="site/user_settings/view_inquiry_details/<?php echo $InboxStr->id;?>">View Message</a></div>
											
											</td>
                                            </tr>
											<?php $c_id=$c_id+1;}
										
										}else{
											echo '<tr><td colspan="5"><center>There is no message(s) in inbox</center> </td></tr>';										
										} ?>
                                        </tbody>
                                        </table>
                                        
                                        
                                        </p>
                                              
                    <?php echo $dashboardsent_links;?>          
          </div>
 			 </div>  
          </div>

             
         </div> <!-- END List Wrap -->
     
          </div>     </div> <!-- END Organic Tabs (Example One) -->



 </div>
    </div>
</div>
<!---DASHBOARD-->
<script type="text/javascript">
										
function show_inbox_sent(tab_id)
{

if(tab_id=='tab_inbox')
{
$('#tab_sent').removeClass('hide');
}
else{
$('#tab_inbox').removeClass('hide');
}
};
</script>
<?php 

$this->load->view('site/templates/footer');
?>