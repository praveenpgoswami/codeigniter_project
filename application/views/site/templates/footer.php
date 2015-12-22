<!---FOOTER-->
<footer>
<div class="footer-bg">
<div class="container">
<div class="col-md-4 inputfoot">
 <div class="country-lop">
<input class="country" id="selected_country" placeholder="English" type="text" style="text-transform:capitalize;">
<ul class="dropdn">
             <?php 
                 $selectedLangCode = $this->session->userdata('language_code');
                if ($selectedLangCode == ''){
                	$selectedLangCode = $defaultLg[0]['lang_code'];
                }
                if (count($activeLgs)>0){
                	foreach ($activeLgs as $activeLgsRow){
                ?>							
                    <li><a href="lang/<?php echo $activeLgsRow['lang_code'];?>" <?php if ($selectedLangCode == $activeLgsRow['lang_code']){echo 'class="active"';}?>><?php echo $activeLgsRow['name'];?></a></li>
                <?php } } ?>

</ul>

</div>

<div class="country-lop">
<input class="side" id="selected_side" placeholder="USD" type="text">
<ul class="dropdn">



                 <?php 
				 
				     
				   
					if($currency_setup->num_rows() >0){ 
						foreach($currency_setup->result() as $currency_s){
						if($currency_s->currency_type==$this->session->userdata('currency_type')){
						$SelecTed='class="active"';
						}else{
						$SelecTed='';
						}
						?>
                      <li <?php echo $SelecTed; ?>><a href="change-currency/<?php echo $currency_s->id; ?>"><?php echo $currency_s->currency_type; ?></a></li>
                   <?php }
				   }?> 
</ul>
<!-- $this->session->userdata('currency_type') -->
</div>
</div>


<div class="col-md-3">
<ul class="footer-list">

<li><span><?php if($this->lang->line('discover') != '') { echo stripslashes($this->lang->line('discover')); } else echo "Discover";?></span></li>
<?php 
if ($cmsList->num_rows() > 0){
foreach ($cmsList->result() as $row){
if($row->section == 'discover' && $row->hidden_page =='No' && $row->category == 'Main') { ?> 
<li><a href="pages/<?php echo $row->seourl; ?>"><?php echo $row->page_name;?></a></li> <?php } } } ?>
</ul>

</div>


<div class="col-md-3">
<ul class="footer-list">
<li><span>Company</span></li>
<?php 
if ($cmsList->num_rows() > 0){
foreach ($cmsList->result() as $row){
if($row->section == 'company' && $row->hidden_page =='No' && $row->category == 'Main') { ?> 
<li><a href="pages/<?php echo $row->seourl; ?>"><?php echo $row->page_name;?></a></li> <?php } } } ?>
<li><a href="contact-us">Contact us</a> </li>
</ul>

</div>


<div class="col-md-2">
<ul class="footer-list">
	<li><span>Follow us on</span></li>
<li><a target="_blank" href="<?php echo $this->config->item('facebook_link');?>" alt="<?php if($this->lang->line('signup_facebook') != '') { echo stripslashes($this->lang->line('signup_facebook')); } else echo "Facebook";?>">Facebook</a></li>
<li><a target="_blank" href="<?php echo $this->config->item('twitter_link');?>" alt="<?php if($this->lang->line('signup_twitter') != '') { echo stripslashes($this->lang->line('signup_twitter')); } else echo "Twitter";?>">Twitter</a></li>
<li><a target="_blank" href="<?php echo $this->config->item('googleplus_link');?>" alt="<?php if($this->lang->line('signup_google') != '') { echo stripslashes($this->lang->line('signup_google')); } else echo "Google+";?>">Google +</a></li>
<li><a target="_blank" href="<?php echo $this->config->item('youtube_link');?>" alt="<?php if($this->lang->line('signup_youtube') != '') { echo stripslashes($this->lang->line('signup_youtube')); } else echo "Youtube";?>">Youtube</a></li>
<li><a target="_blank" href="<?php echo $this->config->item('pinterest');?>" alt="<?php if($this->lang->line('pinterest') != '') { echo stripslashes($this->lang->line('pinterest')); } else echo "Pinterest";?>">Pinterest</a></li>

</ul>

</div>

<div class="copy-txt col-md-12"><p><?php echo $this->config->item('footer_content');?></p></div>

</div>

<div>

</footer>
<!---FOOTER-->
<script type="text/javascript">
$('.country-lop').click(function()
{
if($(this).find('.dropdn').css('display')=='none')
{
$(this).find('.dropdn').css('display','block');
$(this).next().find('.dropdn').css('display','none');
$(this).prev().find('.dropdn').css('display','none');
}
else{
$('.dropdn').css('display','none');
}

});

$(function()
{
$('.dropdn').each(function()
{
var selected_language=$(this).find('.active').text();
if(selected_language !='')
{
$(this).prev('input').val(selected_language);
}
})
});

//jQuery.noConflict();
$(function()
{
$(window).scroll(function(){
if($(window).scrollTop()==0)
{
$('.header').css('padding','27px 0 20px');
}
else
{
$('.header').css('padding','7px 0 0px');
}
})
});

</script>



















	 
	 














<?php if($this->config->item('google_verification_code')){ echo stripslashes($this->config->item('google_verification_code')); } ?>
</body>
</html>