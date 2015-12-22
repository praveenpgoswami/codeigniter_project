<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script> 
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
        
		google.maps.event.addListener(marker, "mouseover", function() {
          marker.setIcon(gicons["yellow"]);
        });
        google.maps.event.addListener(marker, "mouseout", function() {
          marker.setIcon(gicons["blue"]);
        });
    gmarkers.push(marker);
    
    var marker_num = gmarkers.length-1;
	
	side_bar_html += '<a href="rental/'+rid+'" onmouseover="gmarkers['+marker_num+'].setIcon(gicons.yellow)" onmouseout="gmarkers['+marker_num+'].setIcon(gicons.blue)">'+details+'</a>';
	
}
 
 
function myclick(i) {
  google.maps.event.trigger(gmarkers[i], "click");
}

function initialize() {
	
	var myOptions = {
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

    var totalResults= '<?php echo count($DistanceQryArr->result()); ?>';
    
    if(totalResults > 0) {
    
    $("#side_bar").html("<img id='validationEr1r' align='middle' style='margin-left:200px; margin-top:20px;' src='images/ajax-loader.gif' />");
    <?php 
    
    if(count($DistanceQryArr->result()) > 0){$hoverlist='1';
      
	  foreach($DistanceQryArr->result() as $Row_Rental){
        
        $useId=base_url().'users/show/'.$Row_Rental->userId;
        
		$useImg=base_url().'images/users/'.$Row_Rental->user_image;
        
      ?>
      
		var lat ='<?php echo $Row_Rental->latitude; ?>'; 
      
		var lng ='<?php echo $Row_Rental->longitude; ?>';
         
		var point = new google.maps.LatLng(lat,lng);
		  
		<?php $simg = 'dummyProductImage.jpg';
		if($Row_Rental->PImg!= '' && file_exists('./server/php/rental/'.$Row_Rental->PImg)){ $simg = $Row_Rental->PImg;
		}?>
		  
         
		var html = '<div class="infoBox similar-listing" ><li><div class="img-top"><div class="figures-cobnt"><img src="<?php echo PRODUCTPATH.$simg; ?>"></div><div class="posi-abs"><a class="heart" href="rental/<?php echo $Row_Rental->id; ?>"></a><label class="pric-tag"><span class="rm-rate"><?php echo $currencySymbol; ?></span><?php echo $Row_Rental->price * $this->session->userdata('currency_r'); ?></label><a class="aurtors" href="<?php echo $useId; ?>"><img style="border-radius: 50%;height: 70px;width: 100px;" src="<?php echo $useImg; ?>"></a></div></div><div class="img-bottom"><span class="headlined"><?php echo $Row_Rental->product_title; ?></span><p class="describ"><?php echo ucfirst($Row_Rental->room_type); ?>- <?php echo ucfirst($Row_Rental->city_name); ?></p></div></li></div>';
    
		var details='<li data-price="<?php echo $Row_Rental->price * $this->session->userdata('currency_r'); ?>"><div class="img-top"><div class="figures-cobnt"><img src="<?php echo PRODUCTPATH.$simg; ?>"></div><div class="posi-abs"><a class="ajax cboxElement heart" href="site/rentals/AddWishListForm/<?php echo $Row_Rental->id;?>"></a><label class="pric-tag"><span class="curSymbol"><?php echo $currencySymbol; ?></span><?php echo $Row_Rental->price * $this->session->userdata('currency_r'); ?></label><a class="aurtors" href="<?php echo base_url();?>users/show/<?php echo $Row_Rental->userId;?>"><img style="border-radius: 50%;height: 70px;width: 100px;" src="<?php echo $useImg; ?>"></a></div></div><div class="img-bottom"><span class="headlined"><a  href="rental/<?php echo $Row_Rental->id; ?>"><?php echo $Row_Rental->product_title; ?></a></span><p class="describ"><?php echo ucfirst($Row_Rental->home_type); ?>- <?php echo ucfirst($Row_Rental->city_name); ?></p></div></li>';
    
		var label ='<?php echo trim(substr($Row_Rental->product_title,0,6)); ?>';
        
		var marker = createMarker(point,label,html,"blue",details,'<?php echo $Row_Rental->id; ?>');
		
		<?php $hoverlist=$hoverlist+1;}
    } ?>
        
        side_bar_html='<div class="map-areas"><ul class="similar-listing">'+side_bar_html;
        side_bar_html=side_bar_html+'</ul></div>';
        document.getElementById("side_bar").innerHTML = side_bar_html;
    
    }
	else{
    $("#side_bar").html("No rentals found..");
    }
} 
var infowindow = new google.maps.InfoWindow(
  { 
    size: new google.maps.Size(50,150)
  });

</script>


<style>

</style>




<?php 
//echo "<pre>";print_r($DistanceQryArr->result());die;
if(count($DistanceQryArr->result()) > 0){
$limit_count=0;
            foreach($DistanceQryArr->result() as $DistArr){
			if($DistArr->product_title !='')
			{
			$limit_count++;
			
    ?>
    
            <li>
           <div class="img-top">
           <div class="figures-cobnt">
           <a href="<?php echo base_url();?>rental/<?php echo $DistArr->id;?>">
		   <?php
		   
		   $simg = 'dummyProductImage.jpg';
		   if($DistArr->PImg!= '' && file_exists('./server/php/rental/'.$DistArr->PImg)){
				$simg = $DistArr->PImg;
		   }
		   ?>
           <img src="<?php echo base_url().'server/php/rental/'.$simg;?>">
           </a>
           </div>
           <div class="posi-abs">
           <a class="ajax cboxElement heart" href="site/rentals/AddWishListForm/<?php echo $DistArr->id;?>"></a>
           <label class="pric-tag"><?php echo $currencySymbol.''.$DistArr->price * $this->session->userdata('currency_r'); ?></label>
           <a href="<?php echo base_url();?>users/show/<?php echo $DistArr->userId;?>" class="aurtors"><img width="27" height="27" src="images/users/<?php if($DistArr->user_image !=''){ echo $DistArr->user_image; }else{ echo 'user_thumb.png';} ?>"></a>
           </div>
           </div>
           <div class="img-bottom">
            <span class="headlined"><?php echo $DistArr->product_title;?></span>
            <p class="describ"><?php echo $DistArr->room_type;?>  <?php if($DistArr->city_name !=''){echo '-'.$DistArr->city_name;} ?></p>
            </div>
             </li>
    
    
    <?php }}} ?>
         



<li data-price="<?php echo $Row_Rental->price * $this->session->userdata('currency_r'); ?>"><div class="img-top"><div class="figures-cobnt"><img src="<?php echo PRODUCTPATH.$simg; ?>"></div><div class="posi-abs"><a class="ajax cboxElement heart" href="site/rentals/AddWishListForm/<?php echo $Row_Rental->id;?>"></a><label class="pric-tag"><span class="curSymbol"><?php echo $currencySymbol; ?></span><?php echo $Row_Rental->price * $this->session->userdata('currency_r'); ?></label><a class="aurtors" href="<?php echo base_url();?>users/show/<?php echo $Row_Rental->userId;?>"><img style="border-radius: 50%;height: 70px;width: 100px;" src="<?php echo $useImg; ?>"></a></div></div><div class="img-bottom"><span class="headlined"><a  href="rental/<?php echo $Row_Rental->id; ?>"><?php echo $Row_Rental->product_title; ?></a></span><p class="describ"><?php echo ucfirst($Row_Rental->home_type); ?>- <?php echo ucfirst($Row_Rental->city_name); ?></p></div></li>





