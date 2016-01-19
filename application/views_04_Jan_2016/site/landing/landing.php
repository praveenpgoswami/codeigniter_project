<?php
$this->load->view('site/templates/header');
?>

<link rel="stylesheet" href="css/site/datepicker.css" type="text/css">
<link rel="stylesheet" href="css/site/bx-slider/jquery.bxslider.css" type="text/css">
<!-- Warming Up -->
<link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>
<script src="http://pupunzi.com/mb.components/mb.YTPlayer/demo/inc/jquery.mb.YTPlayer.js"></script>
<script src="js/site/bx-slider/jquery.bxslider.js"></script>

<!--Video Section-->

<!--Video Section Ends Here-->

<script type="text/javascript">
$(document).ready(function () {

    $(".player").mb_YTPlayer();

});
</script>

<script typ="text/javascript">

$.getScript("<?php echo base_url();?>js/site/bootstrap-datepicker.js", function(){

var startDate = '<?php echo date('m/d/Y');?>';

var FromEndDate = new Date();

var ToEndDate = new Date();

ToEndDate.setDate(ToEndDate.getDate()+365);

$('.from_date').datepicker({
    weekStart: 1,

    startDate: '<?php echo date('m/d/Y');?>',

    //endDate: FromEndDate,

    autoclose: true

})
    .on('changeDate', function(selected){

        startDate = new Date(selected.date.valueOf());

        startDate.setDate(startDate.getDate(new Date(selected.date.valueOf())));

        $('.to_date').datepicker('setStartDate', startDate);

    });
$('.to_date')
    .datepicker({

        weekStart: 1,

        startDate: startDate,

        endDate: ToEndDate,

        autoclose: true

    })
    .on('changeDate', function(selected){

        FromEndDate = new Date(selected.date.valueOf());

        FromEndDate.setDate(FromEndDate.getDate(new Date(selected.date.valueOf())));

        $('.from_date').datepicker('setEndDate', FromEndDate);

    });
});

</script>
<section>
<div class="banner-container">
    <div class="row">
        <div class="col-md-12">
			<?php if($adminList->slider == "on") {?>
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				      <ul class="carousel-inner">
				      <?php
							$slider_loop=1;
							foreach ($SliderList->result() as $Slider){
										if($Slider->image !=''){
											$ImgSrc=$Slider->image;
										}else{
											$ImgSrc='dummyProductImage.jpg';
										}
								  ?>
								<li class="item <?php if($slider_loop==1){ $slider_loop=2;?>active<?php }?>">
										<img src="images/slider/thumb/<?php echo $ImgSrc;?>" alt="<?php echo $Slider->slider_title; ?>">
								</li>
							<?php }?>
							</ul>
							<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
								<span class="fa fa-chevron-left"></span></a><a class="right carousel-control"
								href="#carousel-example-generic" data-slide="next"><span class="fa fa-chevron-right">
								</span>
							</a>
            </div>
			<?php } else { ?>
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<ul class="carousel-inner">
						<?php
							if($SliderList->row()->image !=''){
								$ImgSrc=$SliderList->row()->image;
							}else{
								$ImgSrc='dummyProductImage.jpg';
							}
						?>
						<?php $imagepath ="images/slider/thumb/"; ?>
							<li class="item active" style="height: 600px;">
								<section class="content-section video-section" style="position: relative; height: 600px;">
								<div class="pattern-overlay">
								<?php {?>
								<a id="bgndVideo" class="player" data-property="{videoURL:'<?php echo $adminList->videoUrl;?>',containment:'.video-section', quality:'large', autoPlay:true, mute:true, opacity:1}"></a>
								<?php }?>
								</div>
								</section>
							</li>
						</ul>
						</div>
				<?php }?>
  	<div class="main-text hidden-xs">
      <div class="col-md-12 text-center">
				<div class="container">
					<h1><?php echo $this->config->item('home_title_1');?></h1>
					<h3><?php echo $this->config->item('home_title_2');?></h3>
				</div>

				<div class="searching-section">
				 <div class="container">
            <form method="get" action="property" id="property_search_form">

              <input name="city" id="autocompleteNew" class="where" placeholder="<?php if($this->lang->line('search_where') != '') { echo stripslashes($this->lang->line('search_where')); } else echo "Where do you want to go?"; ?>" onFocus="geolocate()" type="text" >

						<input  name="datefrom" class="chek from_date" placeholder="<?php if($this->lang->line('check_in') != '') { echo stripslashes($this->lang->line('check_in')); } else echo "Check in"; ?>" type="text" contenteditable="false">

            <input  name="dateto" class="chek-in to_date" placeholder="<?php if($this->lang->line('common_checkout') != '') { echo stripslashes($this->lang->line('common_checkout')); } else echo "Check out"; ?>" type="text" contenteditable="false">
						 <select name="guests" class="home_select">
							 <option value=""><?php if($this->lang->line('Guest') != '') { echo stripslashes($this->lang->line('Guest')); } else echo "Guest";?></option>
							 <?php foreach($accommodates as $accommodate) {
				              if($accommodate==1){?>
										 		<option value="<?php echo $accommodate;?>"><?php echo $accommodate.' Guest'?></option>
										 <?php } else {?>
										 		<option value="<?php echo $accommodate;?>">
										 <?php echo $accommodate.' Guests';?></option>
										 <?php }?>
							 	<?php }?>
						 </select>
                <input class="fom-subm" value="<?php if($this->lang->line('Submit') != '') { echo stripslashes($this->lang->line('Submit')); } else echo "Submit"; ?>" type="button" onclick="property_search_form()">
          	</form>
	          <span id="city_warn"></span>
	                		</div>
	                </div>
	            </div>
        		</div>
         </div>
    </div>
</div>
<div id="push">
</div>
</section>
<?php if($adminList->advert == "on") {?>
	<section class="section-advert-crousel">
	<div class="center-page">
		<div class="container">
			<div class="row">
			<div class="col-md-12">
				<!-- <div class="top-title-structure">	</div> -->
				<ul class="advert-crousel">
					<?php
						#$slider_loop=1;
					if($advertCrousel->result()):
						foreach ($advertCrousel->result() as $advert){
									if($advert->image !=''){
										$ImgAdvert = $advert->image;
											if (!preg_match("~^(?:f|ht)tps?://~i", $advert->advert_link)) {
									        $advertLink = "http://" . $advert->advert_link;
									    }else{
									    	$advertLink = $advert->advert_link;
									    }
									}else{
										$ImgAdvert = 'dummyProductImage.jpg';
										$advertLink = '#';
									}
									if($advert->advert_link !=''){
											if (!preg_match("~^(?:f|ht)tps?://~i", $advert->advert_link)) {
									        $advertLink = "http://" . $advert->advert_link;
									    }else{
									    	$advertLink = $advert->advert_link;
									    }
									}else{
										$advertLink = '#';
									}
							  ?>
							<li class="item-crousel">
								<a href="<?php echo $advertLink; ?>" target="_blank">
									<img class="hvr-shrink" src="images/advert/thumb/<?php echo $ImgAdvert;?>" alt="<?php echo $advert->advert_title; ?>">
								</a>
							</li>
					<?php }	?>
				<?php endif;	?>
			  </ul>
			</div>
		</div>
	</div>
	</div>
	</section>
<?php } ?>
<script type="text/javascript">
function property_search_form(){
	$('#city_warn').html('');
	var city=$('#city_landing').val();
		if(city==""){
			$('#city_warn').html('Please Enter City');
			$('#city_landing').focus();
		}else{
			$('#property_search_form').submit();
		}
}
$(document).ready(function($) {
	$('.advert-crousel').bxSlider({
	  minSlides: 3,
	  maxSlides: 4,
	  slideWidth: 170,
	  slideMargin: 10,
	  adaptiveHeight: true,
	  auto: true,
	  moveSlides: 1,
	  speed: 600,
	  pause : 2000,
	  autoHover: true
	});
});
</script>
<style>
.buttonBar{opacity:0};
.main-text {
    color: #fff;
    position: absolute;
    top: 60%;
    width: 99.667%;
}</style>
<?php
 $this->load->view('site/templates/content_above_footer');

 $this->load->view('site/templates/footer');
?>