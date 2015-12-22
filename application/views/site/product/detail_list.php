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



            <div class="right_side detail-map">
            
            <div class="dashboard_price_main" style="border-bottom:none;">
            
                <div class="dashboard_price">
            
                    <div class="dashboard_price_left">
                    
                        <h3>Details</h3>
                        
                        <p>A description of your space displayed on your public listing page. </p>
                    
                    </div>
                   <form id="overviewlist" name="overviewlist" action="site/product/saveDetaillist" method="post">
                    <div class="dashboard_price_right">
                    
                        <div class="overview_title">
                        
                            <label>The Space</label>
                         <textarea class="title_overview"  style="color:#000 !important;"  rows="8" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'space');" name="space" id="space" placeholder="What makes  your listing unique ?" onmouseover="document.getElementById('div1').style.display = 'block';" onmouseout="document.getElementById('div1').style.display = 'none';"><?php echo strip_tags($listDetail->row()->space);?></textarea>
                            
                            
                            <input type="hidden" id="id" name="id" value="<?php echo $listDetail->row()->id; ?>" />
                            
                        </div>
                    </div>
               
                </div>
            
            </div>
            
            
            
            <div class="dashboard_price_main" style="border-bottom:none;">
            
                <div class="dashboard_price">
            
                    <div class="dashboard_price_left">
                    
                        <h3>Extra Details</h3>
                        
                        <p>Other information you wish to share on your public listing page. </p>
                    
                    </div>
                   
                    <div class="dashboard_price_right">
                    
                        <div class="overview_title">
                        
                            <label>Other Things to Note</label>
                        <textarea class="title_overview" style="color:#000 !important;" placeholder="Are there any other details you’d like to share ?" rows="8" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'other_thingnote');" name="other_thingnote" id="other_thingnote" onmouseover="document.getElementById('div6').style.display = 'block';" onmouseout="document.getElementById('div6').style.display = 'none';"><?php echo strip_tags($listDetail->row()->other_thingnote);?></textarea>
                        
                        </div>
                        
                        
                      
                        
                         <div class="overview_title">
                            <label>House Rules</label>
                           <textarea class="title_overview" placeholder="How do you expect your guests to behave ?" rows="8" style="color:#000 !important;" onchange="javascript:Detailview(this,<?php echo $listDetail->row()->id; ?>,'house_rules');" name="house_rules" id="house_rules" onmouseover="document.getElementById('div7').style.display = 'block';" onmouseout="document.getElementById('div7').style.display = 'none';"><?php echo strip_tags($listDetail->row()->house_rules);?></textarea>
                        </div>
                        
                       
                        
                        
                       
                        
                        
                    </div>
                </form>
                </div>
            
            </div>
            
            
             
            </div>
            
            <div class="calender_comments">
            
                <div class="calender_comment_content" id="div1" style="display:none;margin-top:0;">
                
                    <i class="calender_comment_content_icon"><img src="images/calender_available_icon.jpg" /></i>
                    
                    <div class="calender_comment_text">
                    
                        <h2>About your space</h2>
                    
                        <p> <ul >
                        <li style="list-style-type:disc;">What makes your listing unique?</li>
                        <li style="list-style-type:disc;">How many people does your listing comfortably fit?</li>
                        
                      
                        </ul></p>
                        
                        
                    </div>
                    
                    
                
                </div>
                <div class="calender_comment_content" id="div2" style="display:none;margin-top:72%;">
                
                    <i class="calender_comment_content_icon"><img src="images/calender_available_icon.jpg" /></i>                    
                    <div class="calender_comment_text">                    
                        <h2>Guest access</h2>                    
                        <p> <ul >
                        <li style="list-style-type:disc;">What will guests have access to?</li>
                        <li style="list-style-type:disc;">Which amenities or areas will be shared?</li>
                        <li style="list-style-type:disc;">Is anything off limits?</li>
                      
                        </ul></p>
                    </div>
                </div>
            
            
              <div class="calender_comment_content" id="div3" style="display:none;margin-top:130%;">
                
                    <i class="calender_comment_content_icon"><img src="images/calender_available_icon.jpg" /></i>                    
                    <div class="calender_comment_text">                    
                        <h2>Interaction with guests</h2>                    
                        <p> <ul >
                        <li style="list-style-type:disc;">How much do you interact with your guests?</li>
                        <li style="list-style-type:disc;">Will you be present at the listing during your guest's stay?</li>
                        
                      
                        </ul></p>
                    </div>
                </div>
            
            
            <div class="calender_comment_content" id="div4" style="display:none;margin-top:220%;">
                
                    <i class="calender_comment_content_icon"><img src="images/calender_available_icon.jpg" /></i>                    
                    <div class="calender_comment_text">                    
                        <h2>Neighborhood overview</h2>                    
                        <p> <ul >
                        <li style="list-style-type:disc;">What do you love about your neighborhood?</li>
                        <li style="list-style-type:disc;">What do you think your guests should experience?</li>
                        
                      
                        </ul></p>
                    </div>
                </div>
                
                
                 <div class="calender_comment_content" id="div5" style="display:none;margin-top:310%;">
                
                    <i class="calender_comment_content_icon"><img src="images/calender_available_icon.jpg" /></i>                    
                    <div class="calender_comment_text">                    
                        <h2>Getting around</h2>                    
                        <p> <ul >
                        <li style="list-style-type:disc;">Is there convenient public transit?</li>
                        <li style="list-style-type:disc;">Is parking included with your listing or nearby?</li>
                        <li style="list-style-type:disc;">How does your guest get to your listing from the airport?</li>
                        
                      
                        </ul></p>
                    </div>
                </div>
            
            
            
               <div class="calender_comment_content" style="display:none;margin-top:380%;">
                
                    <i class="calender_comment_content_icon"><img src="images/calender_available_icon.jpg" /></i>                    
                    <div class="calender_comment_text">                    
                        <h2>Other Things to Note</h2>                    
                        <p> <ul >
                        <li style="list-style-type:disc;">Are there any other details you'd like to share?</li>
                        
                        
                      
                        </ul></p>
                    </div>
                </div>
                
                  <div class="calender_comment_content" id="div7" style="display:none;margin-top:443%;">
                
                    <i class="calender_comment_content_icon"><img src="images/calender_available_icon.jpg" /></i>                    
                    <div class="calender_comment_text">                    
                        <h2>House Rules</h2>                    
                        <p> <ul >
                        <li style="list-style-type:disc;">How do you expect your guests to behave?</li>
                        <li style="list-style-type:disc;">Do you allow pets?</li>
                        <li style="list-style-type:disc;">Do you have rules against smoking?</li>
                        
                        
                      
                        </ul></p>
                    </div>
                </div
                
                
                
            
            
            
            
            
            
            ></div>
            
        
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