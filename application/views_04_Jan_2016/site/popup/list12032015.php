<?php if ($loginCheck != ''){
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
					 $('#WishListUl').prepend(json.wlist);
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
<!-- add_to_list overlay -->
<div class="popup ly-title update add-to-list animated newstaynest" id="inline_wishlist" >
	<div class="default" style="display: block;">
		<p class="ltit"><?php if($this->lang->line('header_add_list') != '') { echo stripslashes($this->lang->line('header_add_list')); } else echo "Add to List"; ?><a class="clos-ars" href="#">x</a></p>
        <h3><?php echo $productList->row()->product_title; ?></h3>
	<form action="site/rentals/AddToWishList" method="post" id="form" enctype="multipart/form-data">
		<div class="fancyd-item">
			<div class="image-wrapper">
				<div class="item-image"><img width="400" src="<?php echo base_URL().PRODUCTPATH.$productList->row()->product_image; ?>"></div>
			</div>
            
			<div class="item-categories">
			
			<div class="detaild-area"><span><?php echo $productList->row()->product_title; ?></span>
            <span><?php  echo $productList->row()->CityName.', '.$productList->row()->State_name.', '.$productList->row()->Country_name; ?></span>
		</div>
		
		<span class="wishgarea">0 Wish list</span>
				
                <input type="hidden" id="pid" name="pid" value="<?php echo $productList->row()->id; ?>" />
				<div class="ful-feld-areas">


				<fieldset class="list-categories">
					<div class="list-box">
					<ul id="WishListUl">
                    <?php 
					if(count($WishListCat->result()) > 0){
						foreach($WishListCat->result() as $wishlist){ 
							$WishRentalsArr=explode(',',$wishlist->product_id);
						?>
<li><label><input type="checkbox" name="wishlist_cat[]" value="<?php echo $wishlist->id; ?>" <?php if(in_array($productList->row()->id,$WishRentalsArr)){ ?>checked="checked" <?php } ?> /><?php echo $wishlist->name; ?></label></li>
<?php } 
 } ?>

</ul></div></fieldset>
					<fieldset class="new-list">
						
						<input type="text" placeholder="<?php if($this->lang->line('header_create_nwlist') != '') { echo stripslashes($this->lang->line('header_create_nwlist')); } else echo "Create New List"; ?>" value="" name="list_name" id="list_name">
                        <p id="wishlist_warn" style="color:#FF0000; background:#CCCCCC;"></p>
						<a class="btn-create" href="javascript:void(0);" onclick="return CreateWishListCat();" ><?php if($this->lang->line('header_create') != '') { echo stripslashes($this->lang->line('header_create')); } else echo "Create"; ?></a>
					</fieldset>
					
					
				
			</div>
			<div class="notes-area"><span class="add-text">Add Notes</span>
					<?php if(count($notesAdded->result()) == 0){?>
					<textarea name="add-notes" class="add-notes"></textarea>
					<input type="hidden" id="nid" name="nid" value="" />
					<?php }
					if(count($notesAdded->result()) == 1){?>
						<textarea name="add-notes" class="add-notes"><?php echo $notesAdded->row()->notes;?></textarea>
						<input type="hidden" id="nid" name="nid" value="<?php echo $notesAdded->row()->id;?>" />
					<?php }?> 
				   </div>
		</div></div>
		<div class="btn-area">
				<input class="btn-add-to-list btn-done" type="submit" name="submit" value="<?php if($this->lang->line('header_done') != '') { echo stripslashes($this->lang->line('header_done')); } else echo "Done"; ?>"/>
				
			</div>
            </form>
	</div>
    </div>
<script>
$(document).ready(function(){
  $(".wishgarea").click(function(){
    $(".ful-feld-areas").addClass("disply-imputant");
  });
});
</script>

<?php }?>