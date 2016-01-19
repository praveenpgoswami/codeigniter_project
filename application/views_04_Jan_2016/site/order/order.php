<?php 
$this->load->view('site/templates/header');
?>
<!--<style>
.thanks-main{
width:60%;
margin:0 auto;
}
.booking{
background:#717171;
width:100%;
text-align:center;
font-size:24px;
color:#fff;
padding:5px 0px;
}
.booking h1{
padding:5px 0px;
margin:0px;
font-size:50px;
}
.booking h5{
padding:0px;
padding-bottom:10px;
margin:0px;
}
.booking-success{
background: #E7E7E7;
float: left;
width: 96%;
margin: 16px;
}
.grid-con{
width:95%;
margin:0 auto;
}
.booking-success h2 {
margin-left: 2%;
}
.grid-step1{
width:100%;
float:left;
}
.grid-step1 p{
width: 45%;
float: left;
background: #a5a5a5;
color: #fff;
padding: 10px;
margin-right: 12px;
}
.grid-step1 p a{
text-decoration:none;
}
.grid-step1 p:last-child{
margin-right:0px;
margin-left: 20px;
}
.grid-step1 p a{
color:#fff;
}
.thanks-book{
border:1px solid #a5a5a5;
float: left;
width: 100%;
}
</style>-->
<style>
.cart-list.chept2{
float: left;
width: 100%;
margin: 20px 0px;
}
.thanks-main{
width:70%;
margin:0px auto;
}
.booking{
background:#717171;
width:100%;
text-align:center;
font-size:24px;
color:#fff;
padding:5px 0px;
}
.booking h1{
padding:5px 0px;
margin:0px;
font-size:35px;
font-weight: 100;
}
.booking h5{
padding:0px;
padding-bottom:10px;
margin:0px;
font-size: 13px;
font-weight: 100;
}
.booking-success{
background: #E7E7E7;
float: left;
width: 96%;
margin: 16px;
}
.grid-con{
width:95%;
margin:0 auto;
}
.booking-success h2 {
margin-left: 2%;
}
.grid-step1{
width:100%;
float:left;
margin: 10px 0px;
}
.grid-step1 p{
width: 45%;
float: left;
background: #a5a5a5;
color: #fff;
padding: 10px;
margin-right: 12px;
}
.grid-step1 p a{
text-decoration:none;
}
.grid-step1 p:last-child{
margin-right:0px;
margin-left: 20px;
}
.grid-step1 p a{
color:#fff;
}
.thanks-book{
border:1px solid #a5a5a5;
float: left;
width: 100%;
}
</style>




<link rel="stylesheet" type="text/css" media="all" href="css/site/cms.css">

<div class="lang-en wider no-subnav thing signed-out winOS" data-twttr-rendered="true" >
 <div id="container-wrapper">
	<div class="container ">
		
		<div class="wrapper-content right-sidebar">			
			<div class="content_text" /*style="width:890px;"*/>
<?php //echo '<pre>'; print_r($invoicedata->result_array()); die; ?>	
        		
<?php if($flash_data != '') { ?>
		<div class="errorContainer" id="<?php echo $flash_data_type;?>">
			<script>setTimeout("hideErrDiv('<?php echo $flash_data_type;?>')", 3000);</script>
			<p><span><?php echo $flash_data;?></span></p>
		</div>
		<?php } ?>
	
		
	  <div id="content" style="padding:0px 20px 20px 20px;">
	    
            <div class="cart-list chept2">
					<!--<h2><?php if($this->lang->line('cart_ord_confirm') != '') { echo stripslashes($this->lang->line('cart_ord_confirm')); } else echo "Order Confirmation"; ?></h2>-->
					
			<?php if($Confirmation =='Success'){ ?>                    
					<!-- <div class="cart-payment-wrap card-payment new-card-payment">
						<strong><?php if($this->lang->line('order_tran_sucss') != '') { echo stripslashes($this->lang->line('order_tran_sucss')); } else echo "Your Transaction Success"; ?></strong>
                        <div class="payment_success">
						<img src="images/site/success_payment.png" />
						</div>
					</div> -->
					
					
					<div class="thanks-main">
<div class="thanks-book">

<div class="booking">
<h1>Thanks for your Booking</h1>
<h5>We are glad that you choose our service, please review us after your journey.</h5>
</div>
<div class="booking-success">
<h2>Booking Success</h2>
<div class="grid-con">
<div class="grid-step1">
<p><a href="">Your Booking Reference Number is - </a></p>
<p><a href=""><?php echo $invoicedata->row()->Bookingno; ?></a></p>
</div>
<div class="grid-step1">
<p><a href="">Amount to be paid - </a></p>
<p><a href="">$<?php echo $invoicedata->row()->totalAmt; ?></a></p>
</div></div>
</div>
</div>
</div>
						<!--<div class="thanks-book">
						<div class="booking">
						<h1>Thanks for your Booking</h1>
						<h5>We are glad that you choose our service, please review us after your journey.</h5>
						</div>
						<div class="booking-success">
						<h2>Booking Success</h2>
						<div class="grid-con">
						<div class="grid-step1">
						<p><a href="">Your Booking Reference Number is-</a></p>
						<p><a href=""><?php echo $invoicedata->row()->Bookingno; ?></a></p>
						</div>
						<div class="grid-step1">
						<p><a href="">Amount to be paid - </a></p>
						<p><a href="">RM <?php echo $invoicedata->row()->totalAmt; ?></a></p>
						</div></div>
						</div>
						</div>-->
					
					
					
					
					
                    
            <?php
			 $this->output->set_header('refresh:5;url='.base_url().'trips/upcoming'); 
			 }elseif($Confirmation =='Failure'){ ?>        
            
            					<div class="cart-payment-wrap card-payment new-card-payment">
				<strong><?php if($this->lang->line('order_tran_failure') != '') { echo stripslashes($this->lang->line('order_tran_failure')); } else echo "Your Transaction Failure"; echo '<script>alert("Welcome");window.location="'.base_url().'";</script>';  ?></strong>
                <div class="payment_success"><b><?php echo urldecode($errors); ?></b></div>
                        <div class="payment_success"><img src="images/site/failure_payment.png" /></div>
					</div>

            
            <?php
			 $this->output->set_header('refresh:5;url='.base_url());
			 
			 } 
			 
			 if($this->uri->segment(3) == 'subscribe'){
			 	$this->output->set_header('refresh:5;url='.base_url().'fancyybox/manage'); 
			 }elseif($this->uri->segment(3) == 'gift'){
			 	$this->output->set_header('refresh:5;url='.base_url().'settings/giftcards'); 
			 }elseif($this->uri->segment(3) == 'cart'){
			 	$this->output->set_header('refresh:5;url='.base_url()); 
			 }
			  ?>
            



				</div>
	  </div>
</div>
		</div>
		<!-- / wrapper-content -->

		<a id="scroll-to-top" href="#header" style="display: none;"><span><?php if($this->lang->line('signup_jump_top') != '') { echo stripslashes($this->lang->line('signup_jump_top')); } else echo "Jump to top"; ?></span></a>

	</div>
	<!-- / container -->
</div>

</div>	 
<?php 
     $this->load->view('site/templates/footer');
     ?>
