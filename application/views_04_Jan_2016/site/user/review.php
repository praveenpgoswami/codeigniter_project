<?php 
$this->load->view('site/templates/header');
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
<style>
.review_img
{
background: url(images/no-rating_star.png) repeat-x;
float: left;
height: 17px;
width: 86px;
}
.review_st {
background: url(images/rating_star.png) repeat-x;
float: left;
height: 17px;
position: relative;
}
</style>
<!---DASHBOARD-->
<div class="dashboard  yourlisting bgcolor account profile">

  <div class="top-listing-head">
 <div class="main">   
            <ul id="nav">
                <li><a href="<?php echo base_url();?>dashboard">Dashboard</a></li>
                <li><a href="<?php echo base_url();?>inbox">Inbox</a></li>
                <li><a href="<?php echo base_url();?>listing/all">Your Listing</a></li>
                <li><a href="<?php echo base_url();?>trips/upcoming">Your Trips</a></li>
                <li class="active"><a href="<?php echo base_url();?>settings">Profile</a></li>
                <li><a href="<?php echo base_url();?>account">Account</a></li>
                <li><a href="<?php echo base_url();?>plan">Plan</a></li>
            </ul> </div></div>
	<div class="main">
    	<div id="command_center">
    
             <ul id="nav">
                <li><a href="<?php echo base_url();?>dashboard">Dashboard</a></li>
                <li><a href="<?php echo base_url();?>inbox">Inbox</a></li>
                <li><a href="<?php echo base_url();?>listing/all">Your Listing</a></li>
                <li><a href="<?php echo base_url();?>trips/upcoming">Your Trips</a></li>
                <li class="active"><a href="<?php echo base_url();?>settings">Profile</a></li>
                <li ><a href="<?php echo base_url();?>account">Account</a></li>
                <li><a href="<?php echo base_url();?>plan">Plan</a></li>
            </ul> 
            <ul class="subnav">
                <li><a href="<?php echo base_url();?>settings">Edit Profile</a></li>
				<li><a href="<?php echo base_url();?>photo-video">Photos</a></li>
				<li><a href="<?php echo base_url();?>verification">Trust and Verification</a></li>
                <li class="active"><a href="<?php echo base_url();?>display-review">Reviews</a></li>
	
                <a class="invitefrds" href="users/show/<?php echo $uId;?>">View Profile</a>
            </ul>
            	<div id="account">
    <div class="box">
      <div class="middle">


<?php //echo "<pre>"; print_r($ReviewDetails->result_array()); die;?>

       <div class="tabbable-panel">
      <div class="tabbable-line">
      <ul class="nav nav-tabs ">
      <li class="active">
      <a href="<?php echo base_url();?>site/product/display_review">Reviews About You</a>
      </li>
      <li>
      <a href="<?php echo base_url();?>site/product/display_review1">Reviews by You</a>
      </li>
      
      </ul>
      <div class="tab-content">
      <div id="tab_default_1" class="tab-pane active">
      <h2>Past Review</h2>
              <div class="section notification_section">
              <div class="notification_area">
               <ul class="reviw-loop"> <?php
		   
				foreach($ReviewDetails->result() as $review){
				
				if($review->image == '') $useImg='owner_img.png';
				else $useImg=$review->image;
				?>
				<li><div class="img-lefts"><img src="images/users/<?php echo $useImg; ?>" width="100" /></div>
				<div class="rigtf-lefts"><span class="revw-area"><?php echo $review->review; ?></span>
				<span class="by-area">by <?php echo $review->email; ?></span>
				<span class="review_img" ><img class="review_st" style="width:<?php echo $review->total_review * 20?>%"></span></div>
				</li>
				<?php } ?>
				</ul>
              </div>
              </div>
 </div>

      <div id="tab_default_2" class="tab-pane">
      <h2>Reviews to Write </h2>
              <div class="section notification_section">
              <div class="notification_area">
                <p class="text-lead"> Nobody to review right now. Looks like it's time for another trip! </p>
             
              </div>
              </div>
              

             
      
      
      </div>
      </div>












         		<div style="float:left; width:100%; display:none">

             <h1> Reviews By You </h1>
             <div class="section notification_section" style="width:100%;">
				      <div class="reviews">		 
  	      
                         
                 				   <?php
								   
								 if($ReviewDetails->num_rows() >0){
								    foreach($ReviewDetails->result() as $row)
									    	{ ?>
                                    
                                        
                                <div class="media">
                                    <div class="pull-left">
                                      <a class="media-photo media-link row-space-1" href="rental/<?php echo $row->product_id; ?>"><img width="68" height="68" title="<?php echo $row->product_title; ?>" src="server/php/rental/<?php echo $row->product_image; ?>" class="lazy" alt="<?php echo $row->product_title; ?>" style="display: inline;"></a>
                                        <div class="text-center profile-name">
                                          <a href="rental/<?php echo $row->product_id; ?>"><?php echo substr($row->product_title, 0, 10); ?></a>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                      <div class="panel panel-quote panel-dark row-space-2">
                                        <div class="panel-body clearfix">
                                          <div class="comment-container truncate row-space-2">
                                            <p>
                                             <?php echo $row->review; ?>
                                            </p>
                                            <div class="more-trigger text-center">
                                              <i class="icon icon-chevron-down h3"></i>
                                            </div>
                                          </div>
                                            
                                          <div class="text-muted date"><?php echo $row->dateAdded; ?></div>
                                        </div>
                                      </div>

                                    </div>
                                  </div>
                                        	<?php	}}else{ ?>
                                            No one has reviewed you yet.
                                            <?php } ?>
                                       </div>
          </div>
          		<h1>Reviews About You</h1>
                
				<div class="section notification_section" style="width:100%;">
				<div class="reviews">		 
  	      
                         
                 				   <?php
								   
								 if($UReviewDetails->num_rows() >0){
								    foreach($UReviewDetails->result() as $row)
									    	{ ?>
                                    
                                        
                                <div class="media">
                                    <div class="pull-left">
                                      <a class="media-photo media-link row-space-1" href="rental/<?php echo $row->product_id; ?>"><img width="68" height="68" title="<?php echo $row->product_title; ?>" src="server/php/rental/<?php echo $row->product_image; ?>" class="lazy" alt="<?php echo $row->product_title; ?>" style="display: inline;"></a>
                                        <div class="text-center profile-name">
                                          <a href="rental/<?php echo $row->product_id; ?>"><?php echo substr($row->product_title, 0, 10); ?></a>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                      <div class="panel panel-quote panel-dark row-space-2">
                                        <div class="panel-body clearfix">
                                          <div class="comment-container truncate row-space-2">
                                            <p>
                                             <?php echo $row->review; ?>
                                            </p>
                                            <div class="more-trigger text-center">
                                              <i class="icon icon-chevron-down h3"></i>
                                            </div>
                                          </div>
                                            
                                          <div class="text-muted date"><?php echo $row->dateAdded; ?></div>
                                        </div>
                                      </div>

                                    </div>
                                  </div>
                                        	<?php	}}else{ ?>
                                            Nobody to review right now. Looks like it's time for another trip! 
                                            <?php } ?>
                                       </div>
          </div>
    <div class="clearfix"></div>
      </div>
    </div>
	 </div> </div>
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

/* $(function() {
$( "#datepicker" ).datepicker();
});*/
</script>



<?php 
$this->load->view('site/templates/footer');
?>