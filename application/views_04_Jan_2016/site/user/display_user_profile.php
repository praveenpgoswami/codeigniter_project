<?php 
$this->load->view('site/templates/header');
?>



 <?php //echo '<pre>'; print_r($this->data['verifyid']->result_array());  ?>
<section>
  <div class="profile-page">
  <div class="container">


    <div class="col-sm-3">
      <div class="profile-left">
        <div class="profilr-img">
		<?php $ImageName =($this->data['user_Details']->row()->image=='')?'images/users/user_pic-225x225.png':'images/users/'.$this->data['user_Details']->row()->image; ?>
          <img src="<?php echo $ImageName; ?>">
        </div>

        <div class="verifierid">
          <h2 class="profile-heads">Verified ID</h2>
          <ul class="virify-method">
         
		 
		 
		 <li><i class="<?php if($this->data['user_Details']->row()->is_verified =='Yes') echo 'icon-ok-text';else echo 'icon-notok-text';?>"></i>
          <div class="media-area">
          <span class="emaild-text"> Email Address </span>
		  
		  <?php if($this->data['user_Details']->row()->is_verified =='Yes') { ?>
          <label class="text-muted"> Verified </label>
		   <?php } else{?> <label class="text-muted"> Not Verified </label> <?php }?>
          </div></li>

		  
		  
           
		   <li><i class="<?php if($verifyid->row()->ph_verified =='yes') echo 'icon-ok-text';else echo 'icon-notok-text';?>"></i>
          <div class="media-area">
          <span class="emaild-text"> Phone Number </span>
           <?php if($verifyid->row()->ph_verified =='yes') { ?>
          <label class="text-muted"> Verified </label>
		   <?php } else{?> <label class="text-muted"> Not Verified </label> <?php }?>
          </div></li>
        </ul>
        </div>


          <div class="verifierid">
          <h2 class="profile-heads">About Me</h2>
          <ul class="virify-method about-me">

          <li>
          <span class="emaild-text"> Work </span>
          <label class="text-muted"> <?php   if($this->data['user_Details']->row()->work !=''){echo ucfirst($this->data['user_Details']->row()->work);}else{echo 'Not Specified';} ?> </label>
          </li>

           <li>
          <span class="emaild-text"> Languages  </span>
<label class="text-muted"><?php 
 $languages_known=explode(',',$this->data['user_Details']->row()->languages_known);
 $languages_known_text='';
foreach($languages->result() as $language)
{
if(in_array($language->language_code,$languages_known))
{
$languages_known_text .=$language->language_name.',';
}
}
echo ucfirst(substr($languages_known_text,0,-1));
if($languages_known_text ==''){echo 'None Selected';}?> </label>
          </li>
 </ul>
        </div>
         </div>
          </div>
  
    










      <div class="col-sm-9">
        <div class="profile-right">
          <div class="profile-name-section">
            <label class="namd-space"><?php echo $this->data['user_Details']->row()->firstname.' '.$this->data['user_Details']->row()->lastname; ?></label>
                <label ><?php echo $this->data['user_Details']->row()->thumbnail; ?></label>
                
            <ul class="riw-title">
            <!-- <li>
              <i class="hodt1co hodtco1"></i>
              <span>Super script</span>
            </li> -->

               <li style="display:none">
            <label class="revd-text"><?php echo $ReviewDetails->num_rows(); ?></label>
              <span>Reviews</span>
            </li>

             <li>
			 <?php 
			 if($this->data['verifyid']->row()->id_verified == 'Yes'){
			 ?>
             <a href="pages/verify_id"> <i class="hodt1co hodtco2"></i>
              <span>Verified Id</span> </a>
			  <?php }?>
            </li>
            </ul>

          </div>


          <div class="profile-place">
          <span class="plece-nme"><?php echo $this->data['user_Details']->row()->description; ?>
           </p>

          </div>

          <div class="listiong-places">
            <label class="list-areas-text">Listings (<?php echo $rentalDetail->num_rows(); ?>)</label>
           

		   <ul class="listig-areasli">
		   
		   <?php 
		   
		 // echo '<pre>'; print_r($WishListCat->result_array()); 
	if($rentalDetail->num_rows() > 0){
		foreach($rentalDetail->result_array() as $wlist){  ?>
			
			
			
			  <?php  $ImageName =($wlist['product_image']=='')?'':'server/php/rental/'.$wlist['product_image'];
		// $ImageName =($wlist['product_image']=='')?'images/unknown.jpg':'server/php/rental/'.$wlist['product_image'];
		//if($wlist['product_image']!='')
			//{
			//	$ImageName= server/php/rental/.$wlist['product_image'];
		//	}?>
			   
				<li><a class="lin-img2" href="rental/<?php echo $wlist['id']; ?>"><img src="<?php echo $ImageName; ?>">
                <div class="top-posd">
                  <span><?php echo ucfirst($wlist['product_title']); ?></span>
                  <!-- <span><?php echo $wlist['product_title']; ?></span> -->
                </div>
              </a></li>
				 
              
			  
			  <?php }  } ?>

              <!--  <li><a class="lin-img2" href="#"><img src="images/prof2.png">
                <div class="top-posd">
                  <span>Cozy Suite in KL Center</span>
                  <span>Off Jalan Kuching , Kuala Lumbur</span>
                </div>
              </a></li>


               <li><a class="lin-img3" href="#"><img src="images/prof3.png">
                <div class="top-posd">
                  <span>Comfy Suite in KL City Center</span>
                  <span>Off Jalan Kuching , Kuala Lumbur</span>
                </div>
              </a></li> -->
   
              <a class="view-texts" href="javascript:void(0);">View All Listings</a>
            </ul>
			
			
			
			
			
			
			
			
			
          </div>







          <div class="riwiew-container reviwprofile">
          <h2 class="reviw-count">Review (<?php echo $ReviewDetails->num_rows(); ?>) </h2>
          <div class="review-summary">
		  <?php if($ReviewDetails->num_rows() > 0) { ?>
          <span class="summar-text">Summary</span>
          <ul class="list-paging">
		  <?php foreach($ReviewDetails->result_array() as $review) { ?>
		  
		  
          <li>
		  <?php 
		  $reviewuser = $this->user_model->get_all_details(USERS,array('id'=>$review['reviewer_id']));
		// echo '<pre>'; print_r($reviewuser->result_array());
		  $ImageName =($reviewuser->row()->image=='')?"images/user_unknown.jpg":"images/users/".$reviewuser->row()->image; ?>
          <div class="peps">
          <figure class="peps-area">
		  
          <a href="users/show/<?php echo $review['reviewer_id']; ?>"><img src="<?php echo $ImageName; ?>"></a>
          </figure>
          <span class="johns"><?php echo ucfirst($reviewuser->row()->user_name);  ?></span>
          </div>
          <div class="listd-right">
          <p><?php echo $review['review'];  ?></p>

          <div class="dated-link">
            <a href="javascrip:void(0);" style="text-decoration:none;" class="date-year">
			<?php echo date('F Y',strtotime($review['dateAdded'])); ?>
			</a>
          <a href="rental/<?php echo $review['product_id'];?>" class="bedrom-flat"><?php echo $review['product_title'];  ?></a>
          </div>
          </div>

          </li>
         <?php } ?>

		  
		   <!-- 

           <li>
          <div class="peps">
          <figure class="peps-area">
          <img src="images/peps.png">
          </figure>
          <span class="johns">John</span>
          </div>
          <div class="listd-right">
          <p>Marc Service Residence is located in the heart of Kuala Lumpur, just two minutes away by foot to Suria KLCC shopping center which will ease your shopping needs.</p>

          <div class="dated-link">
            <a href="#" class="date-year">October 2014</a>
          <a href="#" class="bedrom-flat">2bed 2bath in the heart of Kuala Lumpur</a>
          </div>
          </div>

          </li>


           <li>
          <div class="peps">
          <figure class="peps-area">
          <img src="images/peps.png">
          </figure>
          <span class="johns">John</span>
          </div>
          <div class="listd-right">
          <p>Marc Service Residence is located in the heart of Kuala Lumpur, just two minutes away by foot to Suria KLCC shopping center which will ease your shopping needs.</p>

          <div class="dated-link">
            <a href="#" class="date-year">October 2014</a>
          <a href="#" class="bedrom-flat">2bed 2bath in the heart of Kuala Lumpur</a>
          </div>
          </div>

          </li>
       -->
          <a class="view-texts" href="#">See More</a>
          </ul>
		  <?php } ?>
          </div>
</div>


        </div>
    <div>



  </div>
  </div>


</section>



<?php 
$this->load->view('site/templates/footer');
?>

<?php /*
$this->load->view('site/templates/header');
?>

<!---DASHBOARD-->


<div class="dashboard">
	<div class="main">
    	
    

<div id="command">


          <div class="clearfix" id="dashboard">
              <div id="left">
                <div class="box" id="user_box">
                  <div class="middle">
                    <div id="user_pic">
                      <div class="_pm_container">
          <div class="_pm_shadow r"></div>
          <div class="_pm_shadow l"></div>
          <div class="_pm">
            <div class="_pm_inner clearfix">
              <div class="_pm_shadow_inner r"></div>
              <div class="_pm_shadow_inner l"></div>
              <div class="_pm_shadow_inner t"></div>
              <div class="_pm_shadow_inner b"></div>
              
                        <img width="209" height="209" title="<?php echo $user_Details->row()->firstname;?>" src="images/users/<?php if($user_Details->row()->image==''){ ?>user_pic-225x225.png <?php } else { echo $user_Details->row()->image;} ?>" alt="<?php echo $user_Details->row()->firstname;?>">
        
            </div>
          </div>
        </div>            </div>
		
		
		
		
		<!--/*popup content*/
       /* <div class="modal fade" id="contact" style="display:none !important;" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="false">
            <div class="modal-dialog">
                <div class="panel panel-primary">
<form id="new_message" class="new_message" method="post" data-remote="true" action="site/user/inbox1" accept-charset="UTF-8">



<div style="margin:0;padding:0;display:inline">
<div style="width:95%" class="modal-header">
<a id="message_modal_close" class="close" data-dismiss="modal">×</a>
<h3> Send a Message </h3>
</div>
<div class="modal-body">

<div class="row-fluid">
<input type="text" name="user_id" id="user_id" value="<?php echo $loginCheck; ?>" />
<input type="text" name="guide_id" id="guide_id" value="<?php echo $user_Details->row()->id; ?>" />

<div class="avatar">
<?php 	$ImageName = ($user_Details->row()->image=="") ? "images/site/avatar_unknown.png" :"images/users/".$user_Details->row()->image;?>
<img class="popup-avtr" style="height:150px;width:150px;" src="<?php echo $ImageName; ?>"  />

</div>
<div class="display-content">

<textarea id="message" name="message" rows="2" placeholder="Have a question? Send <?php echo $user_Details->row()->user_name; ?> a message!" name="message" cols="45" style="width:350px;height:80px;"></textarea>












</div>
</div>
</div>
<div class="modal-footer">

<input id="message_submit" class="btn btn-info " type="submit" value="Send Message" >


</div>
</form>
</div>
                    
                    </div>
                </div>
            </div>
            
 <!--/*popup content*/
		
		
		
		
		
                  /*  <h2>
                      <?php echo ucfirst($user_Details->row()->firstname); ?>
                    </h2>
                    <?php if($user_Details->row()->id==$loginCheck){ ?>
                    <p>
                      <a href="settings">Edit Profile</a>
                    </p>
                    <?php } ?>
                  </div>
                </div>
        
                <div id="verifications-box" class="box">
                  <div class="middle">
                   <!-- <a href="#" class="add_more">Add More</a>-->
				   
                    <h3 class="box-header">Verifications</h3>
                  <ul class="unstyled verifications-list">
            <li class="verifications-list-item">
              <i class="icon icon-envelope-alt"></i>
              <h5>Email Address</h5>
              <?php if($user_Details->row()->is_verified =='Yes') echo "<h6>Verified</h6>"; else echo "<h6>Not Verified</h6>"; ?>
              
            </li>
        </ul>
        
		    <a class="btn btn-info btn-smal edits" data-toggle="modal" data-target="#contact" data-original-title>Contact </a>
		
                  </div>
                </div>
        
               
              <div class="clear"></div>
            </div>
            
            
            
            
            <h3> <?php echo "Hey, I'm ".stripslashes($user_Details->row()->firstname)."!"; ?> </h3>
            <span style="font-size:14px; padding-top:8px;">
                        <span style="line-height:16px; padding:6px 0 10px 0; display:block;"><?php echo ucfirst($user_Details->row()->description);?> </span>
                      </span>
        
            <div class="reviews">		 
  	       
                         
                 				   <?php
								   
								 	if($ReviewDetails->num_rows() > 0){
									echo '<h2>Reviews('.$ReviewDetails->num_rows().')</h2>';
								    foreach($ReviewDetails->result() as $row)
									    	{ ?>
                                    
                                       
<div class="media">
    <div class="pull-left">
      <a class="media-photo media-link row-space-1" href="rental/<?php echo $row->product_id; ?>"><img width="68" height="68" title="<?php echo $row->product_title; ?>" src="server/php/rental/<?php echo $row->product_image; ?>" class="lazy" alt="<?php echo $row->product_title; ?>" style="display: inline;"></a>
        <div class="text-center profile-name">
          <a href="rental/<?php echo $row->product_id; ?>"><?php echo substr($row->product_title, 0, 10); ?></a>
        </div>
    </div>
    <div class="media-body">
      <div class="panel panel-quote panel-dark row-space-2">
        <div class="panel-body clearfix">
          <div class="comment-container truncate row-space-2">
            <p>
             <?php echo $row->review; ?>
            </p>
            <div class="more-trigger text-center">
              <i class="icon icon-chevron-down h3"></i>
            </div>
          </div>
            
          <div class="text-muted date"><?php echo $row->dateAdded; ?></div>
        </div>
      </div>

    </div>
  </div>
                                        	<?php	}
											
											
											} ?>
                                       </div>
            
            
            
  </div>
    </div>
</div>
</div>

<!---DASHBOARD-->
<!---FOOTER-->
<?php 
$this->load->view('site/templates/footer');
*/?>
