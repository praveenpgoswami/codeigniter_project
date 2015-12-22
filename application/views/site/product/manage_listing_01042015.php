<?php 
//var_dump($listDetail->row());die;
$this->load->view('site/templates/header');
$this->load->view('site/templates/listing_head_side');
?>
<script src="js/site/jquery-ui-1.8.18.custom.min.js"></script>
<script type="text/javascript">
/* jQuery(document).ready( function () {
        $(".datepicker").datepicker({ minDate:0, dateFormat: 'yy-mm-dd'});
    }); */
    function Date_validation(){
    
        if(jQuery.trim($('#datefrom').val())== ''){
            $("#datefrom").focus();
            return false;
        }else if(jQuery.trim($('#dateto').val())== ''){
            $("#dateto").focus();
            return false;
        }else{
            $('#calendar_form').submit();
        }
    
    }
<?php if($listDetail->row()->datefrom != '' && $listDetail->row()->datefrom != '0000-00-00'){

?>
    $(document).ready(function(){
    
   calenderView('3');
});
<?php } ?>
    //$('.choose_links').calenderView('3');
</script>
<link rel="stylesheet" type="text/css" media="all" href="css/site/<?php echo SITE_COMMON_DEFINE ?>new.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/site/<?php echo SITE_COMMON_DEFINE ?>jquery-ui-1.8.18.custom.css" />

            <div class="right_side manage_listing-right">
            
            <div class="calender_box_main">
            

                <div class="calender_box">
                
                    
                   
                    
                    <div class="calender_bottom center">
                    <?php if($Steps_count1 != 1 && $Steps_count2 != 1 && $Steps_count4 != 1 && $Steps_count5 != 1 && $Steps_count6 != 1 && $Steps_count7 != 1) {?>
					<a name="calendar" style="cursor:pointer;" class="btn gray mini example16" data-pid="<?php echo $listDetail->row()->id;?>" data-price="<?php echo $listDetail->row()->price;?>" href="javascript:void(0);">
                      Edit calendar</a> 
					<?php }else {?>
                    <div class="calender_hide center" id="calenderlist1">
                    
                        <div class="calender_small_icon small-1"></div>
                        
                        <h2 class="calender_bottom_header">Always Available</h2>
                    
                        <p>This is your calendar! After listing your space, return here to update your availability.</p>
                        
                        <a class="choose_links" href="javascript:calenderView('1')">Choose Again</a>
                    
                    </div>
                    
                    <div class="calender_hide center" id="calenderlist2">
                    
                        <div class="calender_small_icon small-2"></div>
                        
                        <h2 class="calender_bottom_header">Sometimes Available</h2>
                    
                        <p>This is your calendar! After listing your space, return here to update your availability.</p>
                        
                        <a class="choose_links" href="javascript:calenderView('2');">Choose Again</a>
                    
                    </div>
                    
                    <div class="calender_hide center" id="calenderlist3">
                    
                        <div class="calender_small_icon small-3"></div>
                        
                        <h2 class="calender_bottom_header">One Time Availability</h2>
                    
                        <p>Select the dates your listing is available.</p>
                        
                        <div class="onetime_start">
                        <form name="calendar" id="calendar_form" method="post" action="site/product/saveCalender">
                        <input type="text" id="datefrom" name="datefrom" placeholder="Start Date" <?php if($listDetail->row()->datefrom != '' && $listDetail->row()->datefrom != '0000-00-00'){?>value="<?php echo $listDetail->row()->datefrom;?>" <?php } ?> class="start_overview datepicker"  />
                            
                            <span class="availability-to">to</span>
                            
                            <input type="text" id="dateto"  name="dateto" placeholder="End Date" <?php if($listDetail->row()->dateto != '' && $listDetail->row()->dateto != '0000-00-00'){?>value="<?php echo $listDetail->row()->dateto;?>" <?php } ?> class="start_overview datepicker" />
                            <input type="hidden" name="prd_id" value="<?php echo $listDetail->row()->id; ?>" />
                            <input type="submit" value="Save" onclick="return Date_validation();" class="save_btn" />
                        </form>
                        
                        </div>
                        
                        <p>After listing your space, return here to set custom prices and availability.</p>
                        
                        <a class="choose_links" href="javascript:calenderView('3');">Choose Again</a>
                    
                    </div>
                    
                            
                            
                            <div class="calender_bottom_block">
                    
                        <h2 class="calender_bottom_header">When is your listing available?</h2>
                        
                        <ul class="calender_detail">
                        
                            <li class="availability_option">
                            
                            <a href="javascript:calenderView('1'),Detailview('<?php echo $listDetail->row()->id;?>','always','calendar_checked');">
                            
                                <div class="calendar-image available-always" <?php if($listDetail->row()->calendar_checked=='always'){?>style="background-position: 2px -290px;"<?php }?>></div>
                                
                                <h3>Always</h3>
                                
                                <p>List all dates as available</p>
                                </a>
                            
                            </li>
                            
                            <li class="availability_option">
                            <a href="javascript:calenderView('2'),Detailview('<?php echo $listDetail->row()->id;?>','sometimes','calendar_checked');">
                                <div class="calendar-image available-sometimes" <?php if($listDetail->row()->calendar_checked=='sometimes'){?>style="background-position: 2px -290px;"<?php }?>></div>
                                
                                <h3>Sometimes</h3>
                                
                                <p>List some dates as available</p>
                             </a>   
                            
                            </li>
                            
                            <!--<li class="availability_option">
                            <a href="javascript:calenderView('3');">
                                <div class="calendar-image available-onetime"></div>
                                
                                <h3>One Time</h3>
                                
                                <p>List only one time period as available</p>
                            </a>
                            </li>-->
                        
                        </ul>
                        
                        </div>
                        
                        
                    <?php }?>
                    </div>
                    
                    
                    
                
                
                </div>

                <span class="calen-text">Calender Last Update <a class="today-text" href="#">today</a></span>
                
                </div>
            
            </div>
            
            <div class="calender_comments map-right">
            
                <div class="calender_comment_content">
                
                    <i class="calender_comment_content_icon"><img src="images/calender_available_icon.jpg" /></i>
					<h1>Use the calendar to<h1>
					<li class="calender_comment_text">Set custom Prices for specific dates</li>
					<li class="calender_comment_text">Mark dates as unavailable</li>
					<li class="calender_comment_text">View Your upcoming reservations</li>
                    
                   <!-- <p class="calender_comment_text">
					Choose the option that best fits your listing's availability. Don't worry, you can change this any time.
					</p>-->
                
                </div>
            
            </div>
            
        
        </div>
        
    </div>
    
<!---DASHBOARD-->
<script type="text/javascript">
jQuery(document).ready( function () {
    //$(".datepicker").datepicker({ minDate:0, dateFormat: 'yy-mm-dd'});
/* if($('#datefrom').val()=='' && $('#dateto').val()=='')
{ */

$("#datefrom").datepicker({
        minDate:0,
		dateFormat: 'yy-mm-dd',
		//defaultDate: "+1w",
        //changeMonth: true,
        onClose: function (selectedDate) {
        $("#dateto").datepicker("option", "minDate", selectedDate).focus();
    }
});
$("#dateto").datepicker({
        minDate:0,
		dateFormat: 'yy-mm-dd',
		//defaultDate: "+1w",
        //changeMonth: true,
        onClose: function (selectedDate) {
        $("#datefrom").datepicker("option", "maxDate", selectedDate);
    }
}); 
//}
/* else{
$(".datepicker").datepicker({ minDate:0, dateFormat: 'yy-mm-dd'});
} */

/* var startDate = '<?php echo date('m/d/Y');?>';
var FromEndDate = new Date();
var ToEndDate = new Date();

ToEndDate.setDate(ToEndDate.getDate()+365);

$('#datefrom').datepicker({
    
    weekStart: 1,
    startDate: '<?php echo date('m/d/Y');?>',
    //endDate: FromEndDate, 
    autoclose: true
})
    .on('changeDate', function(selected){
        startDate = new Date(selected.date.valueOf());
        startDate.setDate(startDate.getDate(new Date(selected.date.valueOf())));
        $('#dateto').datepicker('setStartDate', startDate);
    }); 
$('#dateto')
    .datepicker({
        
        weekStart: 1,
        startDate: startDate,
        endDate: ToEndDate,
        autoclose: true
    })
    .on('changeDate', function(selected){
        FromEndDate = new Date(selected.date.valueOf());
        FromEndDate.setDate(FromEndDate.getDate(new Date(selected.date.valueOf())));
        $('#datefrom').datepicker('setEndDate', FromEndDate);
    }); */

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
<?php if($Steps_count1 == 1 && $Steps_count2 == 1 && $Steps_count3 == 1  && $Steps_count4 == 1 && $Steps_count5 == 1 && $Steps_count6 == 1 && $Steps_count7 == 1 && $Steps_count8 == 1 && $listDetail->row()->calendar_checked=='') { ?>
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
jQuery('.ui-button-text').text('Finish My Listing');
});
</script>
<style>
.ui-draggable-handle
{
display:none !important;
}
</style>
<div id="dialog-message" title="Download complete">
<p class="listing-down-creat">You've Created Your Listing</p>
<span class="sixbtn">8</span>
<p class="more-step">more steps to list your space.</b>.
</p>
</div>
<!-----------End popup for listing------>
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
		
//			window.history.pushState({"html":data,"pageTitle":pname},"", purl);
			$('#inline_example11 .popup_page').html(data);
		}
	});
});

function Detailview(catID,title,chk)
{
$.ajax({
type:'POST',
url:'<?php echo base_url()?>site/product/saveDetailPage',
data:{catID:catID,title:title,chk:chk},
success:function(response)
{
window.location.reload(true);
}
})
}
</script>
<?php
$this->load->view('site/product/front_calendar',$this->data);
$this->load->view('site/templates/footer');
?>