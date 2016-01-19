<?php
$this->load->view('site/templates/header');
?>

<link rel="stylesheet" href="css/site/datepicker.css" type="text/css">
<!-- <link rel="stylesheet" href="css/site/bx-slider/jquery.bxslider.css" type="text/css"> -->
<link rel="stylesheet" href="css/site/owl-slider/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="css/site/owl-slider/owl.theme.css" type="text/css">
<!-- Warming Up -->
<link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>
<script src="http://pupunzi.com/mb.components/mb.YTPlayer/demo/inc/jquery.mb.YTPlayer.js"></script>
<!-- <script src="js/site/bx-slider/jquery.bxslider.js"></script> -->
<script src="js/site/owl-slider/owl.carousel.js"></script>

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
<?php $font_style = $admin_settings->row()->font_style;
if(!empty($font_style) && $font_style != ''): ?>
	<style type="text/css">
		body, .text-center h1, .text-center h3, .stat-text, .devlop-link, .footer-list span{
	    font-family : <?php echo $admin_settings->row()->font_style; ?>;
		}
	</style>
<?php endif; ?>
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
							<div class="row">

								<div class="col-md-12 col-sm-12 register-btn text-center">
									<a href="<?php echo base_url('site/register/pet_sitter_registration')?>" class="btn hvr-curl-top-right">Love looking after animals?<i>Register as a pet sitter</i></a>
									<a href="<?php echo base_url('site/register/pet_owner_registration')?>" class="btn hvr-curl-top-right">I need a pet sitter<i>Register your pet</i></a>
									<a href="javascript:void(0)" class="btn hvr-curl-top-right login-popup">Already registered?<i>Login</i></a>
								</div>

							</div>
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
				<dvi class="advert-crousel" id="advert-crousel">
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
							<div>
								<a href="<?php echo $advertLink; ?>" target="_blank">
									<img class="hvr-shrink" src="images/advert/thumb/<?php echo $ImgAdvert;?>" alt="<?php echo $advert->advert_title; ?>">
								</a>
							</div>
					<?php }	?>
				<?php endif;	?>
			  </div>
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
	$("#advert-crousel").owlCarousel({
		  autoPlay: 3000, //Set AutoPlay to 3 seconds
      items : 3,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3],
      itemsTablet: [480,1],
      navigation : true,
      autoHeight : true,
      pagination : false,
      stopOnHover : true,
      scrollPerPage : 1,
      rewindNav : true
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
}
</style>
<?php
 $this->load->view('site/templates/content_above_footer');

 $this->load->view('site/templates/footer');
?>