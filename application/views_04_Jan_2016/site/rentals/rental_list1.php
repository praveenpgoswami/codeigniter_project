<?php
//echo '<pre>';print_r($productList);die; 
$bedrooms="";
$beds="";
$bedtype="";
$bathrooms="";
$noofbathrooms="";
$min_stay="";
if($listDetail->num_rows()==1){
$roombedVal=json_decode($listDetail->row()->rooms_bed);
$bedrooms=$roombedVal->bedrooms;
$beds=$roombedVal->beds;
$bedtype=$roombedVal->bedtype;
$bathrooms=$roombedVal->bathrooms;
$noofbathrooms=$roombedVal->noofbathrooms;
$min_stay=$roombedVal->min_stay;
}
?>
<?php

//var_dump($PriceMaxMin->row()); 
//var_dump($productList->result());die;
$this->load->view('site/templates/header');
if($productList->num_rows() > 0){
 //echo $PriceMaxMin->row()->MaxPrice; die;
  if($PriceMaxMin->row()->MaxPrice==$PriceMaxMin->row()->MinPrice){
  $MinPrice='0.00';
  }else{
  $MinPrice=$PriceMaxMin->row()->MinPrice;
  }

  if($_GET['minPrice']=='' && $_GET['maxPrice']==''){
    if($SearchPriceMaxMin->row()->SMaxPrice==$SearchPriceMaxMin->row()->SMinPrice){
      $SMinPrice='0.00';
    }else{
      $SMinPrice=$SearchPriceMaxMin->row()->SMinPrice;
    }
    $SMaxPrice=$SearchPriceMaxMin->row()->SMaxPrice;
  }else{
    $SMinPrice=$_GET['minPrice']/$this->session->userdata('currency_r');
    $SMaxPrice=$_GET['maxPrice']/$this->session->userdata('currency_r');
  }

?>

<input type="hidden" value="<?php echo intval($PriceMaxMin->row()->MaxPrice); ?>" id="GMaxPrice" />
<input type="hidden" value="<?php echo intval($MinPrice); ?>" id="GMinPrice" />

<input type="hidden" value="<?php echo intval($SMaxPrice); ?>" id="SMaxPrice" />
<input type="hidden" value="<?php echo intval($SMinPrice); ?>" id="SMinPrice" />

<?php }else{?>
<input type="hidden" value="50000" id="GMaxPrice" />
<input type="hidden" value="0" id="GMinPrice" />

<input type="hidden" value="50000" id="SMaxPrice" />
<input type="hidden" value="0" id="SMinPrice" />

<?php } ?>
<input type="hidden" value="<?php echo $currencySymbol; ?>" id="currencysym" />
<input type="hidden" value="<?php echo $this->session->userdata('currency_r'); ?>" id="currencyrate" />

<!--<script type="text/javascript" src="js/site/list_page.js"></script>
 show View more-->
<script type="text/javascript">
function showView(val){

  if($('.showlist'+val).css('display')=='block'){
    $('.showlist'+val).hide('');  
  }else{
    $('.showlist'+val).show('');
  } 
}
</script>
<script type="text/javascript">
function showView1(val){
  if($('.showlist'+val).css('display')=='list-item'){
    $('.showlist'+val).hide('');  
  }else{
    $('.showlist'+val).show('');
  } 
}
</script>
<!-- End show View more-->

<!-- price range-->
 <link rel="stylesheet" href="css/site/themes-smoothness-jquery-ui.css"  type="text/css"/>
<script>
    var currencyrate=$('#currencyrate').val(); 
    var GMaxPrice=$('#GMaxPrice').val() * currencyrate;
    var GMinPrice=$('#GMinPrice').val() * currencyrate;
    
    var SMaxPrice=$('#SMaxPrice').val() * currencyrate;
    var SMinPrice=$('#SMinPrice').val() * currencyrate;
    
    var currencysym=$('#currencysym').val();
    
    
    $(function() {
    
    $( "#slider-range" ).slider({
    range: true,
    min: GMinPrice,
    max: GMaxPrice,
    values: [ SMinPrice, SMaxPrice ],
    slide: function( event, ui ) {
    $( "#amount" ).val( currencysym + ui.values[ 0 ] + " - "+ currencysym + ui.values[ 1 ] );
    }
    });
    $( "#amount" ).val( currencysym + $( "#slider-range" ).slider( "values", 0 ) +
    " - "+ currencysym + $( "#slider-range" ).slider( "values", 1 ) );
    });
    
    $(function() {
    $( "#slider-price" ).slider({
    range: true,
    min: GMinPrice,
    max: GMaxPrice,
    values: [ SMinPrice, SMaxPrice ],
    slide: function( event, ui ) {
    $( "#amount" ).val( currencysym + ui.values[ 0 ] + " - "+ currencysym + ui.values[ 1 ] );
    }
    });
    $( "#amount" ).val( currencysym + $( "#slider-price" ).slider( "values", 0 ) +
    " - "+ currencysym + $( "#slider-price" ).slider( "values", 1 ) );
    });
    
    $(function() {
	
    $( "#slider-price" ).slider({
	
    range: true,
    min: GMinPrice,
    max: GMaxPrice,
    values: [ SMinPrice, SMaxPrice ],
    slide: function( event, ui ) {
   $( "#price" ).val( currencysym + ui.values[ 0 ] + " - "+ currencysym + ui.values[ 1 ] );
    
    $('#minPrice').val(Math.round(ui.values[ 0 ]));
    $('#maxPrice').val(Math.round(ui.values[ 1 ]));
    
    
    }
    });
    $( "#price" ).val( currencysym + $( "#slider-price" ).slider( "values", 0 ) +
    " - "+ currencysym + $( "#slider-price" ).slider( "values", 1 ) );
    });
    
    
    
</script>
<!-- End price range-->

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




<script type="text/javascript">
// When the DOM is ready, run this function
$(document).ready(function() {
  //Set the carousel options
  $('#quote-carousel').carousel({
    pause: true,
    interval: 4000,
    auto:false,
  });
});
</script>





<style >
.ui-datepicker {  
    width: 216px;  
    height: auto;  
    margin: 5px auto 0;  
    font: 9pt Arial, sans-serif;  
    -webkit-box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, .5);  
    -moz-box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, .5);  
    box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, .5);  
} 

.dark-caret-right-top{display:none !important;}
    .ui-datepicker-header {  
        background: url('images/dark_leather.png') repeat 0 0 #000;  
        color: #e0e0e0;  
        font-weight: bold;  
        -webkit-box-shadow: inset 0px 1px 1px 0px rgba(250, 250, 250, 2);  
        -moz-box-shadow: inset 0px 1px 1px 0px rgba(250, 250, 250, .2);  
        box-shadow: inset 0px 1px 1px 0px rgba(250, 250, 250, .2);  
        text-shadow: 1px -1px 0px #000;  
        filter: dropshadow(color=#000, offx=1, offy=-1);  
        line-height: 30px;  
        border-width: 1px 0 0 0;  
        border-style: solid;  
        border-color: #111;  
    }  
  .ui-datepicker thead {  
    background-color: #f7f7f7;  
    background-image: -moz-linear-gradient(top,  #f7f7f7 0%, #f1f1f1 100%);  
    background-image: -webkit-gradient(linear, left top, left bottombottom, color-stop(0%,#f7f7f7), color-stop(100%,#f1f1f1));  
    background-image: -webkit-linear-gradient(top,  #f7f7f7 0%,#f1f1f1 100%);  
    background-image: -o-linear-gradient(top,  #f7f7f7 0%,#f1f1f1 100%);  
    background-image: -ms-linear-gradient(top,  #f7f7f7 0%,#f1f1f1 100%);  
    background-image: linear-gradient(top,  #f7f7f7 0%,#f1f1f1 100%);  
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f7f7f7', endColorstr='#f1f1f1',GradientType=0 );  
    border-bottom: 1px solid #bbb;  
}
.ui-datepicker-prev {  
    float: left;  
    
}  
.ui-datepicker-next {  
    float: right;  
    
} 
    
  
  .ui-datepicker-prev, .ui-datepicker-next {  
        display: inline-block;  
        width: 30px;  
        height: 30px;  
        text-align: center;  
        cursor: pointer;  
        line-height: 600%;  
        overflow: hidden;  
    } 
  .ui-state-disabled{
   opacity: 1 !important;
  }
  .ui-icon-circle-triangle-w {
  
  }
  .ui-datepicker .ui-datepicker-prev span{
    display: inline-block;  
        text-align: center;  
        cursor: pointer;  
        line-height: 600%;  
        overflow: hidden;
  }
  
    
      .ui-datepicker th {  
        text-transform: uppercase;  
        font-size: 6pt;  
        padding: 5px 0;  
        color: #666666;  
        text-shadow: 1px 0px 0px #fff;  
        filter: dropshadow(color=#fff, offx=1, offy=0);  
    }  
      .ui-datepicker thead {  
        background-color: #f7f7f7;  
        background-image: -moz-linear-gradient(top,  #f7f7f7 0%, #f1f1f1 100%);  
        background-image: -webkit-gradient(linear, left top, left bottombottom, color-stop(0%,#f7f7f7), color-stop(100%,#f1f1f1));  
        background-image: -webkit-linear-gradient(top,  #f7f7f7 0%,#f1f1f1 100%);  
        background-image: -o-linear-gradient(top,  #f7f7f7 0%,#f1f1f1 100%);  
        background-image: -ms-linear-gradient(top,  #f7f7f7 0%,#f1f1f1 100%);  
        background-image: linear-gradient(top,  #f7f7f7 0%,#f1f1f1 100%);  
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f7f7f7', endColorstr='#f1f1f1',GradientType=0 );  
        border-bottom: 1px solid #bbb;  
    }  
  .ui-datepicker tbody td {  
    padding: 0;  
    border-right: 1px solid #bbb;  
} 
    .ui-datepicker tbody td:last-child {  
        border-right: 0px;  
    }  
      .ui-datepicker tbody tr {  
        border-bottom: 1px solid #bbb;  
    }  
    .ui-datepicker tbody tr:last-child {  
        border-bottom: 0px;  
    }  
  #ui-datepicker-div .ui-state-default{
   background:none;
  }
  #ui-datepicker-div .ui-state-focus ,#ui-datepicker-div .ui-state-highlight ,a .ui-state-hover{
   background:none;
  }
  
.infoBox:before {
    border-color: #FFFFFF transparent transparent;
    border-style: solid;
    border-width: 15px;
   
    position: absolute;
}
.infoBox .listing-img img{
position: inherit;

}
.gm-style-iw{

}

.gm-style img { max-width: none; }
.gm-style label { width: auto; display: inline; }
</style>

<script type="text/javascript" src="js/site/downloadxml.js"></script>
 
<style type="text/css">
html, body { height: 100%; } 
</style>
<script type="text/javascript"> 
//<![CDATA[
      // this variable will collect the html which will eventually be placed in the side_bar 
      var side_bar_html = ""; 
    var img='images/mapIcons/marker_red.png'; 
  var yimg='images/mapIcons/marker_yellow.png';
      // arrays to hold copies of the markers and html used by the side_bar 
      // because the function closure trick doesnt work there 
      var gmarkers = []; 
      var gicons = [];
     // global "map" variable
      var map = null;
gicons["red"] = new google.maps.MarkerImage(img,
      // This marker is 20 pixels wide by 34 pixels tall.
      new google.maps.Size(20, 34),
      // The origin for this image is 0,0.
      new google.maps.Point(0,0),
      // The anchor for this image is at 9,34.
      new google.maps.Point(9, 34));
  // Marker sizes are expressed as a Size of X,Y
  // where the origin of the image (0,0) is located
  // in the top left of the image.
 
  // Origins, anchor positions and coordinates of the marker
  // increase in the X direction to the right and in
  // the Y direction down.

  var iconImage = new google.maps.MarkerImage(img,
      // This marker is 20 pixels wide by 34 pixels tall.
      new google.maps.Size(20, 34),
      // The origin for this image is 0,0.
      new google.maps.Point(0,0),
      // The anchor for this image is at 9,34.
      new google.maps.Point(9, 34));
  var iconShadow = new google.maps.MarkerImage('images/mapIcons/shadow50.png',
      // The shadow image is larger in the horizontal dimension
      // while the position and offset are the same as for the main image.
      new google.maps.Size(37, 34),
      new google.maps.Point(0,0),
      new google.maps.Point(9, 34));
      // Shapes define the clickable region of the icon.
      // The type defines an HTML &lt;area&gt; element 'poly' which
      // traces out a polygon as a series of X,Y points. The final
      // coordinate closes the poly by connecting to the first
      // coordinate.
  var iconShape = {
      coord: [9,0,6,1,4,2,2,4,0,8,0,12,1,14,2,16,5,19,7,23,8,26,9,30,9,34,11,34,11,30,12,26,13,24,14,21,16,18,18,16,20,12,20,8,18,4,16,2,15,1,13,0],
      type: 'poly'
  };

function getMarkerImage(iconColor) {
   if ((typeof(iconColor)=="undefined") || (iconColor==null)) { 
      iconColor = "red"; 
   }
   if (!gicons[iconColor]) {
   
      gicons[iconColor] = new google.maps.MarkerImage("images/mapIcons/marker_"+iconColor+".png",
      // This marker is 20 pixels wide by 34 pixels tall.
      new google.maps.Size(27, 32),
      // The origin for this image is 0,0.
      new google.maps.Point(0,0),
      // The anchor for this image is at 6,20.
      new google.maps.Point(9, 34));
   } 
   return gicons[iconColor];

}

      gicons["blue"] = getMarkerImage("blue");
      gicons["green"] = getMarkerImage("green");
      gicons["yelow"] = getMarkerImage("yellow");
// A function to create the marker and set up the event window function 
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
  
    //alert('asdasd'); return false;
    //updMap(0);
    
  });
  

    google.maps.event.addListener(marker, 'click', function() {
        infowindow.setContent(contentString); 
        infowindow.open(map,marker);
        });
        // Switch icon on marker mouseover and mouseout
        google.maps.event.addListener(marker, "mouseover", function() {
          marker.setIcon(gicons["yellow"]);
        });
        google.maps.event.addListener(marker, "mouseout", function() {
          marker.setIcon(gicons["blue"]);
        });
    gmarkers.push(marker);
    // add a line to the side_bar html
    var marker_num = gmarkers.length-1;
   //side_bar_html='<div class="map-areas"><ul class="similar-listing">'+side_bar_html;
   //side_bar_html=side_bar_html+'</ul></div>';
    side_bar_html += '<div onmouseover="gmarkers['+marker_num+'].setIcon(gicons.yellow)" onmouseout="gmarkers['+marker_num+'].setIcon(gicons.blue)">'+details+'</div>';
}
 
 
// This function picks up the click and opens the corresponding info window
function myclick(i) {
  google.maps.event.trigger(gmarkers[i], "click");
}

function initialize() {
// create the map

  var myOptions = {
  scrollwheel: false,
    zoom: 9,
   zoomControl:true,
zoomControlOptions: {
  style:google.maps.ZoomControlStyle.SMALL
},
    center: new google.maps.LatLng(<?php echo $lat; ?>,<?php echo $long; ?>),
    mapTypeControl: true,
    mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
    navigationControl: true,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  map = new google.maps.Map(document.getElementById("map_canvas"),
                                myOptions);
 
  google.maps.event.addListener(map, 'click', function() {
        infowindow.close();
        });

      downloadUrl();
    
    
    }
 
 
function downloadUrl() {  

    //var xmlDoc = xmlParse(doc);
        //var xml = doc.responseXML;
    //var markers = xml.documentElement.getElementsByTagName("marker");
    var totalResults= '<?php echo count($productList->result()); ?>';
    
    if(totalResults > 0) {
    
    $("#side_bar").html("<img id='validationEr1r' align='middle' style='margin-left:200px; margin-top:20px;' src='images/ajax-loader.gif' />");
    <?php 
    
    if(count($productList->result()) > 0){$hoverlist='1';
      foreach($productList->result() as $Row_Rental){
        
        if($Row_Rental->userid!='' && $Row_Rental->userid!='0' ){
          $useId=base_url().'users/show/'.$Row_Rental->userid;
        }else{
          $useId='javascript:void(0);';
        }
        
        if($Row_Rental->userphoto!='' && $Row_Rental->userphoto!='0' ){
          $useImg=base_url().'images/users/'.$Row_Rental->userphoto;
        }else{
          $useImg=base_url().'images/users/user_thumb.png';
        }
      
      ?>
      
      var lat ='<?php echo $Row_Rental->latitude; ?>'; 
      var lng ='<?php echo $Row_Rental->longitude; ?>';
         
          var point = new google.maps.LatLng(lat,lng);
         // var html = markers[i].getAttribute("html");
      var html = '<div class="infoBox similar-listing" ><li><div class="img-top"><div class="figures-cobnt"><img src="<?php if($Row_Rental->product_image !=''){echo PRODUCTPATH.$Row_Rental->product_image;}else {echo PRODUCTPATH.'dummyProductImage.jpg';}  ?>"></div><div class="posi-abs"><a class="heart" href="rental/<?php echo $Row_Rental->id; ?>"></a><label class="pric-tag"><span class="rm-rate"><?php echo $currencySymbol; ?></span><?php echo $Row_Rental->price * $this->session->userdata('currency_r'); ?></label><a class="aurtors" href="<?php echo $useId; ?>"><img style="border-radius: 50%;height: 70px;width: 100px;" src="<?php echo $useImg; ?>"></a></div></div><div class="img-bottom"><span class="headlined"><a  href="rental/<?php echo $Row_Rental->id; ?>"><?php echo addslashes($Row_Rental->product_title); ?></a></span><p class="describ"><?php echo ucfirst($Row_Rental->room_type); ?>- <?php echo ucfirst($Row_Rental->city_name); ?></p></div></li></div>';
    
    var details='<li data-price="<?php echo $Row_Rental->price * $this->session->userdata('currency_r'); ?>"><div class="img-top">';
	<?php if($loginCheck==''){?>
	var details1='<a class="ajax cboxElement heart reg-popup1" href="site/rentals/AddWishListForm/<?php echo $Row_Rental->id;?>"></a>';
	<?php }else{ ?>
	var details1='<a class="ajax cboxElement heart" href="site/rentals/AddWishListForm/<?php echo $Row_Rental->id;?>"></a>';
	<?php } ?>
	
	var details2='<div class="figures-cobnt"><a href="rental/<?php echo $Row_Rental->id;?>"><img src="<?php if($Row_Rental->product_image !=''){echo PRODUCTPATH.$Row_Rental->product_image;}else {echo PRODUCTPATH.'dummyProductImage.jpg';} ?>"></a></div><div class="posi-abs"><label class="pric-tag"><span class="curSymbol"><?php echo $currencySymbol; ?></span><?php echo $Row_Rental->price * $this->session->userdata('currency_r'); ?></label><a class="aurtors" href="<?php echo $useId; ?>"><img style="border-radius: 50%;height: 70px;width: 100px;" src="<?php echo $useImg; ?>"></a></div></div><div class="img-bottom"><span class="headlined"><a  href="rental/<?php echo $Row_Rental->id; ?>"><?php echo addslashes($Row_Rental->product_title); ?></a></span><p class="describ"><?php echo ucfirst($Row_Rental->home_type); ?>- <?php echo ucfirst($Row_Rental->city_name); ?></p></div></li>';
    
      var label ='<?php echo trim(addslashes($Row_Rental->product_title));?>';
          // create the marker
          var marker = createMarker(point,label,html,"blue",details+details1+details2,'<?php echo $Row_Rental->id; ?>');
      <?php $hoverlist=$hoverlist+1;}
    } ?>
        
        // put the assembled side_bar_html contents into the side_bar div
        side_bar_html='<div class="map-areas"><ul class="similar-listing">'+side_bar_html;
        side_bar_html=side_bar_html+'</ul></div>';
        document.getElementById("side_bar").innerHTML = side_bar_html;
    
    }else{
    $("#side_bar").html("No rentals found..");
    }
} 
var infowindow = new google.maps.InfoWindow(
  { 
    size: new google.maps.Size(150,150)
  });
    

    // This Javascript is based on code provided by the
    // Community Church Javascript Team
    // http://www.bisphamchurch.org.uk/   
    // http://econym.org.uk/gmap/
    // from the v2 tutorial page at:
    // http://econym.org.uk/gmap/basic3.htm 
//]]>
</script>



<!-- slidebox styling via external css -->
<link rel="stylesheet" href="css/site/<?php echo SITE_COMMON_DEFINE ?>jquery.mSimpleSlidebox.css">
<script src="js/site/<?php echo SITE_COMMON_DEFINE ?>jquery.mSimpleSlidebox.js"></script>
<!-- slidebox function call -->
<script type="text/javascript">
$(document).ready(function(){
  $(".mSlidebox").mSlidebox({
    autoPlayTime:4000,
    controlsPosition:{
      buttonsPosition:"outside"
    }
  });
  $("#mSlidebox_3").mSlidebox({
    easeType:"easeInOutCirc",
    numberedThumbnails:true,
    pauseOnHover:false
  });
});
</script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
  
  <!--<link rel="stylesheet" href="/resources/demos/style.css">-->
  <script type="text/javascript">
  $(function() {
   
   $( "#datepicker" ).datepicker({ minDate: 0});
   
  $( "#datepicker1" ).datepicker({ minDate: 0});
  
  });
  </script>
  
  
  
<div class="map-search">
<div>
  <div class="sidebar">
    <div class="filters filters-collapse">
        <ul class="filter-list unstyled">
 <form class="form-horizontal trip-form" action="property?city=<?php echo $_GET['city']; ?>" method="POST" >

    <li data-tooltip-position="left" rel="tooltip" class="intro-filter clearfix" title="Trip">

      <h6 class="span2 filter-label">Dates</h6>


          <div class="control-group">
            <input type="text" placeholder="<?php if($this->lang->line('check_in') != '') { echo stripslashes($this->lang->line('check_in')); } else echo "Check in";?>" value="<?php echo $_GET['datefrom']; ?>" id="datepicker" name="checkin">
			
             <input type="hidden" name="pricemin" value="<?php echo $_GET['minPrice']; ?>" id="minPrice" /><input name="pricemax" type="hidden" value="<?php echo $_GET['maxPrice']; ?>" id="maxPrice" />

            <input type="text" placeholder="<?php if($this->lang->line('check_out') != '') { echo stripslashes($this->lang->line('check_out')); } else echo "Check out";?>"  id="datepicker1" value="<?php echo $_GET['dateto']; ?>" name="checkout">
			
<select data-prefill="" class="guest-select input-medium" name="guests">
<option value = "0">Select</option>
<?php foreach($accommodates as $accommodate) {
if($accommodate==1){
?>
<option value="<?php echo $accommodate;?>" <?php if($_POST['guests']==$accommodate){?>selected="selected"<?php }?>><?php echo $accommodate.' Guest'?></option>
<?php } else {?>
<option value="<?php echo $accommodate;?>" <?php if($_POST['guests']==$accommodate){?>selected="selected"<?php }?>>
<?php echo $accommodate.' Guests';?></option>
<?php }?>
<?php }?>
						 
						 


            </select>
          </div>
       

    </li>
	<?php //print_r($_POST['property_type']); ?>
    <?php $propertyTypes = $this->product_model->get_all_details(LISTSPACE_VALUES,array('listspace_id'=>9), array(array('field'=>'other', 'type'=>'asc'))); 
	//echo '<pre>';print_r($propertyTypes->result_array());
	?>
	<li title="" data-tooltip-position="left" rel="tooltip" class="clearfix showlist5" style="display:block;">
				<h6 class="span2 filter-label  left-widt">Property Type</h6>
				<div class="right-arel onclk-hide">
				<?php
				$i=0;
				foreach($propertyTypes->result() as $tmp)
				{
				if($i < 3 ){?>
					<label>
						<input type="checkbox" name="property_type[]"  value="<?php echo $tmp->list_value;?>" <?php foreach($_POST['property_type'] as $property_type) { if($property_type ==$tmp->list_value){ ?> checked="checked" <?php } } ?>/>
						<span><?php echo $tmp->list_value;?></span>
					</label>
				<?php if($i == 2){?></div><?php }?>
				<?php } else {?>
				<?php if($i == 3){?><div class="drop4btn"><i class="caret"></i></div>
				<div class="right-arel"><?php }?>
					<label>
						<input type="checkbox" name="property_type[]"  value="<?php echo $tmp->list_value;?>" <?php foreach($_POST['property_type'] as $property_type) { if($property_type ==$tmp->list_value){ ?> checked="checked" <?php } } ?>/>
						<span><?php echo $tmp->list_value;?></span>
					</label>
			<?php } $i++;} ?>
			</div>
	</li>
			
			
	
    <?php //print_r($_POST['room_type']); ?>
    <li data-tooltip-position="left" rel="tooltip" class="clearfix room-type-group intro-filter" title="Room Type">
    
      <h6 class="span2 filter-label linedpads2"><?php if($this->lang->line('room_type') != '') { echo stripslashes($this->lang->line('room_type')); } else echo "Room Types";?></h6>
      <div for="home" data-name="Entire home/apt" class="filter-primary-item span2">
      <input type="checkbox"  name="room_type[]" value="Entire home/apt" <?php foreach($_POST['room_type'] as $room){ if($room =='Entire home/apt') echo 'checked="checked"'; }?> />
        <i class="icon icon-entire-place"></i>
        <h5><?php if($this->lang->line('entire_place') != '') { echo stripslashes($this->lang->line('entire_place')); } else echo "Entire Place";?></h5>
      </div>

      <div for="private" data-name="Private room" class="filter-primary-item span2">
      <input type="checkbox"  name="room_type[]" value="private room" <?php foreach($_POST['room_type'] as $room){ if($room =='private room') echo 'checked="checked"';} ?> />
        <i class="icon-private-room"></i>
        <h5><?php if($this->lang->line('private_room') != '') { echo stripslashes($this->lang->line('private_room')); } else echo "Private Room";?></h5>
      </div>

      <div for="shared" data-name="Shared room" class="filter-primary-item span2">
      <input type="checkbox"  name="room_type[]" value="Shared room" <?php foreach($_POST['room_type'] as $room){ if($room == 'Shared room') echo 'checked="checked"';} ?>/>
        <i class="icon-shared-room"></i>
        <h5><?php if($this->lang->line('shared_room') != '') { echo stripslashes($this->lang->line('shared_room')); } else echo "Shared Room";?></h5>
      </div>
      <a href="javascript:void(0);" style="background-position: -120px -120px;width:20px;height:20px;background-image: url('./img/glyphicons-halflings.png');" class="icon icon-question-sign" title="
Entire Place
Listings where you have the whole place to yourself.
		
Private Room
Listings where you have your own room but share some common spaces.

Shared Room
Listings where you'll share your room or your room may be a common space."></a>

      
    </li>

    <li data-tooltip-position="left" rel="tooltip" class="clearfix intro-filter pricefil" title="Price">
      <h6 class="span2 filter-label linedpad3"><!--<?php if($this->lang->line('giftcard_price') != '') { echo stripslashes($this->lang->line('giftcard_price')); } else echo "Price";?>-->Price Range</h6>
    <!--<div class="price_slider">
              <div class="price_text"><input type="text" id="price" value="100"  class="rating_input" /></div>
              <div class="rating_slider">
               
                  <div id="slider-price"></div>
                
              </div>
        </div>-->
    <div class="price_slider">
      <div id="slider-range"></div></div>
      <input type="text" value="<?php echo $currencySymbol.$SMinPrice;?> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <?php echo $currencySymbol.$SMaxPrice;?>" style="color: rgb(94, 85, 90); font-weight: normal; font-family: OpenSansSemibold; border: medium none; box-shadow: none; margin: -26px 0px 0px 0px;position: relative;top: 20px;width: 70%;" id="amount_pricefilter">
     
    </li>
  
	<div class="filter-reald">
		<a href="javascript:showView1('5');" class="filter-btn" style="margin:10px 0 0 20px;">More Filters</a>
    </div>
	<!---Size Values Starts
		<li title="Size" data-tooltip-position="left" rel="tooltip" class="clearfix showlist5">
			<h6 class="span2 filter-label linedpads4"><?php if($this->lang->line('size') != '') { echo stripslashes($this->lang->line('size')); } else echo "Size";?></h6>
			<div class="control-group span6">
					<div class="row">

					<select name="min_bedrooms" class="span2">
						<option value="" <?php if($_POST['min_bedrooms']==''){echo 'selected="selected"';} ?>>
							<?php if($this->lang->line('bedrooms') != '') { echo stripslashes($this->lang->line('bedrooms')); } else echo "Bedrooms";?>
						</option>
						<?php 
						if($bedrooms!=""){ 
							$bedroomsArr=@explode(',',$bedrooms);
							foreach($bedroomsArr as $row){
						?>
							<option value="<?php echo $row; ?>" <?php if($_POST['min_bedrooms']==$row){echo 'selected="selected"';} ?>>
								<?php echo $row; ?> <?php if($this->lang->line('bedrooms') != '') { echo stripslashes($this->lang->line('bedrooms')); } else echo "Bedrooms";?>
							</option>
						<?php 
							}
						} 
						?>
					</select>

					<select name="min_bathrooms"  class="span2">
						<option value="" <?php if($_POST['min_bathrooms']==''){echo 'selected="selected"';} ?>>
							<?php if($this->lang->line('bathrooms') != '') { echo stripslashes($this->lang->line('bathrooms')); } else echo "Bathrooms";?>
						</option>
						<?php 
						if($bathrooms!=""){ 
							$bathroomsArr=@explode(',',$bathrooms);
							foreach($bathroomsArr as $row){
						?>
							<option value="<?php echo $row; ?>" <?php if($_POST['min_bathrooms']==$row){echo 'selected="selected"';} ?>>
								<?php echo $row; ?>
							</option>
						<?php 
							}
						} 
						?>
					</select>

					<select name="min_beds" class="span2">
						<option value="" <?php if($_POST['min_beds']==''){echo 'selected="selected"';} ?>>
							<?php if($this->lang->line('beds') != '') { echo stripslashes($this->lang->line('beds')); } else echo "Beds";?>
						</option>
						<?php 
						if($beds!=""){ 
							$bedsArr=@explode(',',$beds);
							foreach($bedsArr as $row){
						?>
							<option value="<?php echo $row; ?>" <?php if($_POST['min_beds']==$row){echo 'selected="selected"';} ?>>
								<?php echo $row; ?> <?php if($this->lang->line('beds') != '') { echo stripslashes($this->lang->line('beds')); } else echo "Beds";?>
							</option>
						<?php 
							}
						} 
						?>
				  </select>
				  
				  <select name="min_bedtype"  class="span2">
						<option value="" <?php if($_POST['min_bedtype']==''){echo 'selected="selected"';} ?>>
							<?php if($this->lang->line('bedtype') != '') { echo stripslashes($this->lang->line('bedtype')); } else echo "Bed Type";?>
						</option>
						<?php 
						if($bedtype!=""){ 
							$bedtypeArr=@explode(',',$bedtype);
							foreach($bedtypeArr as $row){
						?>
							<option value="<?php echo $row; ?>" <?php if($_POST['min_bedtype']==$row){echo 'selected="selected"';} ?>>
								<?php echo $row; ?>
							</option>
						<?php 
							}
						} 
						?>
				  </select>
				  
				  <select name="min_noofbathrooms"  class="span2">
						<option value="" <?php if($_POST['min_noofbathrooms']==''){echo 'selected="selected"';} ?>>
							<?php if($this->lang->line('noofbathrooms') != '') { echo stripslashes($this->lang->line('noofbathrooms')); } else echo "Number of Bathroom";?>
						</option>
						<?php 
						if($noofbathrooms!=""){ 
							$noofbathroomsArr=@explode(',',$noofbathrooms);
							foreach($noofbathroomsArr as $row){
						?>
							<option value="<?php echo $row; ?>" <?php if($_POST['min_noofbathrooms']==$row){echo 'selected="selected"';} ?>>
								<?php echo $row; ?>
							</option>
						<?php 
							}
						} 
						?>
				  </select>
				  
				  <select name="min_min_stay"  class="span2">
						<option value="" <?php if($_POST['min_min_stay']==''){echo 'selected="selected"';} ?>>
							<?php if($this->lang->line('min_stay') != '') { echo stripslashes($this->lang->line('min_stay')); } else echo "Minimum Stay";?>
						</option>
						<?php 
						if($min_stay!=""){ 
							$min_stayArr=@explode(',',$min_stay);
							foreach($min_stayArr as $row){
						?>
							<option value="<?php echo $row; ?>" <?php if($_POST['min_min_stay']==$row){echo 'selected="selected"';} ?>>
								<?php echo $row; ?>
							</option>
						<?php 
							}
						} 
						?>
				  </select>

				</div>
			</div>
		</li>
	<!---Size Values Ends
	<!---List Values Starts-->
		<?php
		$list_value_loop=1;
		foreach($main_cat as $category) {
			$sec_categ_loop_count=count($sec_category[$category->id]);
			if($sec_categ_loop_count!=0 && $category->id != 12){
		?>
			<li title="<?php echo $category->attribute_name;?>" data-tooltip-position="left" rel="tooltip" class="clearfix showlist5">
				<h6 class="span2 filter-label  left-widt"><?php echo $category->attribute_name;?></h6>
				<?php
				for($i=0;$i<3;$i++){
					if($i==0){
					echo '<div class="right-arel onclk-hide">';
					}
				?>
				<label>
					<input type="checkbox" name="listvalue[]"  value="<?php echo $sec_category[$category->id][$i]['id'];?>" <?php foreach($_POST['listvalue'] as $listid) { if($listid ==$sec_category[$category->id][$i]['id']){ ?> checked="checked" <?php } } ?> />
					<span> <?php echo $sec_category[$category->id][$i]['list_value'];?></span>
				</label>
				<?php 
					$list_value_loop++;
					if($i==2){
						echo '</div><div class="drop4btn"><i class="caret"></i></div>';
					}
				}
				for($j=3;$j<$sec_categ_loop_count;$j++){
					if($j==3){
						echo '<div class="right-arel">';
					}
				?>
				<label>
				<?php //print_r($_POST['listvalue']); die; ?>
					<input type="checkbox" name="listvalue[]"  value="<?php echo $sec_category[$category->id][$j]['id'];?>" <?php foreach($_POST['listvalue'] as $listid) { if($listid ==$sec_category[$category->id][$j]['id']){ echo 'checked="checked"'; } } ?> />
					<span> <?php echo $sec_category[$category->id][$j]['list_value'];?></span>
				</label>
				<?php
					$list_value_loop++;
					if($j==$sec_categ_loop_count){
						echo '</div>';
					}
				}
				?>
			</li>
		<?php 
			}
		}
		?> 

      <div class="showlisting">
        <a class="show-btn23"><input style="width: 100%; background: none repeat scroll 0 0 rgba(0, 0, 0, 0); border: medium none; box-shadow: none; color: #fff; font-family: opensanssemibold; font-size: 17px; padding: 0;" type="submit" value="Show Listing" /></a>
      </div>
     </form>

  </ul>

     
    </div>
     

      
   <div class="sidebar-header-placeholder"></div>
    <?php echo $newpaginationLink; ?>
    <div class="search-results">
<div class="listings-loading clearfix">
      <div id="side_bar">
      </div>
 </div>
      
    </div>
  </div>

  <div class="map" >
   <div id="map_canvas" style="width: 100%; height: 100%;"></div>
  </div>
  

</div>

<input type="hidden" id="GetCity" value="<?php echo str_replace(' ','+',$_GET['city']); ?>"  />

<style>
.filter-primary-item input[type="checkbox"] {
    display: none;
}

input[type="checkbox"]:checked + i {
    border: 1px solid red;
}
</style>
<script type="text/javascript">
jQuery.fn.extend({
 propAttr: $.fn.prop || $.fn.attr
});
$(function() { 
$( "#datepicker" ).datepicker({
defaultDate: "+1w",
changeMonth: true,
numberOfMonths: 1,
minDate:0,
onClose: function( selectedDate ) {
  if($( "#datepicker1" ).val()==''){
    $( "#datepicker1" ).datepicker( "option", "maxDate", selectedDate ).focus();
  }else{
    $( "#datepicker1" ).datepicker( "option", "maxDate", selectedDate );
  }
}
});
$( "#datepicker1" ).datepicker({
defaultDate: "+1w",
changeMonth: true,
numberOfMonths: 1,
minDate:0,
onClose: function( selectedDate ) {

if($( "#datepicker" ).val()==''){
$( "#datepicker" ).datepicker( "option", "maxDate", selectedDate ).focus();
}else{
$( "#datepicker" ).datepicker( "option", "maxDate", selectedDate );
}
}
});

});

$(".filter-primary-item i").click(function(){
     $(this).prev().attr('checked',true);
   
});

$(function()
{
$('.drop4btn').click(function()
{
$(this).next().slideToggle();
});

$('.drop4btn').each(function()
{
$(this).next().css('display','none');
});

});





<?php 
if(isset($PriceMaxMin)){
?>
$(function() {
    var options = {
        range: true,
        min: 0,
        max: '<?php echo $PriceMaxMin->row()->MaxPrice*$this->session->userdata('currency_r');?>',
        values: [0, '<?php echo $PriceMaxMin->row()->MaxPrice*$this->session->userdata('currency_r');?>'],
        slide: function(event, ui) {
            var min = ui.values[0],
                max = ui.values[1];

            $("#amount_pricefilter").val("<?php echo $this->session->userdata('currency_s');?>" + min + "                                                                                                                             <?php echo $this->session->userdata('currency_s');?>" + max);
            showProducts(min, max);
        }
    }, min, max;

    $("#slider-range").slider(options);

    min = $("#slider-range").slider("values", 0);
    max = $("#slider-range").slider("values", 1);

    $("#amount").val("<?php echo $this->session->userdata('currency_s');?>" + min + " - <?php echo $this->session->userdata('currency_s');?>" + max);

    showProducts(min, max);
	
	$('#autocomplete').val('<?php echo $_GET['city'];?>');
  
});
<?php }?>
</script>
<script>
//gangatahran

function showProducts(minPrice, maxPrice) {
    $(".similar-listing li").hide().filter(function() {
        var price = parseInt($(this).data("price"), 10);
        return price >= minPrice && price <= maxPrice;
    }).show();
}
</script>
<style>
.drop4btn{
    float: left;
    position: absolute;
    right: 30px;
    top: 30px;
  cursor:pointer;
}
.form-horizontal.trip-form .showlist5{position:relative}
</style>

<?php 
//$this->load->view('site/templates/footer');
?>