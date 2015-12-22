<?php 
//var_dump($rentalDetail->result());die;
$this->load->view('site/templates/header');
?>
<!---DASHBOARD-->
<div class="dashboard yourlisting yourlistinghome">

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
    	<div id="command_center">
      <div class="dashboard-sidemenu">
            <ul id="nav">
                <li><a href="<?php echo base_url();?>dashboard">Dashboard</a></li>
                <li><a href="<?php echo base_url();?>inbox">Inbox</a></li>
                <li class="active"><a href="<?php echo base_url();?>listing/all">Your Listing</a></li>
                <li><a href="<?php echo base_url();?>trips/upcoming">Your Trips</a></li>
                <li><a href="<?php echo base_url();?>settings">Profile</a></li>
                <li><a href="<?php echo base_url();?>account">Account</a></li>
                <li><a href="<?php echo base_url();?>plan">Plan</a></li>
            </ul> 
            <ul class="subnav">
                <li class="active"><a href="<?php echo base_url();?>listing/all">Manage Listings</a></li>
                <li><a href="<?php echo base_url();?>listing-reservation">Your Reservations  </a></li>
                <li><a href="<?php echo base_url();?>listing-requirement">Reservation Requirements</a></li>
                <!--<li><a href="<?php echo base_url();?>listing-booking">Booking</a></li>
                <li><a href="<?php echo base_url();?>listing_enquiry">Enquiry</a></li>-->
            </ul>

          </div>
            

            <div class="listiong-areas">
            <div class="box">
      <div class="middle">
	  <?php if(count($rentalDetail->result())>0){ ?>
        <div class="sort-header clearfix">
          <span id="listings-filter" class="btn-group btn-dropdown all">
          	<a href="javascript:void(0);">
            <button class="btn gray mini dropdown-toggle display-filter">
              <span class="none always">Show:</span>
              <span class="none">
                all listings
               
              </span>
              <span class="active">
                <span class="dot dot-green"></span>
                active listings
              </span>
              <span class="inactive">
                <span class="dot dot-red"></span>
                hidden listings
              </span>
              <i class="iconars"></i>
            </button></a>
            <ul class="dropdown-menu toggle-filter showlist4">
              <li>
                <a href="<?php echo base_url();?>listing/all">
                  Show all listings
</a>              </li>
              <li>
                <a href="<?php echo base_url();?>listing/Publish">
                  <span class="dot dot-green"></span>
                  Show active
</a>              </li>
              <li>
                <a href="<?php echo base_url();?>listing/UnPublish">
                  <span class="dot dot-red"></span>
                  Show hidden
</a>              </li>
            </ul>
          </span>
        </div>
        <?php foreach($rentalDetail->result() as $row){ 
				
		?>
        <div id="listings-container">
          <ul class="listings unstyled">
            <li data-hosting-id="1898630" class="listing clearfix">
              <div class="image"><a href="<?php echo base_url()."rental/".$row->id;?>"><img src=<?php if($row->product_image == ''){?>"<?php echo base_url(). PRODUCTPATH.'dummyProductImage.jpg'; ?>"<?php } else {?>"<?php echo PRODUCTPATH; ?><?php echo $row->product_image;}?>" alt="Room_no_photos"></a></div>
                  <div class="listing-criteria-header activation-notification">
  <div class="listing-criteria-header-message">
  <?php $total_steps=8;
if($row->product_title !="")
  {
  $total_steps--;
  }
  if($row->price !="0.00")
  {
  $total_steps--;
  }
  if($row->calendar_checked !="")
  {
  $total_steps--;
  }
  if($row->product_image !="")
  {
  $total_steps--;
  }
  if($row->list_name !="")
  {
  $total_steps--;
  }
  if($row->latitude !="")
  {
  $total_steps--;
  }
  if($row->bedrooms !="")
  {
  $total_steps--;
  }
  if($row->cancellation_policy !="")
  {
  $total_steps--;
  }
        if($total_steps !=0){?>
 <a class="btn blue" href="<?php echo base_url()."manage_listing/".$row->id;?>"><?php echo $total_steps;?> steps to list</a>
		<?} else {?>
		<?php if($row->status =='UnPublish'){?>
		<a class="btn blue" href="javascript:void(0);">Pending</a>
		<?php }
        elseif($hosting_commission_status->row()->status=='') { ?>
		<a class="btn blue" href="site/product/redirect_base/payment/<?php echo $row->id;?>">Pay</a>
		<?php } elseif($row->payment_status=='paid') {?>
		<a class="btn blue" href="javascript:void(0);">Listed</a>
		<?php } else {?>
		<a class="btn blue" href="javascript:void(0);">Listed</a>
		<?php }?>
		<?php }?>
  </div>
</div>

 
                <div class="listing-info">
               



            <div class="manage-center-detail">
              <span class="managing-list"><a href="<?php echo base_url()."rental/".$row->id;?>"><?php echo $row->product_title;?></a></span>
              <span class="views-list"><a href="<?php echo base_url()."manage_listing/".$row->id;?>">Manage Listing and Calendar </a></span>
            </div>



                  <div class="actions">
                    <a class="btn gray mini" href="<?php echo base_url()."manage_listing/".$row->id;?>">

                      <i class="icon-pencil"></i>
                      Manage listing
</a>
                    <a class="btn gray mini" href="<?php echo base_url()."rental/".$row->id;?>">
                      <i class="icon icon-eye-open"></i>
                      View listing
</a>
                    <!--<a class="btn gray mini" href="<?php echo base_url()."manage_listing/".$row->id;?>"><a name="calendar" style="cursor:pointer;" class="btn gray mini ajax cboxElement" href="site/product/edit_calendar/<?php echo $row->id; ?>?pid=<?php echo $row->id; ?>&price=<?php echo $row->price; ?>">-->
                    <a name="calendar" style="cursor:pointer;" class="btn gray mini example16" data-pid="<?php echo $row->id; ?>" data-price="<?php echo $row->price; ?>" href="javascript:void(0);">
                      <i class="icon icon-calendar"></i>
                      View calendar
</a>   


                                
                  </div>
                   
                </div>
                
              </li>
          </ul>
        </div>
        <?php }  } else {?>

        <div class="no-listing">
		<h2>You don't have any listings!</h2>
    <p>		Listing your space is an easy way to monetize any extra space you have.</p>
		<p> You'll also get to meet interesting travelers from around the world!</p>
		<a class="list_spaceds" href="list_space">Post a new listing</a>
		<?php }?>
      </div></div>
    </div> </div>
           
  </div>
    </div>
</div>
<!---DASHBOARD-->
<!---FOOTER-->

<script type="text/javascript">
$('.example16').click(function(){

	$('#inline_example11 .popup_page').html('<div class="cnt_load"><img src="images/ajax-loader.gif"/></div>');
	
	var pid = $(this).data('pid');
	var price = $(this).data('price');
	var pname = $(this).text();
	var purl = baseURL+$(this).attr('href');
	$.ajax({
		type:'get',
//		url:baseURL+'site/product/viewMemberCalendar/'+pid,
		url:baseURL+'site/product/edit_calendar/'+pid,

		data:{'pid':pid,'price':price},
		dataType:'html',
		success:function(data){ 
		alert(data);
//			window.history.pushState({"html":data,"pageTitle":pname},"", purl);
			$('#inline_example11 .popup_page').html(data);
		}
	});
});
</script>


<!-----------popup for listing------>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
jQuery.noConflict();
jQuery(function() {
//alert('<?php echo $Steps_count6;?>');
<?php if($this->session->userdata('enable_complete_popup') == 'yes') { ?>
jQuery( "#dialog-message" ).dialog({
modal: true,
buttons: {

click: function() {
//text: "Finish My Listing",
jQuery( this ).dialog( "close" );
}
}
});
<?php }else {?>
//alert();
jQuery('#dialog-message').css('display','none');
<?php }?>
});

jQuery(function()
{
jQuery('.ui-button-text').text('Ok');
});
</script>
<style>
.ui-draggable-handle
{
display:none !important;
}
.listing-down-creat {
  
    font-size: 20px !important;
    
}
</style>
<div id="dialog-message" title="Download complete">
<p class="listing-down-creat">Thank you for listing your property with us. Listing will go live upon approval from us within two working days.</p>
</p>
</div>
<!-----------End popup for listing------>
<?php if($this->session->userdata('enable_complete_popup'))
{
$this->session->unset_userdata('enable_complete_popup');
}
$this->load->view('site/product/front_calendar',$this->data);
$this->load->view('site/templates/footer');
?>