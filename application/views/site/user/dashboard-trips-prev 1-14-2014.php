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
<div class="dashboard yourlisting pre-trip bgcolor">

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
                <li><a href="<?php echo base_url();?>trips/upcoming">Your Trips</a></li>
                <li class="active"><a href="<?php echo base_url();?>trips/previous">Previous Trips</a></li>
            </ul>
















           <div class="current_trips" id="trips">
               
               <div id="account">
                <div class="box">
                <div class="middle">
                <form id="changePassword" accept-charset="UTF-8" action="trips/previous" method="post">
                <div style="margin:0;padding:0;display:inline"></div>
                <h2>Previous Trips </h2>
                <div class="section notification_section">
                <div class="notification_area">

                    <p></p>


                    <form method="post" action="">
                    <input type="text" placeholder="Where are you going?" name="product_title" value="">
                    <input class="sesarch-areas-btn" type="submit" value="Search">
                    </form>


                    <?php if($bookedRental->num_rows() >0)
                                { ?>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0" class="member_ship" id="productListTable">
                            <thead>
                             <tr height="40px">
                             
                                 <td width="26%" style="background:#f5f5f5;" ><strong>Rental Details</strong></td>
                                 <td width="16%" style="background:#f5f5f5;"><strong>Owner Info</strong></td>
                                 <td width="26%" style="background:#f5f5f5;"><strong>Dates and Location</strong></td>
                             <td width="20%" style="background:#f5f5f5;"><strong>Rent</strong></td>
                             <td width="28%" style="background:#f5f5f5;"><strong>Review</strong></td>
                             <td width="11%" style="background:#f5f5f5;" ><strong>Status</strong></td>
                             <!--<td width="15%" style="background:#f5f5f5;" ><strong>Action</strong></td>-->
                             </tr>
                            </thead>
                         
                                   <?php 
                                  // echo '<pre>';print_r($bookedRental->result());die;
                                   
                                   
                                   
                                   
                                   foreach($bookedRental->result() as $row)
                                            { ?>
                                    
                                        <tbody>

                                        <td><img src="<?php echo base_url(); ?>server/php/rental/<?php if($row->product_image == '') echo "dummyProductImage.jpg"; else echo $row->product_image;?>" width="100" height="100" alt="<?php echo $row->product_title; ?>"/> <br />&nbsp;&nbsp;<a target="_blank" href="<?php echo base_url(); ?>rental/<?php echo $row->product_id; ?>" style="float:left;"><?php echo $row->product_title; ?></a></td>
                                        
										<td><img src="<?php echo base_url(); ?>images/users/<?php if($row->image == '') echo "owner_img.png"; else echo $row->image;?>" width="100" height="100" alt="image"/> &nbsp;&nbsp;<br /><a target="_blank" href="users/show/<?php echo $row->renter_id; ?>" style="float:left;"><?php echo $row->firstname;?></a></td> 

										<td> <?php  if($row->checkin!='0000-00-00 00:00:00' && $row->checkout!='0000-00-00 00:00:00'){ echo "<br>".date('M d',strtotime($row->checkin))." - ".date('d, Y',strtotime($row->checkout))."<br>";
                                                   echo "<a href='".base_url()."rental/".$row->product_id."'>".$row->product_title."</a><br>";
                                                   echo $row->address."<br>";
                                                   echo $row->city_name.",".$row->state_name." ".$row->post_code."<br>";
                                                   echo $row->country_name;}
                                                   ?>
                                        </td>
                                        <td><?php echo strtoupper($currencySymbol)." ".round($row->price * $this->session->userdata('currency_r'),2)." / Night";?> </td>
                                       
									   <td>
										<a href="site/user/invoice/<?php echo  $row->cid; ?>">Invoice</a>
										<?php $this->data['reviewData'] = $this->product_model->get_trip_review($row->product_id,$userDetails->row()->id);                                        
                                        if($this->data['reviewData']->num_rows > 0)
                                        {
                                        ?>
										<a data-toggle="modal" href="#display_review" onclick="return add_data(this)" user_id="<?php echo $row->renter_id;?>" product_id="<?php echo $row->product_id;?>" reviewer_id="<?php if($userDetails!='no') { echo $userDetails->row()->id; }?>" class="btn">Your Review</a>
										<?php }?>	
										</td>

                                        <td><p style=" color: #000; font-weight: bold;  margin-right: 80px;"><?php echo $row->booking_status; ?></p></td><!--<td><a href="#">View</a></td>-->
                                        </tbody>
                                            <?php   } ?>
                                        </table>
                                       <?php } 
                                    else
                                        { ?>
                            
                            <p>You have no previous trips. <br><br></p>
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
                </div></div> 




       
  </div>
    </div>
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


<!---DASHBOARD-->
<!---FOOTER-->

<?php 
$this->load->view('site/templates/footer');
?>