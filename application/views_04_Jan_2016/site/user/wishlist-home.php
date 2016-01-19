<?php 
$this->load->view('site/templates/header',$this->data);
//$this->load->view('site/popup/list',$this->data);
$wuser=$WishlistUserDetails->row();

//echo '<pre>'; print_r($WishListCat->result());die;

?>
<script type="text/javascript">

function CreateWishListCat(){
	$("#wishlist_warn").html("");
	var rental_id = $("#pid").val();
	//var user_id = $("#renter_id").val();
	var list_name= $("#list_name").val();
	$("#list_name").val("");
		if(list_name==""){
		$("#wishlist_warn").html("Please enter wishlist category.");
		return false;
		}else{
		$.ajax({
	        type: 'POST',
	        url: 'site/rentals/rentalwishlistcategoryAdd',
	        data: {"list_name":list_name,"rental_id":rental_id},
	        dataType: 'json',
	        success: function(json){
					if(json.result == '0'){
						window.location.reload();
					}
					if(json.result == '1'){
						$("#wishlist_warn").html("This category already exists.");
					}
					return false;
			}
	    });
		}
		return false;
}
</script>
<!-- <div class="top-listing-head">
 		<div class="main">   
            <ul id="nav">
                <li class="active"><a href="<?php echo base_url();?>dashboard">Dashboard</a></li>
                <li><a href="<?php echo base_url();?>inbox">Inbox</a></li>
                <li><a href="<?php echo base_url();?>listing/all">Your Listing</a></li>
                <li><a href="<?php echo base_url();?>trips/upcoming">Your Trips</a></li>
                <!-- <li><a href="<?php echo base_url();?>users/<?php echo $userDetails->row()->id; ?>/wishlists">Wishlists</a></li> 
                <li><a href="<?php echo base_url();?>settings">Profile</a></li>
                <li><a href="<?php echo base_url();?>account">Account</a></li>
                <li><a href="<?php echo base_url();?>plan">Plan</a></li>
            </ul> </div></div> -->

<div style="display:none">
<div style="margin-top: 5px; margin-left: 20.5px; opacity: 1;"  class="popup ly-title update add-to-list animated" id="create_wishlist" >
	<div class="default" style="display: block;">
		<p class="ltit"><?php if($this->lang->line('header_add_list') != '') { echo stripslashes($this->lang->line('header_add_list')); } else echo "Add to List"; ?></p>
	<div class="fancyd-item" style="padding:10px 0px;">
		<div class="item-categories" style="border:none;">
				
                <input type="hidden" id="pid" name="pid" value="" />
					<fieldset class="list-categories" style="border:none;">
					<div class="list-box">
					<ul id="WishListUl">
                    <?php 
					if(count($WishListCat->result()) > 0){
						foreach($WishListCat->result() as $wishlist){ 
							$WishRentalsArr=explode(',',$wishlist->product_id);
						?>
<!-- <li><label><?php echo $wishlist->name; ?></label></li>  -->
<?php } 
 } ?>

</ul></div></fieldset>
					<fieldset class="new-list" style="border:1px solid #ccc;">
						
						<input type="text" placeholder="<?php if($this->lang->line('header_create_nwlist') != '') { echo stripslashes($this->lang->line('header_create_nwlist')); } else echo "Create New List"; ?>" value="" name="list_name" id="list_name">
                        
						<a class="btn-create create-button" href="javascript:void(0);" onclick="return CreateWishListCat();" ><?php if($this->lang->line('header_create') != '') { echo stripslashes($this->lang->line('header_create')); } else echo "Create"; ?></a>
                        <p id="wishlist_warn" style="color:#FF0000; background:#CCCCCC; display:inline-block; width:100%; "></p>
					</fieldset>
				
			</div>
		</div>
	</div>
    </div>
    </div>
<div class="wishlists-container"><div class="index_view clearfix">
<div class="yourlisting bgcolor">
<div class="top-listing-head">
 <div class="main">   
           <ul id="nav">
                <li><a href="<?php echo base_url(); ?>popular" class="write_title">Popular</a></li>
          <?php if($loginCheck!=''){ ?>
          <li><a href="<?php echo base_url(); ?>browsefriends" class="write_title">Friends</a></li>
          <li class="active"><a href="<?php echo base_url(); ?>users/<?php echo $loginCheck; ?>/wishlists" class="write_title">My Wish Lists</a></li>
          <?php } ?>
              <li></li>
            </ul> </div></div></div>

  <div class="holder-top-bar">
  <div class="container top-bar">
    <div class="row">
      <div class="span6">
        <div class="wishlist-header-badge one-line">
        
        
          <a href="users/show/<?php echo $wuser->id; ?>">
            <div class="matte-media-box">
              <img class="users" width="70" height="70" alt="<?php echo ucfirst($wuser->firstname); ?>" src="<?php if($wuser->image !=''){echo 'images/users/'.$wuser->image;}else{echo 'images/users/user_thumb.png';} ?>">
            </div>
          </a>
		  <h1 class="users-name"><?php echo ucfirst($wuser->firstname); ?>'s Wish Lists</h1>
          <h1 class="users-counts">Wishlists:<span class="item-count"> (<?php echo $WishListCat->num_rows(); ?>)</span></h1>
        
        
        </div>
      </div>
      <div class="span6 top-right-container">
        <p class="position-right"><a data-toggle="modal" href="#myModal"  class="my-btn1 gray1 create1"><i class="icon icon-plus"></i>Create New Wishlist</a></p>
      </div>
    </div>
  </div>  </div>

    <div class="holder-wishlists-body">

  <div class="container wishlists-body">

    <ul class="wishlists-list">
    <?php 
	if($WishListCat->num_rows() > 0){
		foreach($WishListCat->result() as $wlist){
			
			if($wlist->product_id !=''){
				$products=explode(',',$wlist->product_id);
				$productsNotEmy=array_filter($products);
				$CountProduct=count($productsNotEmy);
				 ?>
			  	<li  class="wishlists-list-item has-photo-pile">
				<div class="photo-heart-container">
				  <a href="user/<?php echo $loginCheck;?>/wishlists/<?php echo $wlist->id;?>">
					<div class="photo-pile">
					  <div class="matte-media-box"><!--img class="wish-main-img" alt="Vacation Places" src="<?php if($CountProduct > 0){ $ProductsImg = $this->shop->get_all_details(PRODUCT_PHOTOS,array('product_id'=>end($productsNotEmy))); if($ProductsImg->row()->product_image!=''){ echo base_url().PRODUCTPATH.$ProductsImg->row()->product_image;}else{echo 'images/product/dummyProductImage.jpg';}}else{echo 'images/site/empty-wishlist.jpg';} ?>">-->
                      <div class="wishlist-label-outer-container">
						<div class="wishlist-label-inner-container">
						  <div class="wishlist-label panel-background-dark-trans inner-glow panel-border">
							<h4 class="color-white weight-normal"><?php echo $wlist->name; ?></h4>
							<span class="color-gray font-tiny listings-count"><?php echo $CountProduct; ?> Listings</span>
							
						  </div>
						</div>
					  </div>
                      </div>
					</div>
				  </a>
				</div>
		
			  </li>
				<?php }else{?>
                <li  class="wishlists-list-item has-photo-pile">
                            <div class="photo-heart-container">
                                <div class="photo-pile">
                                  <div class="matte-media-box"><!--<img width="275" height="183" alt="Vacation Places" src="images/site/empty-wishlist.jpg">-->
                                  <div class="wishlist-label-outer-container">
                                    <div class="wishlist-label-inner-container">
                                      <div class="wishlist-label panel-background-dark-trans inner-glow panel-border">
                                        <h4 class="color-white weight-normal"><?php echo $wlist->name; ?></h4>
                                        <span class="color-gray font-tiny listings-count"><?php echo '0'; ?> Listings</span>
                                        
                                      </div>
                                    </div>
                                  </div>
                                  </div>
                                  
                                </div>
                             
                            </div>
                    
                          </li>
                <?php }
                    }
                } ?>
    </ul>

  </div>  </div>

</div></div>











<div id="myModal" class="modal fade in wisthlistpopup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">

<div class="modal-create modal-content">
<div class="panel-header"> Create New Wish List </div>
<form>
<div class="panel-body">
<input type="hidden" value="10042418" name="user_id">
<label for="wishlist_name">Wish List Name</label>
<input  style="width: 90%;" id="wishlist_name" type="text" name="list_name">
<label class="row-space-top-2">Who can see this?</label>
<div class="">
<div class="col-middle">
<div id="wishlist-edit-privacy-setting" class="select-block">
<select id="wish_select" name="wish_select" style="width: 90%;">
<option value="0"> Everyone </option>
<option value="1"> Only Me </option>
</select>
</div>
<p id="wishlist_warn_cat" style="color:#FF0000; background:#CCCCCC; display:inline-block; width:100%; "></p>
</div>

</div>
</div>
<div class="panel-footer">
<button style=" padding: 11px 35px;" onclick="return Create_WishListCat();" class="btn btn-primary save" type="submit">Save</button>
<button style="float: right; " class="cancel" data-dismiss="modal" type="button">Cancel</button>

</div>
</form>
</div>
</div>
</div>
</div>
<script type="text/javascript">
function Create_WishListCat(){
	$("#wishlist_warn_cat").html("");
	//var rental_id = $("#pid").val();
	//var user_id = $("#renter_id").val();
	var list_name= $("#wishlist_name").val();
	$("#list_name").val("");
	var select = $("#wish_select").val();
		if(list_name==""){
		$("#wishlist_warn_cat").html("Please enter wishlist category.");
		return false;
		}else{

			$.ajax({
		        type: 'POST',
		        url: 'site/rentals/rentalwishlistcategoryAdd',
		        data: {"list_name":list_name,"whocansee":select},
		        dataType: 'json',
		        success: function(json){
						if(json.result == '0'){
							window.location.reload();
						}
						if(json.result == '1'){
							$("#wishlist_warn_cat").html("This category already exists.");
						}
						return false;
				}
		    });
		}
		return false;
}
</script>

<?php 
$this->load->view('site/templates/footer',$this->data);
?>
