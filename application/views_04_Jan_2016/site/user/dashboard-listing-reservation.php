<?php 
$this->load->view('site/templates/header');
?>

<!---DASHBOARD-->
<div class="dashboard yourlisting resrev bgcolor">

<div class="top-listing-head">
 <div class="main">   
            <ul id="nav">
                <li><a href="<?php echo base_url();?>dashboard">Dashboard</a></li>
                <li><a href="<?php echo base_url();?>inbox">Inbox</a></li>
                <li class="active"><a href="<?php echo base_url();?>listing/all">Your Listing</a></li>
                <li><a href="<?php echo base_url();?>trips/upcoming">Your Trips</a></li>
                <li><a href="<?php echo base_url();?>settings">Profile</a></li>
                <li><a href="<?php echo base_url();?>account">Account</a></li>
                <li><a href="<?php echo base_url();?>plan">Plan</a></li>
            </ul> </div></div>
    <div class="main">
        <div class="dashboard-sidemenu" id="command_center">
       
        <div class="dashboard-sidemenu">
            <ul class="subnav">
                <li><a href="<?php echo base_url();?>listing/all">Manage Listings</a></li>
                <li class="active"><a href="<?php echo base_url();?>listing-reservation">Your Reservations</a></li>
                <li><a href="<?php echo base_url();?>listing-requirement">Reservation Requirements</a></li>
                <!--<li><a href="<?php echo base_url();?>listing-booking">Booking</a></li>
                <li><a href="<?php echo base_url();?>listing_enquiry">Enquiry</a></li>-->
                
            </ul>

            </div>


            <div class="dashboard-rightmenu">
            <div class="box" id="my_listings">
                <div class="middle">
                <?php if($bookedRental->num_rows() >0)
                                { ?>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0" class="member_ship" id="productListTable">
                            <thead>
                             <tr height="40px">
                             
                             <td style="width:100px"><strong>User Name</strong></td>
                             <td style="width:150px"><strong>Dates and Location</strong></td>
                             <td style="width:100px"><strong>Details</strong></td>
                             <td style="width:100px"><strong>Payment Status</strong></td>
							  <td style="width:100px"><strong>Approval</strong></td>
                             <!--<td width="15%" style="background:#f5f5f5;" ><strong>Action</strong></td>-->
                             </tr>
                            </thead>
                         
                                   <?php 
                                 // echo '<pre>';print_r($bookedRental->result());die;
                                   
                                   
                                   
                                   
                                   foreach($bookedRental->result() as $row)
                                            { ?>
                                    
                                        <tr>
                                        <td><img src="<?php echo base_url(); ?>images/users/<?php if($row->image == '') echo "owner_img.png"; else echo $row->image;?>" width="100" height="100" alt="image"/> &nbsp;&nbsp;<br /><a target="_blank" href="users/show/<?php echo $row->GestId; ?>" style="float:left;  "><?php echo $row->firstname;?></a></td>
                                        <td class="nw-lite"> <?php if($row->checkin!='0000-00-00 00:00:00' && $row->checkout!='0000-00-00 00:00:00'){ echo "<br>".date('M d',strtotime($row->checkin))." - ".date('M d, Y',strtotime($row->checkout))."<br>";
                                                   echo "<a href='".base_url()."rental/".$row->product_id."'>".$row->product_title."</a><br>";
                                                   echo $row->address."<br>";
                                                   echo $row->city_name.",".$row->state_name." ".$row->post_code."<br>";
                                                   echo $row->country_name."<br>";
												   echo "Boooking No :".$row->Bookingno;}
                                                   ?>
                                        </td>                                        
                                        <td>
										
										<?php
										echo strtoupper($currencySymbol)." ".number_format($row->totalAmt*$this->session->userdata('currency_r'),2);
										?> </td>
                                        <td>
										<?php 
$paymentstatus = $this->cms_model->get_all_details(PAYMENT,array('Enquiryid'=>$row->EnqId));
 $chkval = $paymentstatus->num_rows();

										if($chkval==1) { 
										?>
										 <p><a href="javascript:void(0);" title="Edit Enquiry"><?php echo "Paid"//$row->booking_status; ?></a></p>
										 <p><a href="site/user/invoice/<?php echo $row->Bookingno;?>" target="_blank">Confirmation</a></p>
                                        
                                        <?php } else { echo "Pending"; } ?> 
                                        
                                        </td>
<td>
<?php   if($row->approval=='Pending') { ?>
<a href="site/cms/guide_approval/<?php echo $row->EnqId; ?>">Accept</a> &nbsp;&nbsp;

<a href="site/cms/guide_decline/<?php echo $row->EnqId; ?>">Decline</a>
<?php } else { ?>
<?php echo ($row->approval == 'Accept')?'Accepted':'Declined';  ?>
<?php } ?>
</td>

                                        </tr>
                                            <?php   } ?>
                                        </table>
                                       <?php } 
                                    else
                                        { ?>
                            
                            <p class="no_listings">
                                You have no reservations.<br>
                                <?php if($this->uri->segment(2)=="") {?>
                                <a href="<?php echo base_url()."listing-reservation"; ?>">View Past Reservation History.</a>
                                <?php } else {?>
                                <a href="<?php echo base_url()."list_space"; ?>">Create a new listing.</a>
                                <?php }?>
                                
                             </p>
                            <?php 
                            }
                            ?>
                   
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