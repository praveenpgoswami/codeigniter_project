<?php
$this->load->view('site/templates/header');
?>

<div class="lang-en wider no-subnav thing signed-out winOS" style="min-height:350px;">
 <div id="container-wrapper">
	<div class="container ">
		<section>
	<div class="main3">
		<div class="middle_section" id="content_text">
		<!-- / wrapper-content -->
<!--<h1><?php echo $pageDetails->row()->page_name; ?></h1>-->
				<?php 
            	if ($pageDetails->num_rows()>0){
            	if($this->uri->segment(2)=='about-us' ||$this->uri->segment(2)=='business-travel' || $this->uri->segment(2)=='learn-more-about-hosting' || $this->uri->segment(2)=='live-like-locals' || $this->uri->segment(2)=='cancellation-policy' || $this->uri->segment(2)=='verify_id' || $this->uri->segment(2)=='howitwork' || $this->uri->segment(2)=='learn-more'){ ?>		
<?php  echo preg_replace('/\s+/', ' ', trim(stripslashes($pageDetails->row()->description)));?>
				<?php }else
				{  ?>
				<?php  echo preg_replace('/\s+/', ' ', trim(addslashes($pageDetails->row()->description)));?>
				<?php
				}
            	}
            	?>
		


	    	</div>	
    </div>
</section>
	</div>
	<!-- / container -->
</div>

</div> 

<?php
$this->load->view('site/templates/footer');
?>


