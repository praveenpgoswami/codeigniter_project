<?php
$this->load->view('site/templates/header');
$this->load->view('site/templates/listing_head_side');
?>
<script src="js/site/<?php echo SITE_COMMON_DEFINE ?>addProperty.js"></script>

<script>
function overview() {
	
	
	document.getElementById("overviewlist").submit();
	
	
}
</script>



            <div class="right_side overview">
            
            <div class="dashboard_price_main" style="border-bottom:none;">
            
            	<div class="dashboard_price">
            
                    <div class="dashboard_price_left">
                    
                    	<h3>Overview</h3>
                        
                        <p>A title and summary displayed on your public listing page. </p>
                    
                    </div>
                   <form id="overviewlist" name="overviewlist" action="site/product/saveOverviewList" method="post">
                    <div class="dashboard_price_right">
                    
                    	<div class="overview_title">
                        
                        	<label>Title</label>
                        
                        	<input type="text" value="<?php echo $listDetail->row()->product_title;?>" placeholder="Write a title" class="title_overview" 
                            onchange="javascript:ChangeOVerview(this,<?php echo $listDetail->row()->id; ?>);" name="product_title" style="color:#000 !important;" />
                            
                            <input type="hidden" id="id" name="id" value="<?php echo $listDetail->row()->id; ?>" />
                            
                            <!--<span>35 characters left</span>-->
                        
                        </div>
                        
                        
                        <div class="overview_title">
                        
                        	<label>Summary <small> Maximum 150 words</small></label>
                            
                            <textarea class="title_overview" placeholder="Write a summary in 150 words or less" rows="8" maxlength="150" onchange="javascript:ChangeOVerviewdesc(this,<?php echo $listDetail->row()->id; ?>);" name="description" id="description" style="color:#000 !important;"><?php echo strip_tags($listDetail->row()->description);?></textarea>
                        
                            <!--<span>250 characters left</span>-->
                        
                        </div>
						
						
						
						
						
						
						
						
                        
                    </div>
                </form>
                </div>
            
            </div>
			<?php if($listDetail->row()->space =="" || $listDetail->row()->guest_access =="" || $listDetail->row()->interact_guest =="" || $listDetail->row()->neighbor_overview =="" || $listDetail->row()->neighbor_around =="" || $listDetail->row()->house_rules ==""){?>
             <p class="price_text_links">Want to write even more? You can also <a href="detail_list/<?php echo $listDetail->row()->id;?>"> add a detailed description</a>to your listing</p>
			 <?php }?>
            </div>
            
            <div class="calender_comments">
            
            	<div class="calender_comment_content">
                
                	<i class="calender_comment_content_icon"><img src="images/calender_available_icon.jpg" /></i>
                    
                    <div class="calender_comment_text">
                    
                    	<h2>A great title</h2>
                    
                    	<p>A great title is unique and descriptive! It should highlight the main attractions of your space.</p>
                        
                        <p><strong>Example:</strong> Our cool and comfortable one bedroom apartment with exposed brick has a true city feeling! It comfortably fits two and is centrally located on a quiet street, just two blocks from Washington Park. Enjoy a gourmet kitchen, roof access, and easy access to all major subway lines! </p>
                        
                    
                    </div>
                    
                    
                
                </div>
            
            </div>
        	
        
        </div>
        
    </div>
    <script type="text/javascript" language="javascript">
		function limitKeyword(limitCount, limitNum) {
		var limitField = document.getElementById("product_name");
			if (limitField.value.length > limitNum) {
				limitField.value = limitField.value.substring(0, limitNum);
				} else {
				limitCount.value = limitNum - limitField.value.length;
			}
		}
</script>
    
<!---DASHBOARD-->
<?php
$this->load->view('site/templates/footer');
?>

