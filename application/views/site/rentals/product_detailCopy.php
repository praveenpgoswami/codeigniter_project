<?php 
$this->load->view('site/templates/header');
?>
<style>
#location{width: 100%}
.btn-create.create-button{
display:block;
}
.create-button {
background-color: #018FE1;
background-image: -moz-linear-gradient(top, #33BEFF, #018FE1);
background-image: -ms-linear-gradient(top, #33BEFF, #018FE1);
background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#33BEFF), to(#018FE1));
background-image: -webkit-linear-gradient(top, #33BEFF, #018FE1);
background-image: -o-linear-gradient(top, #33BEFF, #018FE1);
background-image: linear-gradient(top, #33BEFF, #018FE1);
background-repeat: repeat-x;
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#33BEFF', endColorstr='#018FE1', GradientType=0);
font-weight: bold;
border-color: #D3D3D3 #CFCFCF #C7C7C7;
border-image: none;
border-style: solid;
border-width: 1px;
box-shadow: 0 0 0.2em rgba(255, 255, 255, 0.3) inset, 0 0 0 #000000;
color: #FFFFFF;
text-shadow: none;
padding: 3px 15px;
width: 9em;
margin: 0px 0px 0px 38em;
}
.review_img
{
background: url(images/no-rating_star.png) repeat-x;
float: left;
height: 17px;
width: 86px;
}
.review_st
{
background: url(images/rating_star.png) repeat-x;
float: left;
height: 17px;
position: relative;
}
.right-review
{
float: right;
width: 80%;
}

.right-review li {
float: left;
width: 50%;
padding:0 0 0 30px;
border-bottom:none;
}
.right-review span {
color: #605f5f;
float: left;
font-family: opensansregular;
font-size: 13px;
text-align: left;
width:100px;
}

.overlay{
background: rgba(0, 0, 0, 0.88);
display: none;
height: 100%;
position: fixed;
width: 100%;
top: 0;
z-index: 999;
opacity: 1;
}
.carousel-innler img{width:100%}
</style>
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.12.custom.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.stars.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/jquery.ui.stars.min.css" />
<script src="js/jRating.jquery.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/jRating.jquery.css" type="text/css" /> 
<link rel="stylesheet" href="css/site/my-account.css" type="text/css" />

<script src="js/site/jquery-ui-1.8.18.custom.min.js"></script>
<link rel="stylesheet" type="text/css" media="all" href="css/site/jquery-ui-1.8.18.custom.css" />
<script type="text/javascript">
    jQuery(document).ready( function () {
        initialize();
    });

function dateDifference1() {
    if($("#datefrom").val()!='' && $("#expiredate").val()!='') {
        
        var diff = ($("#expiredate").datepicker("getDate") - $("#datefrom").datepicker("getDate")) / 1000 / 60 / 60 / 24;
        
        var rental_rate=$("#Global_Price").val();
        var TotRent=rental_rate*diff;
        //$('#label').html("$"+TotRent+" for "+diff+" nights");
    }
}
var array1 = <?php echo $CalendarBookingDate; ?>;   
$(function() {
$( "#datefrom" ).datepicker({
changeMonth: true,
numberOfMonths: 1,
minDate:0,
beforeShowDay: function(date){
        var string = $.datepicker.formatDate('yy-mm-dd', date);
        return [ array1.indexOf(string) == -1 ]
    },
onClose: function( selectedDate ) {
$( "#expiredate" ).datepicker( "option", "minDate", selectedDate );
$( "#expiredate" ).val('');
 //dateDifference1();
}
});
$( "#expiredate" ).datepicker({
changeMonth: true,
numberOfMonths: 1,
minDate:0,
beforeShowDay: function(date){
        var string = $.datepicker.formatDate('yy-mm-dd', date);
        return [ array1.indexOf(string) == -1 ]
    }
});

});


$(document).ready(function(){
	
var yOffset = $(".animation-bar").offset().top;
var yOffset1 = $(".map-section").offset().top-$(".animation-bar").innerHeight();

//alert(yOffset);
$(window).scroll(function() {
    if ($(window).scrollTop() > yOffset && $(window).scrollTop() < yOffset1) {
	
        $(".animation-bar").css({
                
              'position': 'fixed',
                'top': 50,
                 width: 354,
                'right':190
        });
    }
        else if($(window).scrollTop() > yOffset1)
        {
            $(".animation-bar").css({
                    'position': 'inherit',
                'top': 0,
                'right': 0
                });
        }
    else {
        $(".animation-bar").css({
           'position': 'inherit',
                'top': 0,
                'right': 0
        });
    }
});
}); 


$(document).ready(function() {

    var aboveHeight = $('detail-middle').outerHeight();
    var yOffset = $(".animation-bar").offset().top;
    var yOffset1 = $(".map-section").offset().top;
	
	var slideCount = $('#side_bar ul li').length;
    var slideWidth = $('#side_bar ul li').width();
    var slideHeight = $('#side_bar ul li').height();
    var sliderUlWidth = slideCount * slideWidth;

    $('#side_bar').css({ width: 940, height: 300 });

    $('#side_bar ul').css({ width: sliderUlWidth, marginLeft: - slideWidth });

    $('#side_bar ul li:last-child').prependTo('#side_bar ul');

    function moveLeft() {
        $('#side_bar ul').animate({
            left: + slideWidth
        }, 200, function () {
            $('#side_bar ul li:last-child').prependTo('#side_bar ul');
            $('#side_bar ul').css('left', '');
        });
    };

    function moveRight() {
        $('#side_bar ul').animate({
            left: - slideWidth
        }, 200, function () {
            $('#side_bar ul li:first-child').appendTo('#side_bar ul');
            $('#side_bar ul').css('left', '');
        });
    };

	$('a.control_prev').click(function () {
        moveLeft();
    });

    $('a.control_next').click(function () {
        moveRight();
    });
	
    $(window).scroll(function(){
    
		
		 if ($(window).scrollTop() > yOffset){	
			
            $('#inner_fixed').addClass('fixed').css('display','block').next().css('padding-top','0px');
        } else {
			
			
            $('#inner_fixed').removeClass('fixed').css('display','none').next().css('padding-top','0');
        }
    });
	
	$(document).on("scroll", onScroll);
});

function onScroll(event){ 
    var scrollPos = $(document).scrollTop();
    $('.page-bar a').each(function () {
        var currLink = $(this);
        var refElement = $(currLink.attr("data-value"));
		//alert(refElement);
        if (refElement.position().top <= scrollPos+100 && refElement.position().top + refElement.height() > scrollPos+100) {
		$('.page-bar ul li a').removeClass("active");
          currLink.addClass("active");
        }
        else{
            currLink.removeClass("active");
        }
    });
}


$(function() {
$( "#datefrom1" ).datepicker({

changeMonth: true,
numberOfMonths: 1,
minDate:0,
beforeShowDay: function(date){
        var string = jQuery.datepicker.formatDate('yy-mm-dd', date);
        return [ array1.indexOf(string) == -1 ]
    },
onClose: function( selectedDate ) {

$( "#expiredate1" ).datepicker( "option", "maxDate", selectedDate );
}
});
$( "#expiredate1" ).datepicker({
changeMonth: true,
numberOfMonths: 1,
minDate:0,
beforeShowDay: function(date){
        var string = jQuery.datepicker.formatDate('yy-mm-dd', date);
        return [ array1.indexOf(string) == -1 ]
    },
onClose: function( selectedDate ) {
$( "#datefrom1" ).datepicker( "option", "maxDate", selectedDate );
}
});
});


/* $(function() {
$( "#datepicker" ).datepicker();
});*/
function ViewAllReview(){
    $(".reviews-list-item").css("display","block");
    $("#ViewMore").css("display","none");
}



function DateBetween(){


     var date = $("#datefrom").datepicker('getDate');

    //var start = date.setDate(date.getDate() + 1),
	var start = date.setDate(date.getDate()),
        end = $("#expiredate").datepicker("getDate"),
        currentDate = new Date(start),
        
        between = []
    ;
    while (currentDate < end) {
        between.push(new Date(currentDate));
        currentDate.setDate(currentDate.getDate() + 1);
    }
   days = between.length;
    $('#results').val(between.join(','));
    var price=$("#Global_Price").val();
    //alert(price+'HI');
    
    
    $.ajax({
        type: 'POST',   
        url:baseURL+'site/product/ajaxdateCalculate',
        data:{'dateval':between.join(','),'pid':$("#prd_id").val(),'price':price},
        success:function(response){
        //alert(response);
            if(response=='Date Already Booked'){
                $("#datefrom").val("");
                $("#expiredate").val("");
                //alert(response);
                return false;
            }else{
				var subTot=response;
				if($("#datefrom").val()!='' && $("#expiredate").val()!='') {
					var diff = ($("#expiredate").datepicker("getDate") - $("#datefrom").datepicker("getDate")) / 1000 / 60 / 60 / 24;
					$('#BookingPriceCalc').show();
					//$('#bookingdate').html(price +' * '+ diff +' nights'); 
					$('#bookingdate').html("Booking for "+days+" Night");
					if(days > 1)
					$('#bookingdate').html("Booking for "+days+" Nights");
					$('#bookingsubtot').html(subTot);
					$('#bookingtot').html(subTot);
				 return false;
				}
			}
        }
    });
        /* if($("#datefrom").val()!='' && $("#expiredate").val()!='') {
        
        var diff = ($("#expiredate").datepicker("getDate") - $("#datefrom").datepicker("getDate")) / 1000 / 60 / 60 / 24;
        
        //var rental_rate=$("#RentalRate1").val();
       // var TotRent=price*diff;
        //$('#label').html("$"+TotRent+" for "+diff+" nights");
         $('#BookingPriceCalc').show();
         $('#bookingdate').html(price +' * '+ diff +' nights'); 
         $('#bookingsubtot').html(diff * price);
		 $('#bookingtot').html(diff * price); 
		 
		// var stax = TotRent-bookingtot;
         //$('#bookingtot').html(diff * price);
        // $('#stax').html(stax);
        
        // BookingAvailability($("#datefrom").val(),$("#datefrom").val());
         return false;
        } */
    
}

</script>




<script>
function displydesc(elem) {

document.getElementById('moredesc').style.display='block';
$(elem).hide();
}
function displydesc1(elem) {
document.getElementById('more_description').style.display='block';
$(elem).hide();
}
function displydesc2(elem) {
document.getElementById('desc').style.display='block';
$(elem).hide();
}
function displydesc3(elem) {
document.getElementById('descother').style.display='block';
$(elem).hide();
}
function displydesc4(elem) {
$('#deschome').css('display', 'block');
$(elem).hide();
}
function displydesc5(elem) {
$('.emore').css('display', 'block');
$(elem).hide();
}
function displydesc0(elem) {
$('.amore').css('display', 'block');
$(elem).hide();
}

<?php 

		if($listItems->num_rows()>0) {

			foreach($listItems->result() as $list){

		?>

		function displydesc11<?php echo $list->id;?>(elem) {

		$('.amore<?php echo $list->id;?>').css('display', 'block');

		$(elem).hide();

		}

		<?php 

		}

		}

		?>
function displydesc6(elem) {
$('.smore').css('display', 'block');
$(elem).hide();
}
function displydesc7(elem) {
$('.hmore').css('display', 'block');
$(elem).hide();
}

</script>



<section>

<?php $product = $productDetails->row();

if($product->user_id!='' && $product->user_id!='0' ){
                    $useId=base_url().'users/show/'.$product->user_id;
                }else{
                    $useId='javascript:void(0);';
                }
                ?>
<div class="banner-container">
    <div class="row">
        <div class="col-md-12">
            <div id="carousel-example-generic" class="slide" >
              
                <ul class="carousel-innler">
				<?php 
				
				
				//var_dump($productImages->result_array());die;
				$imgArr = $productImages->result_array();
				if(count($imgArr)==0)
        {?> <div class="coverimg">
		          <li class="item active">
                       <!-- <img src="<?php echo base_url().PRODUCTPATH.'dummyProductImage.jpg'?>" alt="First slide"> -->
					     <a href="javascript:void(0);"><img src="<?php echo base_url().PRODUCTPATH.$imgArr[$i]['product_image']?>" data-gallery="first-gallery" alt=""/></a>
						 
						 <a class="left carousel-control" href="javascript:void(0);" data-slide="prev">
						<span class="left-ars"></span>
					</a>

                    <a class="right carousel-control" href="javascript:void(0);" data-slide="next">
						<span class="right-ars"></span>
					</a>
                        
                    </li>
		<?php }else {
		for($i=0;$i<count($imgArr);$i++) {?>
		           <li class="item <?php if($i==0){?>active<?php }?>">
                       <!-- <img src="<?php echo base_url().PRODUCTPATH.$imgArr[$i]['product_image']?>" alt="First slide"> -->
					    <a href="javascript:void(0);"><img src="<?php echo base_url().PRODUCTPATH.$imgArr[$i]['product_image']?>" data-gallery="first-gallery" alt=""/></a>
						
						<a class="left carousel-control" href="javascript:void(0);" data-slide="prev">
						<span class="left-ars"></span>
					</a>

                    <a class="right carousel-control" href="javascript:void(0);" data-slide="next">
						<span class="right-ars"></span>
					</a>
                        
                    </li>
		<?php } }?>
		
					
                    
                    
                </div>
                
            </ul>


           <!-- <div class="coverimg">
        <a href="#"><img src="http://lorempixel.com/1024/728/business/2" data-gallery="first-gallery" alt=""/></a>
        <a href="#"><img src="http://lorempixel.com/1024/728/sports/2" data-gallery="first-gallery" alt="" /></a>
        <a href="#"><img src="http://lorempixel.com/1024/728/animals/3" data-gallery="first-gallery" alt="" /></a>
        <a href="#"><img src="http://lorempixel.com/1024/728/cats/1" data-gallery="first-gallery" alt="" /></a>
        <a href="#"><img src="http://lorempixel.com/1024/728/nature/2" data-gallery="first-gallery" alt="" /></a>
    </div>-->
           
        </div>

         </div>
    </div>
</div>
<div id="push">
</div>

</section>


<section>
<div class="fized-hei-area">
    <div class="container">
    
    			<div id="inner_fixed" style="display:none;z-index: 1;">
    			<div class="container">
	                <div class="top-page-bar">
	                        <ul class="page-bar">
							
							<li><a class="active" href="javascript:void(0);" data-value="#carousel-example-generic" onclick="scrollDiv('carousel-example-generic')">Photos</a></li>
							    <li><a href="javascript:void(0);" data-value="#about-listing-text" onclick="scrollDiv('about-listing-text')">About this listing </a></li>
							    <li><a href="javascript:void(0);" data-value="#reviews_list" onclick="scrollDiv('reviews_list')">Reviews</a></li>
								<li><a href="javascript:void(0);" data-value="#host" onclick="scrollDiv('host')">The Host</a></li>
							    <li><a href="javascript:void(0);" data-value="#location" onclick="scrollDiv('location')">Location</a></li>
							</ul>
	                </div>
	                </div>
                </div>

<!--.......... .......... ..........place features....................-->
        <div class="detail-middle">
            <div class="col-md-8">
            <div class="listing-menu">
                <div class="listing-menu-left">



                    <ul>
                    <li> <h2 class="titled"><?php echo ucfirst($product->product_title); ?></h2></li>
                     <li><a class="link-plce" href="#"><?php  echo $product->CityName.', '.$product->State_name.', '.$product->Country_name; ?></a>
                     
                     <?php if(count($reviewData->result_array()) >0){?>
                    <li class="numrstr">
                    <label class="star">
                    <a href="<?php echo(($_SERVER['HTTPS'] ? 'https://' : 'http://').$_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"]); ?>#reviews">
					<!--<img src="images/star.png">--></a>
                    <span class="review_img"><span class="review_st" style="width:<?php echo $reviewTotal->row()->tot_tot * 20?>%"></span></span></label>
                    <span class="nums">(<?php echo count($reviewData->result_array());?>)</span></li>
					<?php }?>
                    </ul>
                   



                    <ul class="propety-feature">
                <?php if($product->home_type !='') {?>
                        <li>
                         <i class="topsp spr1"></i>
                         <span><?php echo ucfirst($product->home_type);
						 //ucfirst($product->home_type).'/'.
						 ?></span>

                        </li>
                  <?php } if($product->accommodates !='') {?>
                       <li>
                         <i class="topsp spr2"></i>
                         <span><?php echo $product->accommodates;?> <?php if($this->lang->line('guests') != '') { echo stripslashes($this->lang->line('guests')); } else echo "guests";?></span>

                        </li>
                    <?php } if($product->bedrooms !='') {?>

                          <li>
                         <i class="topsp spr3"></i>
                         <span><?php echo stripslashes($product->bedrooms); ?> <?php if($this->lang->line('bedrooms') != '') { echo stripslashes($this->lang->line('bedrooms')); } else echo "Bedrooms";?></span>

                        </li>
                    <?php } if($product->beds !='') {?>

                          <li>
                         <i class="topsp spr4"></i>
                         <span><?php echo stripslashes($product->beds); ?> <?php if($this->lang->line('bed') != '') { echo stripslashes($this->lang->line('bed')); } else echo "bed";?></span>

                        </li>
                    <?php } if($product->bathrooms !='') {?>
					 <li>
                         <i class="topsp spr5"></i>
                         <span><?php echo stripslashes($product->bathrooms); ?> <?php if($this->lang->line('bathrooms') != '') { echo stripslashes($this->lang->line('bathrooms')); } else echo "bathrooms";?></span>

                        </li>
						<?php }?>
					
					
                     </ul>  






                </div>






                 <div class="listing-menu-right">

                  <figure class="listing-pep"><a href="<?php echo $useId;?>">
                  <img src="images/users/<?php if($product->thumbnail=='')echo "owner_img.png"; else echo $product->thumbnail; ?>"></a></figure>

                  <span class="pep-name"><?php echo ($product->user_id > 0 && $product->user_id !='')?$product->firstname :'Administrator';?></span>

                 </div>

            </div>

            </div>
<!--......... .......... ..........place features....................-->

<!--......... .......... .......... FOR EMPTY SPACE....................-->


             <div class="col-md-4">
             <div class="animation-bar">
			 <div class="animation-container">

                <div class="top-title">

                    <span class="title"><?php echo $this->session->userdata('currency_s').' '.stripslashes($product->price) * $this->session->userdata('currency_r'); ?></span> <label class="price-descri">per night</label>
                </div>

                <ul class="chekin-list">
                    <li>
                        <label>check in</label>
                        
                        <?php if($loginCheck==''){?>
              <input type="text" placeholder="" autocomplete="off"   class="login-popup" id="datefromCheck" />
              <?php }else{ ?>
              <input type="text" placeholder="" autocomplete="off" name="datefrom" readonly="readonly" id="datefrom" class="checkin ui-datepicker-target" />
              <?php } ?>  
                        
                    </li>

                    <li>
                        <label>check out</label>
						<?php if($loginCheck==''){?>
              <input type="text" placeholder="" autocomplete="off" class="login-popup" id="expiredateCheck"/>
              <?php }else{ ?>
                        <input type="text" placeholder="" name="expiredate" autocomplete="off" readonly="readonly" id="expiredate" onchange="return DateBetween();" class="checkout ui-datepicker-target">
						 <?php } ?>  
                    </li>

                     <li>
                        <label>guest</label>
                        <select id="number_of_guests" name="number_of_guests" onchange="myfunction(this.value);">
					   <?php for($i=1;$i<=$product->accommodates;$i++){ echo '<option value="'.$i.'">'.$i.'</option>';}?>
						</select>
                    </li>
                </ul>

                <div class="service-copmity">
                                    
                     

                    <ul>
                    <li><span id="bookingdate">
					<?php
					echo  "Booking for"; ?> 1 Night
					
					
				<!--	echo $this->session->userdata('currency_s'). stripslashes($product->price) * $this->session->userdata('currency_r'); ?> x 1 Night--> </span>
<label class="price"><?php echo $this->session->userdata('currency_s'); ?></label><label id="bookingsubtot">
					<?php echo stripslashes($product->price) * $this->session->userdata('currency_r'); ?>
					
					
					
					<?php //echo $product->price;?></label></li>
                    
                     <li><span>Service Fee</span>
					<!-- <a href="javascript:void(0);" style="background-position: -120px -120px;width:20px;height:20px;background-image: url('./img/glyphicons-halflings.png');position: absolute; left: 110px; margin: 8px 0px 0px;"  title="Service fee"></a> -->
					       <label class="price"><?php echo $this->session->userdata('currency_s'); ?></label><label class="table-cell-price" id="service_tax" >
                     <?php if($service_tax->num_rows()==0){
								echo 'No Tax';
							}else if($service_tax->row()->promotion_type=='flat'){?>
								
							<center><p style="font-size:14px" id="stax"><?php echo $service_tax->row()->commission_percentage; ?></p></center>
							<?php 
							}else{
							$servicefee =$product->price*$this->session->userdata('currency_r');
							//echo  $service_tax->row()->commission_percentage.'%';
						?>
					 
					 
					<center>
					<p style="font-size:14px" id="stax">
					<?php 
					
					echo round(($servicefee * $service_tax->row()->commission_percentage)/100);?></p></center>
		
					  <?php
					 //echo '(Instead of '.$service_tax->row()->commission_percentage.' %'.')';
					 }
                     
                     ?>
                     </label></li>
					 <p id="servicetax"  style="display:none;"><?php echo $service_tax->row()->commission_percentage; ?></p>
					 <p id="taxtype" name="taxtype" style="display:none;"><?php echo $service_tax->row()->promotion_type; ?></p>
                    <li ><span>Total </span><label class="price"> <?php echo $this->session->userdata('currency_s'); ?></label><label id="bookingtot" class="table-cell-price">0.00</label></li>
					
					 <li style="display:none;"><span>Total </span><label id="bookingtot1" class="table-cell-price"></label></li>
					
                  </ul>
                </div>

                <div class="submit-link"><a class="booking-btn" onclick="return  BookingIt_new();" href="javascript:void(0);">Book Now</a></div>

				
				
				
				
				</div>
				
				
				
				 <div class="heart-list">
                    
                    <?php if($loginCheck!=''){?>
                    <a class="ajax cboxElement" href="site/rentals/AddWishListForm/<?php echo $product->id;?>" style="pointer:cursor"><?php if($this->lang->line('header_add_list') != '') { echo stripslashes($this->lang->line('header_add_list')); } else echo "Save to Wish List"; ?></a>
                    <?php } else {?>
                    <a  class="login-popup ajax cboxElement" href="site/rentals/AddWishListForm/<?php echo $product->id;?>" style="pointer:cursor"><?php if($this->lang->line('header_add_list') != '') { echo stripslashes($this->lang->line('header_add_list')); } else echo "Save to Wish List"; ?></a>
                    <?php }?>
                    </div>
					
					 <div class="save-wishlist">

                   


                    <div class="fb-sect">

                         <label>Share</label>

                         <ul class="fbids">
						 <?php 
						 $description=$product->space;
						 $url=base_url().'rental/'.$product->id;
						 
						 $url=urlencode($url);
						 //echo $url;die;
						 $facebook_share='http://www.facebook.com/sharer.php?u='.$url;
						 //$google_plus_share='https://accounts.google.com/share?url='.$url;
						 $twitter_share='https://twitter.com/share?url="'.$url.'"';?>
                           <li><a class="fba1" target="_blank" href="<?php echo $facebook_share;?>"></a></li>
                            <!--<li><a class="fba2" target="_blank" href="<?php echo $google_plus_share;?>"></a></li>-->
                             <!--<li><a class="fba3" target="_blank" href="<?php echo $this->config->item('pinterest');?>"></a></li>-->
                             <li><a class="fba4" target="_blank" href="<?php echo $twitter_share;?>"></a></li>
							 <li><a href="https://plus.google.com/share?url={<?php echo $url; ?>}" onclick="javascript:window.open(this.href,
  '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><img
  src="https://www.gstatic.com/images/icons/gplus-64.png" alt="Share on Google+"/></a></li>
                        </ul>
						 
                    </div>

                    <div class="shading"><img src="images/shadings.png"></div>


                    
                </div>
             
			 </div>






            </div>
<!--......... .......... .......... FOR EMPTY SPACE....................-->

        </div>
    </div>
	</div>
<div id="listing"></div>
</section>





<section>

    <div class="about-listing">
        <div class="container" id="about-listing-text">
            <div class="col-md-7" >
            <div class="left-listg-container">
			
                <h2><a>About This Listing</a> </h2>
                <?php if($product->description !="") { ?>
                <span class="info-area">
                <?php echo stripslashes($product->description); ?>
                </span>
                <?php } ?>

                <figure class="about-list-img">
                
    <?php
        $imgArr = $productImages->result_array();
        if(count($imgArr)>0)
        {
        
        echo '<img src="'.base_url().PRODUCTPATH.$imgArr[0]['product_image'].'" width="630" alt="'.$img['imgtitle'].'" />';
        }
        else
        {
            echo '<img src="images/product/dummyProductImage.jpg" width="192" height="113" alt="" />';
        }
      ?>
                </figure>

            

            <article class="descri-section">
                <label>
                <span class="left-space">The Space</span>
                 
				
               
				 
                <ul class="right-space">
                    <li>
                        <ul class="acomdation-type">						
							<li>
								<span><?php if($this->lang->line('bed_type') != '') { echo stripslashes($this->lang->line('bed_type')); } else echo "Bed type";?>: </span>
								<label><?php echo stripslashes(ucfirst($product->bed_type)); ?></label>
							</li>
							<li>
								<span>Property type:</span>
								<label><?php echo stripslashes(ucfirst($product->home_type)); ?></label>
							</li>
							<li> 
								<span>
									<?php if($this->lang->line('accommodates') != '') { echo stripslashes($this->lang->line('accommodates')); } else echo "Accommodates";?>:
								</span>
								<label><?php echo stripslashes(ucfirst($product->accommodates)); ?></label>
							</li>
							<li> 
								<span>Number of bathrooms</span>
								<label><?php if($product->noofbathrooms!=""){echo $product->noofbathrooms; }else { echo "Nil"; } ?></label>
							</li>
                        </ul>
                    </li>
                    <li>
                        <ul class="acomdation-type">
							<li>
								<span><?php if($this->lang->line('bathrooms') != '') { echo stripslashes($this->lang->line('bathrooms')); } else echo "Bathrooms";?>: </span>
								<label><?php echo stripslashes($product->bathrooms); ?></label>
							</li>
							<li>
								<span>Room type:</span>
								<label><?php echo stripslashes(ucfirst($product->room_type)); ?></label>
							</li>
							<li> 
								<span><?php if($this->lang->line('bed') != '') { echo stripslashes($this->lang->line('bed')); } else echo "bed";?>:</span>
								<label> <?php echo stripslashes($product->beds); ?></label>
							</li>
							
							<li> 
								<span><?php if($this->lang->line('bedrooms') != '') { echo stripslashes($this->lang->line('bedrooms')); } else echo "Bedrooms";?>:</span>
								<label> <?php echo stripslashes($product->bedrooms); ?></label>
							</li>
                        </ul>
                    </li>
					

                </ul>
                <label>
            </article> 
<?php 

		if($listItems->num_rows()>0) {
		$sub_list=explode(',',$product->list_name);
		//echo '<pre>';print_r($sub_list);die;
			foreach($listItems->result() as $list){

		?>

			<article class="descri-section new-line">

                <label class="ful-lent">

                <span class="left-space"><?php echo $list->attribute_name; ?></span>

                <ul class="right-space amenities-type">

				<?php

                   $list_name = $listDetail->row()->list_name;

                    $facility = (explode(",", $list_name));
					
					$listValues = $this->product_model->get_all_details(LIST_VALUES,array('list_id'=>$list->id));
					//echo "<pre>"; print_r($listValues->result_array());
					if($listValues->num_rows()>0){

					$mcount = 0;					
					
					foreach($listValues->result() as $details){
					
					$key=$details->id;
					if(in_array($key,$sub_list))
					{
						$arrayAvailable[] = $details;
					}
					else
					{
						$arrayNotAvailable[] = $details;
					}
					}
					$newAmenities = array_merge($arrayAvailable, $arrayNotAvailable);
					//echo "<pre>"; print_r($newAmenities); 
					foreach($newAmenities as $details){

					$key=$details->id;
					?>

					

					<li <?php if($mcount>4){ echo 'class="amore'.$list->id.'" style="display:none"'; }?>><img src="images/attribute/<?php echo $details->image;?>" style="height:25px;width:25px;float:left;"/><label <?php if(!in_array($key,$sub_list)){ echo 'style="text-decoration:line-through"';} ?>><?php echo $details->list_value;?></label></li>

					<?php

					$mcount++;

						}
						$newAmenities = array();
						$arrayAvailable = array();
						$arrayNotAvailable = array();
						}

                        ?>

						 <?php if($listValues->num_rows > 5){ ?>

					<a class="moretag" href="javascript:void(0);" onclick="displydesc11<?php echo $list->id;?> (this)" style="float:right;">+ more</a>

					<?php } ?>

					</ul>

					</label>

					</article>

					<?php 

					}

					}

					?>
		  
				<?php  if($product->price_perweek=='0.00') { 
						   $chkval=0;
						   }
						   
						 ?>
			
			<?php  //if($chkval!=0) {  ?>
			
               <label class="ful-lent new-line">
                <span class="left-space">Prices </span>

                   <ul class="right-space">
                    <li class="exttra-area">
                       <ul class="extra-type">
                         
						 
						 <?php if($product->price_perweek===0.00) { 
						   $weekprice=0;
						   }
						   else {
						   $weekprice =$product->price_perweek;
						   }
						 ?>
						 <?php if($weekprice!=0) { ?>
						 <li><span><?php if($this->lang->line('header_country') != '') { echo stripslashes("Weekly"); } else echo "Weekly";?>:</span><label><?php echo $this->session->userdata('currency_s').$product->price_perweek; ?></label></li>
						 <?php } ?>
						

						<?php if($product->price_permonth===0.00) { 
						   $monthlypriece=0;
						   }
						   else {
						   $monthlypriece =$product->price_permonth;
						   }
						 ?>
						 
						 <?php if($monthlypriece!=0) { ?>
                         <li> <span><?php if($this->lang->line('header_city') != '') { echo stripslashes("Monthly"); } else echo "Monthly";?>: </span><label> <?php echo $this->session->userdata('currency_s').$product->price_permonth; ?></label></li>
                          
						   <?php } ?>
						   
						   
						  
						   
						    <?php if($product->cancellation_policy!='') { ?>
                         <li> <span><?php if($this->lang->line('cancellation_policy') != '') { echo stripslashes("cancellation_policy"); } else echo "Cancellation Policy";?>: </span><label> 
						 <a href="<?php echo base_url();?>pages/cancellation-policy"><?php echo ucfirst($product->cancellation_policy); ?></a></label></li>
                          
						   <?php } ?>
						   
						   <?php if($product->security_deposit!='') { ?>
                         <li> <span><?php if($this->lang->line('security_deposit') != '') { echo stripslashes("security_deposit"); } else echo "Security Deposit";?>: </span><label> <?php echo $this->session->userdata('currency_s').$product->security_deposit; ?></label></li>
                          
						   <?php } ?>
			
			
                        </ul>
                    </li>

                   

                </ul>
            </label>
			
			<?php //} ?>
			
			
            </article>  

				<?php 
				if($product->space != ""){
				?>
                <article class="descri-section">
                       <label class="ful-lent"  style="padding: 0px !important;">
                <span class="left-space newspace">Description</span>

                 <div class="right-space space-descri-area">
                   
                   <h3 style="font-weight:bold;">The Space<?php //echo $product->product_title; ?></h3><p style="align:justify;">
				   <?php $space= stripslashes($product->space);
				   
					$lengh=strlen($space);
				    $string  = $space;
					$needle = '.';
					$nth = '2';
					$max = strlen($string);
					$n = 0;
					for($i=0;$i<$max;$i++)
					{
						if($string[$i]==$needle)
						{
							$n++;
							if($n>=$nth)
							{
								break;
							}
						}
					}			
					$pos = $i+1;
					
					$string = substr($space, 0, $pos);
					echo nl2br(stripslashes($string));
	
	
	
	
	
                        //echo substr($space,0,139);?></p>
                        <span id="desc" style="display:none;"><p style="align:justify;"><?php echo nl2br(stripslashes(substr($space, $pos)));?><p>
						<?php if($product->other_thingnote!=''){?>
						<h3 style="font-weight:bold;">Other Things to Note</h3>
						<p style="align:justify;"><?php echo nl2br(stripslashes($product->other_thingnote));?></p>
						<?php }?>
						</span>
                      <?php 
                        {?>
                        <a class="moretag" href="javascript:void(0);" onclick="displydesc2(this)" style="float:right;">+ more</a>
                        <?php } ?>
				   <br />
				   </div>   
            </label>
                </article> 
				<?php }?>
				
					
				
				
				
				
				
          
                 <?php if($product->house_rules!='') { ?>  
                 <article class="descri-section">
				  <label class="ful-lent" style="padding: 0px !important;">
                 <span class="left-space">House Rules</span>
                 <div class="right-space space-descri-area">
                 <p style="align:justify;">
				  <?php $home= stripslashes($product->house_rules);
				  
				  
				  $string  = $home;
					$needle = '.';
					$nth = '2';
					$max = strlen($string);
					$n = 0;
					for($i=0;$i<$max;$i++)
					{
						if($string[$i]==$needle)
						{
							$n++;
							if($n>=$nth)
							{
								break;
							}
						}
					}			
					$pos = $i+1;
					
					
                        echo nl2br(substr($home,0,$pos));
                        echo '<span id="deschome" style="display:none;">'.nl2br(substr($home,$pos)).'</span>';?></p>
                      <?php 
                        $home=strlen($home);
                        if($home>$pos){?>
                        <a class="moretag" href="javascript:void(0);" onclick="displydesc4(this)" style="float:right;">+ more</a>
                        <?php } ?>
				   <br />
                 </p>
				 </label>
                 </div>
                 </article>  

                <?php } ?>  
      
                <article class="descri-section">
                <span class="left-space">Availability</span>
                <div class="right-space space-descri-area">
                <?php if($product->minimum_stay !=0 ){?>
                <ul><li class="minstwy"><span>Minimum Stay:</span> <label> <?php echo $product->minimum_stay; if($product->minimum_stay==1){echo" night";}else {echo " nights";}?></label></li></ul>
                <?php }?><li><a class="viwe-text" href="javascript:void(0);" onclick="productImage_Calendar()">View Calendar</a></li>
                </div>
                </article>  


                <article class="descri-section">
                 <?php
        $imgArr = $productImages->result_array();
        if(count($imgArr)>1)
        {
        echo '<img src="'.base_url().PRODUCTPATH.$imgArr[1]['product_image'].'" width="630" alt="'.$img['imgtitle'].'" />';
        }
        else
        {
            echo '<img src="images/product/dummyProductImage.jpg" width="192" height="113" alt="" />';
        }
      ?>
                <div style="display:none;">
                 <div class="clear"></div>
                            <?php 
             $_SESSION['PropId'] =  $productDetails->row()->id;
             
              
             include('calendar.php'); ?>
                </div>
                </article>



</div>
</div>

<?php
	$protocol = ((isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == "on") ? "https" : "http");
    $base_url = $protocol . "://" . $_SERVER['HTTP_HOST'];
	$complete_url =   $base_url . $_SERVER["REQUEST_URI"];
	?>
             <div class="col-md-5">
               
            </div>
        </div>


    </div>

</section>
<section>

<!-- 
<?php 
if($loginCheck!=''){
if($product->user_id!=$userDetails->row()->id){
if(count($user_reviewData->result_array()) == ''){
?>
<a class="btn-create create-button" href="javascript:void(0);" onclick="addreview(this);" ><?php echo "Write a Review"; ?></a>
<?php }}} else if($loginCheck==''){?>
 <a class="login-popup ajax cboxElement btn-create create-button" href="javascript:void(0);" style="pointer:cursor"><?php echo "Write a Review"; ?></a>
 <?php }?>
-->
 
<?php
if($user_reviewData !='')
{
$total_review = count($reviewData->result_array()) + count($user_reviewData->result_array());
}
else{
$total_review = count($reviewData->result_array());
}
?>
<div class="floats-type">
<div class="container" id="reviews_list">
<div class="riwiew-container" id="reviews">
<div id=""></div>
<?php if($total_review == 0){?>
<div class="reviw-not-show">
<h4 class="row-revw-yet"> No Reviews Yet </h4>
<p> Stay here and you could give this host their first review! </p>
</div>
<?php  }else {?>
<div class="reviw-count" style="margin:20px 0px 0px 20px;">
<?php echo $total_review;?> review<span style="padding-right: 10px;"></span><span class="review_img"><span class="review_st" style="width:<?php echo $reviewTotal->row()->tot_tot * 20?>%"></span></span>
</div>
<div class="review-summary" style="padding-top: 10px;margin-left: 20px;">
<span class="summar-text">Summary</span>
<ul class="right-sumay">
<li><span class="prictil" style="padding-right:10px;">Accuracy</span><span class="review_img" ><span class="review_st" style="width:<?php echo $reviewTotal->row()->tot_acc * 20?>%"></span></span></li>
<li><span class="prictil" style="padding-right:10px;">Location</span><span class="review_img" ><span class="review_st" style="width:<?php echo $reviewTotal->row()->tot_loc * 20?>%"></span></span></li>
<li><span class="prictil" style="padding-right:10px;">Communication</span><span class="review_img" ><span class="review_st" style="width:<?php echo $reviewTotal->row()->tot_com * 20?>%"></span></span></li>
<li><span class="prictil" style="padding-right:10px;">Check In</span><span class="review_img" ><span class="review_st" style="width:<?php echo $reviewTotal->row()->tot_chk * 20?>%"></span></span></li>
<li><span class="prictil" style="padding-right:10px;">Cleanliness</span><span class="review_img" ><span class="review_st" style="width:<?php echo $reviewTotal->row()->tot_cln * 20?>%"></span></span></li>
<li><span class="prictil" style="padding-right:10px;">Value</span><span class="review_img" ><span class="review_st" style="width:<?php echo $reviewTotal->row()->tot_val * 20?>%"></span></span></li>
</ul>
<?php }?>
<ul class="list-paging">
<?php if($user_reviewData !=''){foreach($user_reviewData->result_array() as $review ):?>
<li>
<div class="peps">
<figure class="peps-area">
<img src="images/users/<?php if($review['image'] == '')echo "owner_img.png"; else echo $review['image']; ?>">
</figure>

<span class="johns"><b><?php echo $review['firstname']?><br/>(Your Review)</b></span>
</div>

<div class="listd-right">
<p><?php  /* $word1 = word_limiter($review['review'], 25);
          $word2 = word_limiter($review['review'], 25);
          echo $word1; */
          //echo $word2;
		  echo $review['review'];
		  ?></p>
<!--<a href="#">+ more</a>-->
<?php if($review['owner_reply'] != '') {?><a href="javascript:void(0);" style="float:right;" onClick="toggle_visibility(<?php echo $review['id'];?>);">View Reply</a></br>
<p style="display:none; padding:12px;color:blue;" id="reply_<?php echo $review['id'];?>"><?php echo $review['owner_reply'];?></p>

<?php }?>
<label class="date-year"><?php echo date('F Y',strtotime($review['dateAdded']));?></label>
</div>
<ul class="right-review">
<li><span style="padding-right:10px;">Accuracy</span><span class="review_img" ><span class="review_st" style="width:<?php echo $review['accuracy'] * 20?>%"></span></span></li>
<li><span style="padding-right:10px;">Location</span><span class="review_img" ><span class="review_st" style="width:<?php echo $review['location'] * 20?>%"></span></span></li>
<li><span style="padding-right:10px;">Communication</span><span class="review_img" ><span class="review_st" style="width:<?php echo $review['communication'] * 20?>%"></span></span></li>
<li><span style="padding-right:10px;">Check In</span><span class="review_img" ><span class="review_st" style="width:<?php echo $review['checkin'] * 20?>%"></span></span></li>
<li><span style="padding-right:10px;">Cleanliness</span><span class="review_img" ><span class="review_st" style="width:<?php echo $review['cleanliness'] * 20?>%"></span></span></li>
<li><span style="padding-right:10px;">Value</span><span class="review_img" ><span class="review_st" style="width:<?php echo $review['value'] * 20?>%"></span></span></li>
</ul>
</li>
<?php endforeach;}?>
<?php foreach( $reviewData->result_array() as $review ):?>
<li>
<div class="peps">
<figure class="peps-area">
<img src="images/users/<?php if($review['image']=='')echo "owner_img.png"; else echo $review['image']; ?>">
</figure>

<span class="johns"><?php echo $review['firstname'];?></span>
</div>
<div class="listd-right">
<p><?php  /* $word1 = word_limiter($review['review'], 25);
          $word2 = word_limiter($review['review'], 25);
          echo $word1; */
          echo $review['review'];?></p>
<!--<a href="#">+ more</a>-->
<?php if($review['owner_reply'] != '') {?><a href="javascript:void(0);" style="float:right;" onClick="toggle_visibility(<?php echo $review['id'];?>);">View Reply</a></br>
<p style="display:none; padding:12px;color:blue;" id="reply_<?php echo $review['id'];?>"><?php echo $review['owner_reply'];?></p>

<?php }?>
<label class="date-year"><?php echo date('F Y',strtotime($review['dateAdded']));?></label>
</div>
</li>
<?php endforeach;?>
</ul>
</div>
</div>


<script type="text/javascript">

    function toggle_visibility(id) {
       var e = document.getElementById('reply_'+id);
       if(e.style.display == 'block')
          e.style.display = 'none';
       else
          e.style.display = 'block';
    }

</script>

<!---------end review ------------>

</div>
</div>
</section>
<div id="add_review" style="display:none; margin:2em 0px 0px 8em;">
<?php if($loginCheck !=''){ echo form_open('site/product/add_review',array('id'=>'reviewForm'));?>
<input type="hidden" name="proid" value="<?php echo $product->id;?>" />
<input type="hidden" name="user_id" value="<?php echo $product->user_id; ?>" />
<label>My review<span>*</span>
<span style="font-size:12px; color:#666;"> (Exclude personally identifiable information such as name, email address, etc)</span></label>
<textarea  name="review" id="review" class="scroll_newdes" style="height:90px;" onkeypress="return IsEmpty('title');"></textarea>
<div id="review_warn"  style="float:left; color:#FF0000;"></div>
<div class="clear"></div>
<input type="hidden" name="accuracy" id="r1"/>
<input type="hidden" name="communication" id="r2"/>
<input type="hidden" name="cleanliness" id="r3"/>
<input type="hidden" name="location" id="r4"/>
<input type="hidden" name="checkin" id="r5"/>
<input type="hidden" name="value" id="r6"/>
<input type="hidden" name="total_review" id="r7" value=""/>

<div class="star_rating">
Accuracy<div class="exemple5" data-id="r1" data="10_5"  style="width:60%;  margin:-1em 0em 7px 8em "></div>
communication<div class="exemple5" data-id="r2" data="10_5"  style="width:60%;  margin:-1em 0em 7px 8em "></div>
cleanliness<div class="exemple5" data-id="r3" data="10_5"  style="width:60%;  margin:-1em 0em 7px 8em "></div>
location<div class="exemple5" data-id="r4" data="10_5"  style="width:60%;  margin:-1em 0em 7px 8em "></div>
checkin<div class="exemple5" data-id="r5" data="10_5"  style="width:60%;  margin:-1em 0em 7px 8em "></div>
value<div class="exemple5" data-id="r6" data="10_5"  style="width:60%;  margin:-1em 0em 7px 8em "></div>
</div>


<div class="field_login" style=" margin-top:10px;">
  <input type="hidden" name="reviewer_id" value="<?php if($userDetails!='no') { echo $userDetails->row()->id; }?>" />
  <input type="hidden" name="thumbnail" value="<?php if($userDetails!='no') { echo $userDetails->row()->image; }?>" />
  <input type="button" name="Review" id="Review" onClick="add_review()" class="form_sub" value="Submit my review">
</div>
<?php echo form_close();}?>
</div>

<section>

<div class="about-titl" >
<div class="container" id="host">


                      <h2 class="abt-host-text">About the Host, <?php echo ($product->user_id > 0 && $product->user_id !='')?$product->firstname :'Administrator';?></h2>

                      <ul class="list-paging">
                      <li>
                        <div class="peps">
                           <figure class="peps-area"><img src="images/users/<?php if($product->thumbnail=='')echo "owner_img.png"; else echo $product->thumbnail; ?>"></figure>

                        </div>
                       <div class="listd-right">
                        <p><?php $description1= stripslashes($product->description1);
                        echo substr($description1,0,100);
                        echo '<span id="more_description" style="display:none;">'.substr($description1,100).'</span>';?></p>
                      <?php 
                        $description1=substr($description1,100);
                        $description1=strlen($description1);
                        if($description1>10){?>
                        <a class="moretag" href="javascript:void(0);" onclick="displydesc1(this)">+ more</a>
                        <?php } ?>
                       </div>

                      </li>


                        <!-- <li>
                        <div class="peps">
                           
                        </div>
                       <div class="listd-right">
                       <span>Response rate: <?php echo $product->response_rate.'%';?><span>
                        <span>Response time: within an hour</span>
                       <span> Member since <?php echo date('F Y',strtotime($product->user_created));?></span>
                       </div>

                      </li>-->


                        <li>
                        <div class="trudt-text">Connection
                           
                        </div>
                       <div class="listd-right">
                       <span>Are you or your friends connected with this host?</span>
                     <a target="_blank" href="<?php echo base_url().'facebook/user.php'; ?>" id="fb-connect" style="list-style-type:none;"><img src="images/fbds.png"></a>
                       </div>

                      </li>


                           
                            <li>
                        <div class="peps">
                          <span class="trudt-text">Trust</span>
<?php
$hostId = $productDetails->row()->user_id;
$reviewRslt = $this->product_model->get_all_details(REVIEW,array('user_id'=>$hostId, 'status'=>'Active'));

if($user_reviewData !='')
$total_review = count($reviewData->result_array()) + count($user_reviewData->result_array());
else{
$total_review = count($reviewData->result_array());
}
?>
                        </div>
                       <div class="listd-right">
                        <span class="reviews-mark"><?php echo $reviewRslt->num_rows();?> Reviews</span>
                       </div>

                      </li>





                      </ul>
   
                    </div>
</div>
</section>



<script type="text/javascript" src="js/site/downloadxml.js"></script>

 

<style type="text/css">

html, body { height: 100%; } 

</style>

<script type="text/javascript"> 

    var side_bar_html = ""; 

    var img='images/mapIcons/marker_red.png'; 

	var yimg='images/mapIcons/marker_yellow.png';

    var gmarkers = []; 

    var gicons = [];

    var map = null;

	

	gicons["red"] = new google.maps.MarkerImage(img,

    new google.maps.Size(20, 34),

    new google.maps.Point(0,0),

    new google.maps.Point(9, 34));

	

	var iconImage = new google.maps.MarkerImage(img,

    new google.maps.Size(20, 34),

    new google.maps.Point(0,0),

    new google.maps.Point(9, 34));

	

	var iconShadow = new google.maps.MarkerImage('images/mapIcons/shadow50.png',

    new google.maps.Size(37, 34),

    new google.maps.Point(0,0),

    new google.maps.Point(9, 34));

    

	var iconShape = {

    coord: [9,0,6,1,4,2,2,4,0,8,0,12,1,14,2,16,5,19,7,23,8,26,9,30,9,34,11,34,11,30,12,26,13,24,14,21,16,18,18,16,20,12,20,8,18,4,16,2,15,1,13,0],

    type: 'poly'

  };



	function getMarkerImage(iconColor) {

	

		if ((typeof(iconColor)=="undefined") || (iconColor==null)) { iconColor = "red";}

		if (!gicons[iconColor]) {

   

		gicons[iconColor] = new google.maps.MarkerImage("images/mapIcons/marker_"+iconColor+".png",

		

		new google.maps.Size(27, 32),

		new google.maps.Point(0,0),

		new google.maps.Point(9, 34));

   } 

   

   return gicons[iconColor];



}



    gicons["blue"] = getMarkerImage("blue");

    gicons["green"] = getMarkerImage("green");

    gicons["yelow"] = getMarkerImage("yellow");

		

	function createMarker(latlng,name,html,color,details,rid) {

    

	var contentString = html;

    var marker = new google.maps.Marker({

        position: latlng,

        icon: gicons[color],

        shadow: iconShadow,

        map: map,

        title: name,

		animation: google.maps.Animation.DROP,

        zIndex: Math.round(latlng.lat()*-100000)<<5

        });

  

		google.maps.event.addListener(map, 'idle', function(event) {

		});

  



		google.maps.event.addListener(marker, 'click', function() {

        

		infowindow.setContent(contentString); 

        

		infowindow.open(map,marker);

        });

        
	if(details != '')
	{
		google.maps.event.addListener(marker, "mouseover", function() {

          marker.setIcon(gicons["yellow"]);

        });

        google.maps.event.addListener(marker, "mouseout", function() {

          marker.setIcon(gicons["blue"]);

        });
	}
	else
	{
		google.maps.event.addListener(marker, "mouseover", function() {

          marker.setIcon(gicons["green"]);

        });

        google.maps.event.addListener(marker, "mouseout", function() {

          marker.setIcon(gicons["green"]);

        });
	}
    gmarkers.push(marker);

    

    var marker_num = gmarkers.length-1;

	
	if(details != '')
	return '<li class="slide_li" onmouseover="gmarkers['+marker_num+'].setIcon(gicons.yellow)" onmouseout="gmarkers['+marker_num+'].setIcon(gicons.blue)">'+details+'</li>';
	else return;

	

}

 

 

function myclick(i) {

  google.maps.event.trigger(gmarkers[i], "click");

}



function initialize() {

	var myOptions = {

	scrollwheel: false,

    zoom: 12,

	zoomControl:true,

	zoomControlOptions: {

	style:google.maps.ZoomControlStyle.SMALL

	},

    

	center: new google.maps.LatLng(<?php echo $product->latitude;?>,<?php echo $product->longitude;?>),

    

	mapTypeControl: true,

    mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},

    navigationControl: true,

    mapTypeId: google.maps.MapTypeId.ROADMAP

	}

	

	map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

 

	google.maps.event.addListener(map, 'click', function() { infowindow.close(); });



    downloadUrl();

  }

 

 

function downloadUrl() {  


	var marker = '';
    var totalResults= '<?php echo count($DistanceQryArr->result()); ?>';

    <?php 

       $useId=base_url().'users/show/'.$product->id;

	    if($product->thumbnail == '') $useImg=base_url().'images/users/owner_img.png';

		else $useImg=base_url().'images/users/'.$product->thumbnail;

        

      ?>

      

		var lat ='<?php echo $product->latitude; ?>'; 

      

		var lng ='<?php echo $product->longitude; ?>';

         

		var point = new google.maps.LatLng(lat,lng);

		  

		<?php

		$imgArr = $productImages->result_array();		

		$simg = 'dummyProductImage.jpg';

		if($imgArr[0]['product_image']!= '' && file_exists('./server/php/rental/'.$imgArr[0]['product_image'])){ $simg = $imgArr[0]['product_image'];

		}?>

		  

         

		var html = '<div class="infoBox similar-listing" ><li><div class="img-top"><div class="figures-cobnt"><img src="<?php echo PRODUCTPATH.$simg; ?>"></div><div class="posi-abs"><a class="ajax cboxElement heart" href="site/rentals/AddWishListForm/<?php echo $Row_Rental->id;?>"></a><label class="pric-tag"><span class="rm-rate"><?php echo $currencySymbol; ?></span><?php echo $product->price * $this->session->userdata('currency_r'); ?></label><a class="aurtors" href="<?php echo $useId; ?>"><img style="border-radius: 50%;height: 70px;width: 100px;" src="<?php echo $useImg; ?>"></a></div></div><div class="img-bottom"><span class="headlined" style="margin: 0 !important;"><?php echo addslashes($product->product_title); ?></span><p class="describ"><?php echo ucfirst($product->home_type); ?>- <?php echo ucfirst($product->CityName); ?></p></div></li></div>';

    

		var details='';

    

		var label ='<?php echo trim(addslashes($product->product_title));?>';

        

		createMarker(point,label,html,"green",details,'<?php echo $product->id; ?>');

		

    if(totalResults > 0) {

    

    //$("#side_bar").html("<img id='validationEr1r' align='middle' style='margin-left:200px; margin-top:20px;' src='images/ajax-loader.gif' />");

    <?php 

    if(count($DistanceQryArr->result()) > 0){
	$hoverlist='1';

      

	  foreach($DistanceQryArr->result() as $Row_Rental){

        

        $useId=base_url().'users/show/'.$Row_Rental->userId;

        if($Row_Rental->user_image == '') $useImg=base_url().'images/users/owner_img.png';

		else $useImg=base_url().'images/users/'.$Row_Rental->user_image;

        

      ?>

      

		var lat ='<?php echo $Row_Rental->latitude; ?>'; 

      

		var lng ='<?php echo $Row_Rental->longitude; ?>';

         

		var point = new google.maps.LatLng(lat,lng);
		//alert();
		  

		<?php $simg = 'dummyProductImage.jpg';

		if($Row_Rental->PImg!= '' && file_exists('./server/php/rental/'.$Row_Rental->PImg)){ $simg = $Row_Rental->PImg;

		}?>

		  

         

		var html = '<div class="infoBox similar-listing" ><li><div class="img-top"><div class="figures-cobnt"><img src="<?php echo PRODUCTPATH.$simg; ?>"></div><div class="posi-abs"><a class="ajax cboxElement heart" href="site/rentals/AddWishListForm/<?php echo $Row_Rental->id;?>"></a><label class="pric-tag"><span class="rm-rate"><?php echo $currencySymbol; ?></span><?php echo $Row_Rental->price * $this->session->userdata('currency_r'); ?></label><a class="aurtors" href="<?php echo $useId; ?>"><img style="border-radius: 50%;height: 70px;width: 100px;" src="<?php echo $useImg; ?>"></a></div></div><div class="img-bottom"><span class="headlined" style="margin: 0 !important;"><?php echo addslashes($Row_Rental->product_title); ?></span><p class="describ"><?php echo ucfirst($Row_Rental->room_type); ?>- <?php echo ucfirst($Row_Rental->city_name); ?></p></div></li></div>';

    
		
		//var details = '<div>Welcome</div>';
		
		var details='<div data-price="<?php echo $Row_Rental->price * $this->session->userdata('currency_r'); ?>"><div class="img-top"><div class="figures-cobnt"><a href="rental/<?php echo $Row_Rental->id; ?>"><img src="<?php echo PRODUCTPATH.$simg; ?>"></a></div><div class="posi-abs"><a class="ajax cboxElement heart" href="site/rentals/AddWishListForm/<?php echo $Row_Rental->id;?>"></a><label class="pric-tag"><?php echo $currencySymbol; echo $Row_Rental->price * $this->session->userdata('currency_r'); ?></label><a class="aurtors" href="<?php echo base_url();?>users/show/<?php echo $Row_Rental->userId;?>"><img style="border-radius: 50%;height: 70px;width: 75px; float:right;" src="<?php echo $useImg; ?>"></a></div></div><div class="img-bottom"><span class="headlined"><a  href="rental/<?php echo $Row_Rental->id; ?>" style="float:left;"><?php echo addslashes($Row_Rental->product_title); ?></a></span><p class="describ"><?php echo ucfirst($Row_Rental->home_type); ?>- <?php echo ucfirst($Row_Rental->city_name); ?></p></div></div>';

    

		var label ='<?php echo trim(addslashes($Row_Rental->product_title));?>';

        

		marker += createMarker(point,label,html,"blue",details,'<?php echo $Row_Rental->id; ?>');

		

		<?php $hoverlist=$hoverlist+1;}

    } ?>

        
		side_bar_html='<div class="map-areas"><ul class="similar-listing">'+marker+'</ul></div>';

		document.getElementById("side_bar").innerHTML = side_bar_html;

    

    }

	else{

    $("#side_bar").html("<li>No rentals found..</li>");

    }

} 

var infowindow = new google.maps.InfoWindow(

  { 

    size: new google.maps.Size(50,150)

  });



</script>


<style>
  #map{
  display: block;
  width: 95%;
  height: 350px;
  margin: 0 auto;
  -moz-box-shadow: 0px 5px 20px #ccc;
  -webkit-box-shadow: 0px 5px 20px #ccc;
  box-shadow: 0px 5px 20px #ccc;
}
#map.large{
  height:500px;
}

.overlay{
  display:block;
  text-align:center;
  color:#fff;
  font-size:60px;
  line-height:80px;
  opacity:0.8;
  background:#4477aa;
  border:solid 3px #336699;
  border-radius:4px;
  box-shadow:2px 2px 10px #333;
  text-shadow:1px 1px 1px #666;
  padding:0 4px;
}

.overlay_arrow{
  left:50%;
  margin-left:-16px;
  width:0;
  height:0;
  position:absolute;
}
.overlay_arrow.above{
  bottom:-15px;
  border-left:16px solid transparent;
  border-right:16px solid transparent;
  border-top:16px solid #336699;
}
.overlay_arrow.below{
  top:-15px;
  border-left:16px solid transparent;
  border-right:16px solid transparent;
  border-bottom:16px solid #336699;
}
  </style>

<section>

<div id="location" class="map-section">

<div>

</div>



<div id="map" >

<div id="map_canvas" style="width:100%;height:100%"></div>

</div>



</div>

</section>




<!--<script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-50e6d65b2f88a905"></script>
-->
<style>
#jquery-script-menu {
position: fixed;
height: 90px;
width: 100%;
top: 0;
left: 0;
border-top: 5px solid #316594;
background: #fff;
-moz-box-shadow: 0 2px 3px 0px rgba(0, 0, 0, 0.16);
-webkit-box-shadow: 0 2px 3px 0px rgba(0, 0, 0, 0.16);
box-shadow: 0 2px 3px 0px rgba(0, 0, 0, 0.16);
z-index: 999999;
padding: 10px 0;
-webkit-box-sizing:content-box;
-moz-box-sizing:content-box;
box-sizing:content-box;
}

.jquery-script-center {
width: 960px;
margin: 0 auto;
}
.jquery-script-center ul {
width: 212px;
float:left;
line-height:45px;
margin:0;
padding:0;
list-style:none;
}
.jquery-script-center a {
	text-decoration:none;
}
.jquery-script-ads {
width: 728px;
height:90px;
float:right;
}
.jquery-script-clear {
clear:both;
height:0;
}

.headlined{
margin: -79px 0 8px !important;
}
#side_bar {
  position: relative;
  overflow: hidden;
  margin: 20px auto 0 auto;
  border-radius: 4px;
}

#side_bar ul {
  position: relative;
  width:920px;
  margin: 0;
  padding: 0;
  height: 200px;
  list-style: none;
  left:315px;
}

#side_bar ul li {
  position: relative;
  display: block;
  float: left;
  margin: 0;
  padding: 0;
  width: 320px;
  height: 250px;
  text-align: center;
  line-height: 200px;
}
a.control_prev{
left:0px !important;
}
a.control_prev, a.control_next {
  position: absolute;
  top: 30%;
  z-index: 999;
  display: block;
  padding: 4% 3%;
  width: 20px;
  height: 20px;
  
  color: #blue;
  text-decoration: none;
  font-weight: 600;
  font-size: 18px;
  opacity: 0.8;
  cursor: pointer;
}

a.control_prev:hover, a.control_next:hover {
  opacity: 1;
  -webkit-transition: all 0.2s ease;
}

a.control_prev {
  border-radius: 0 2px 2px 0;
}

a.control_next {
  right: 0;
  border-radius: 2px 0 0 2px;
}

.slider_option {
  position: relative;
  margin: 10px auto;
  width: 160px;
  font-size: 18px;
}
</style>




<section>

    <div class="review-section-area">

    <div class="container">
	<div class="listings">Similar Listings</div>
		
  <div class="center" style="width: 960px; margin: 0 auto;">
    <div class="slides">
      <a href="javascript:void(0);" class="control_next">></a>
     
			<div id="side_bar">

			</div>
			<a href="javascript:void(0);" class="control_prev"><</a>
	</div>
	</div>
	</div>
<input type="hidden" value="<?php echo $product->price; ?>" id="price" />   <input type="hidden" value="<?php echo $product->price * $this->session->userdata('currency_r'); ?>" id="Global_Price" />    
 <input type="hidden" value="<?php echo $product->user_id; ?>" id="ownerid" />

<input type="hidden" id="login_userid" name="login_userid" value="<?php echo $loginCheck; ?>" />
<input type="hidden" value="793959" name="hosting_id" id="hosting_id">
<input type="hidden" name="renter_id" id="renter_id" value="<?php echo $loginCheck; ?>" />
<input type="hidden" name="prd_id" id="prd_id" value="<?php echo $product->id; ?>" />
<input type="hidden" value="" id="results" />
<input type="hidden" value="<?php echo $productDetails->row()->accommodates; ?>" id="RentalGuest" />
</div>

</section>

<input type="hidden" value="" id="results" />
<input type="hidden" value="<?php echo $productDetails->row()->accommodates; ?>" id="RentalGuest" />
<script type="text/javascript">
function reviewValid() {

                
                 $("#title_warn").html('');
                 $("#review_warn").html('');
                 $("#nickname_warn").html('');
                                 
                 
                    if($("#title").val() == ''){                    
                        $("#title_warn").html('This field is required');
                        $("#title").focus();
                        return false;
                        
                    }else if($("#review").val() == ''){
                        $("#review_warn").html('This field is required');
                        $("#review").focus();
                        return false;
                    

                    }else if($("#nickname").val() == ''){
                        $("#nickname_warn").html('This field is required');
                        $("#nickname").focus();
                        return false;
                        
                    }
                    else
                    {   
                            $("#reviewForm").submit();
                    }
                    
                    
    }
        function IsEmail(email) {
        var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if(!regex.test(email)) {
           return false;
        }else{
           return true;
        }
      }
function removeError(idval){
    $("#"+idval+"_warn").html('');}
    

</script>
<script type="text/javascript">
function showView(val){

    if($('.showlist'+val).css('display')=='block'){
        $('.showlist'+val).hide('');    
    }else{
        $('.showlist'+val).show('');
    }   
}


<!-- calculation part -->
function DateBetween(){

     var date = $("#datefrom").datepicker('getDate');

    //var start = date.setDate(date.getDate() + 1),
    var start = date.setDate(date.getDate()),
        end = $("#expiredate").datepicker("getDate"),
        currentDate = new Date(start),
        
        between = [];
    while (currentDate < end) {
        between.push(new Date(currentDate));
        currentDate.setDate(currentDate.getDate() + 1);
    }
   days = between.length;
    $('#results').val(between.join(','));
    var price=$("#Global_Price").val();
    //alert(price);
    
    $.ajax({
        type: 'POST',   
        url:baseURL+'site/product/ajaxdateCalculate',
        data:{'dateval':between.join(','),'pid':$("#prd_id").val(),'price':price},
        success:function(response){
            if(response=='Date Already Booked'){
                $("#datefrom").val("");
                $("#expiredate").val("");
                //alert(response);
                return false;
            }else{
				var subTot=parseFloat(response);
				var newTotl = new Number(subTot+'').toFixed(parseInt(2));
				
				if($("#datefrom").val()!='' && $("#expiredate").val()!='') {
					var diff = ($("#expiredate").datepicker("getDate") - $("#datefrom").datepicker("getDate")) / 1000 / 60 / 60 / 24;
					$('#BookingPriceCalc').show();
					//$('#bookingdate').html(price +' * '+ diff +' nights'); 
					$('#bookingsubtot').html(newTotl);
					$('#bookingdate').html("Booking for "+days+" Night");
					if(days > 1)
					$('#bookingdate').html("Booking for "+days+" Nights");
					$('#number_of_guests').val(1);
					
					var tt = subTot;
					var st = $('#servicetax').html();
					var taxtype =$('#taxtype').html();
					var gg;
					var gg = subTot;
					if( st != '' && taxtype != '')
					{
					if('<?php echo $service_tax->row()->promotion_type; ?>'=='percentage') {
						var taxx = subTot * parseFloat(parseInt(st)/100);
						var taxxs = new Number(taxx+'').toFixed(parseInt(2));
						$('#stax').html(taxxs);
						gg = tt+taxx;
					}else {
						gg = subTot+parseInt(st);
					}
					}
					var newTotl = new Number(gg+'').toFixed(parseInt(2));
					$('#bookingtot').html(newTotl);
					
					return false;
				}
			}
        }
    });
 
}
function DateBetweenContact(){

     var date = $("#datefrom1").datepicker('getDate');

    var start = date.setDate(date.getDate() + 1),
        end = $("#expiredate1").datepicker("getDate"),
        currentDate = new Date(start),
        
        between = []
    ;
    while (currentDate <= end) {
        between.push(new Date(currentDate));
        currentDate.setDate(currentDate.getDate() + 1);
    }
   
    $('#results').val(between.join(','));
    var price=$("#Global_Price").val();
    
    //alert(between.join(','));
    //alert($("#prd_id").val());
    
    $.ajax({
        type: 'POST',   
        url:baseURL+'site/product/ajaxdateCalculate',
        data:{'dateval':between.join(','),'pid':$("#prd_id").val(),'price':price},
        success:function(response){
            if(response=='Date Already Booked'){
                $("#datefrom1").val("");
                $("#expiredate1").val("");
                alert(response);
                return false;
            }
        }
    });
        
    
}



<!-- script added 22/05/2014 ---->
/*function bookingamt(val) {
    
    var noofguest = val.value;
    var amt=$("#price").val();
    $('#bookingtot').html(amt * noofguest);
    
}*/

</script>

<script> 
function BookingIt_new(){

var datefrom=new Date($('#datefrom').val());
var expiredate=new Date($('#expiredate').val());
var diffDays = (expiredate.getTime() - datefrom.getTime())/(24 * 60 * 60 * 1000);
//alert(diffDays);
if ($('#ownerid').val()==$('#login_userid').val()) {
alert("You have no permission");
return false;
} 
else if('<?php echo $productDetails->row()->minimum_stay;?>'>diffDays)
{
alert("Minimum Stay Shoud be "+<?php echo $productDetails->row()->minimum_stay;?>+' Days');
return false;
}
else {
$('#subtotal_area_div').html('');

    var checkin = jQuery.trim($('#datefrom').val());
    var checkout = jQuery.trim($("#expiredate").val());
    var NoofGuest = parseInt(jQuery.trim($("#number_of_guests").val()));
	//alert(NoofGuest);
    var prd_id=$('#prd_id').val();
    var renter_id=$('#ownerid').val();
    if($("#datefrom").val()!='' && $("#expiredate").val()!='') {
        var diff = ($("#expiredate").datepicker("getDate") - $("#datefrom").datepicker("getDate")) / 1000 / 60 / 60 / 24;
    }
}       




var rentguest=jQuery.trim($('#RentalGuest').val());

    if(checkin == ''){
        $("#datefrom").focus();
        return false;
    }else if(checkout== ''){
        $("#expiredate").focus();
        return false;
    }else if(NoofGuest > parseInt(rentguest)){
        $('#subtotal_area_div').html('Maximum number of guests is '+parseInt(rentguest));
        return false;
    }else{  
    //$('#BookingPriceCalc').hide();
    $('#book_it_status').html('<div align="center"><img src="images/load-indicator.gif" align="center" /></div>');
		var totalamt=$('#bookingtot').html();
		var servicefee=$('#stax').html();
					
        $.ajax({
            type: 'POST',
            url: baseURL+'site/user/rentalEnquiry_booking',
            data: {"checkin":checkin,"checkout":checkout,'numofdates':diff,"NoofGuest":NoofGuest,"prd_id":prd_id,"renter_id":renter_id,"serviceFee":servicefee,"totalAmt":totalamt},
            dataType: 'json',
            success: function(json){
            //alert(json['status_code']);
            if(json['message']=='Rental date already booked')
            {
            alert('Rental date already booked');
            }
            else{
             window.location.href = baseURL+'booking/'+$('#prd_id').val();
                }
                    
            }
        });
    }

}

</script>



<!-- script added 22/05/2014 --->
<script>
function myfunction(val) {

var famt =$('#bookingsubtot').html();
//alert(famt);
var service_tax =$('#servicetax').html();
//alert(service_tax+famt);
famt = famt.replace ( /[^\d.]/g, '' );
//famt=parseInt(famt);

service_tax = service_tax.replace ( /[^\d.]/g, '' );
service_tax=parseInt(service_tax);

//service_tax=parseInt(service_tax);

if('<?php echo $service_tax->num_rows()?>'==0)
{
total =(val*famt);


$('#bookingtot').html(total);

}
else if('<?php echo $service_tax->row()->promotion_type; ?>'=='flat')
{
total =(val*famt);
var gtotal = (val*famt);
total =(val*famt)+parseInt(service_tax);
var stax = total-gtotal;
//$('#bookingtot').html(total);
//$('#stax').html(stax);
}
else{
total =(val*famt);
var gtotal = (val*famt);
total =total+(total*parseInt(service_tax)/100);
total=Math.round(total);
var stax = total-gtotal;
//$('#bookingtot').html(total);
//$('#stax').html(stax);
}
}
</script>










<script type="text/javascript">

/*** 
    Simple jQuery Slideshow Script
    Released by Jon Raasch (jonraasch.com) under FreeBSD license: free to use or modify, not responsible for anything, etc.  Please link out to me if you like it :)
***/

function slideSwitch() {
    var $active = $('#slidebanner IMG.active');

    if ( $active.length == 0 ) $active = $('#slidebanner IMG:last');

    // use this to pull the images in the order they appear in the markup
    var $next =  $active.next().length ? $active.next()
        : $('#slidebanner IMG:first');

    // uncomment the 3 lines below to pull the images in random order
    
    // var $sibs  = $active.siblings();
    // var rndNum = Math.floor(Math.random() * $sibs.length );
    // var $next  = $( $sibs[ rndNum ] );


    $active.addClass('last-active');

    $next.css({opacity: 0.0})
        .addClass('active')
        .animate({opacity: 1.0}, 1000, function() {
            $active.removeClass('active last-active');
        });
}

$(function() {
    setInterval( "slideSwitch()", 5000 );
});

</script>

<!-- script added by 14/03/2014 -->
<script>
function amtChange(val) {

var arr = val.split('-');
//  includesFees
    if(arr[0]=="2")  {
        if(arr[1]>0){
        document.getElementById('priceweek_amount').style.display='block';
        }else{
        var price=$('#price_amount').html();
        $('#priceweek_amount').html((price * 7).toFixed(2));
        document.getElementById('priceweek_amount').style.display='block';
        }
    document.getElementById('pricemonth_amount').style.display='none';
    document.getElementById('price_amount').style.display='none';
    document.getElementById('includesFees').style.display='none';
    }
    else if(arr[0]=="3")  {
        if(arr[1]>0){
        
            document.getElementById('pricemonth_amount').style.display='block';
        }else{
            var price=$('#price_amount').html();
            $('#pricemonth_amount').html((price * 30).toFixed(2));
            document.getElementById('pricemonth_amount').style.display='block';
        }
    document.getElementById('priceweek_amount').style.display='none';
    document.getElementById('price_amount').style.display='none';
    document.getElementById('includesFees').style.display='block';
    }
    else if(arr[0]=="1")  {
        document.getElementById('price_amount').style.display='block';
        document.getElementById('pricemonth_amount').style.display='none';
        document.getElementById('priceweek_amount').style.display='none';
        document.getElementById('includesFees').style.display='none';
    }
    
    
    
}
function productImage_Calendar()
{
if($('.descri-section:last >img').css('display')!='none')
{
$('.descri-section:last >img').css('display','none');
$('.descri-section:last >div').css('display','block');
}
else{
$('.descri-section:last >img').css('display','block');
$('.descri-section:last >div').css('display','none');
}
}

function addreview(evt)
{
    $(evt).hide();
    $("#reviews_list").hide();
    $("#add_review").show();
    //$(evt).previous().show(); 
}

$('#demo_button').click(function(){
    alert($("input[name=mystar]").val());
});
</script>
<script type="text/javascript">
function add_review()
{
r1 = $('#r1').val();
r2 = $('#r2').val();
r3 = $('#r3').val();
r4 = $('#r4').val();
r5 = $('#r5').val();
r6 = $('#r6').val();
sum = parseInt(r1) + parseInt(r2) + parseInt(r3) + parseInt(r4) + parseInt(r5) + parseInt(r6);
total_review = sum/6;
$('#r7').val(total_review);
$('#reviewForm').submit();
//alert(r1);
//alert(r2);
}

function visible_invisible(elem)
{
current_id=$(elem).prev('p').find('span').attr('id');

$('#'+current_id).css('display','block');

$($(elem).hide());
}
</script> 




<style>
.similar-listing li {
    margin: 0 0px 0 10px;
}
.header{position:absolute;}
</style>
<script  type="text/javascript">
function scrollDiv(scroll_div_id)
{
 
$('html, body').animate({
 scrollTop: $('#'+scroll_div_id).offset().top-50
    }, 2000); 
	
}
</script>
<?php
$this->load->view('site/templates/prefooter');
$this->load->view('site/templates/footer');?>
<div style="display:none">
<?php $this->load->view('site/popup/list');?>
</div>
<input type="text" value="<?php echo $ProductDealPrice->row()->deal_start_date;?>" id="deal_dateFrom">
<input type="text" value="<?php echo $ProductDealPrice->row()->deal_end_date;?>" id="deal_Dateto">
<input type="text" value="<?php echo $ProductDealPrice->row()->deal_amount;?>" id="deal_amount">


<!---popup banner jquery-->




