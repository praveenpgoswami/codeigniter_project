<?php
$this->load->view('site/templates/header',$this->data);
?>
<link rel="stylesheet" href="css/site/<?php echo SITE_COMMON_DEFINE ?>timeline.css" type="text/css" media="all"/>
<link rel="stylesheet" media="all" type="text/css" href="css/site/<?php echo SITE_COMMON_DEFINE ?>profile.css" />
<!-- Section_start -->
<div class="lang-en wider no-subnav">
<div id="container-wrapper">
  <div class="container usersection">
    <div class="icon-cache"></div>
    <div id="tooltip"></div>
    <div class="wrapper-content right-sidebar">
<?php if($flash_data != '') { ?>
		<div class="errorContainer" id="<?php echo $flash_data_type;?>">
			<script>setTimeout("hideErrDiv('<?php echo $flash_data_type;?>')", 3000);</script>
			<p><span><?php echo $flash_data;?></span></p>
		</div>
		<?php } ?>
      <div id="content">
        <div class="wrapper timeline normal">
          <ul class="user-tab">
            <li><a href="user/<?php echo $userProfileDetails->row()->user_name;?>" ><b><?php echo LIKED_BUTTON;?></b> <small><?php echo $userProfileDetails->row()->likes;?></small></a></li>
            <li><a href="user/<?php echo $userProfileDetails->row()->user_name;?>/added" class="current"><b><?php if($this->lang->line('display_added') != '') { echo stripslashes($this->lang->line('display_added')); } else echo "Added"; ?></b> <small><?php echo $userProfileDetails->row()->products;?></small></a></li>
            <li><a href="user/<?php echo $userProfileDetails->row()->user_name;?>/lists"><b><?php if($this->lang->line('display_lists') != '') { echo stripslashes($this->lang->line('display_lists')); } else echo "Lists"; ?></b> <small><?php echo $userProfileDetails->row()->lists;?></small></a></li>
            <li><a href="user/<?php echo $userProfileDetails->row()->user_name;?>/wants"><b><?php if($this->lang->line('display_wants') != '') { echo stripslashes($this->lang->line('display_wants')); } else echo "Wants"; ?></b> <small><?php echo $userProfileDetails->row()->want_count;?></small></a></li>
            <li><a href="user/<?php echo $userProfileDetails->row()->user_name;?>/owns"><b><?php if($this->lang->line('display_owns') != '') { echo stripslashes($this->lang->line('display_owns')); } else echo "Owns"; ?></b> <small><?php echo $userProfileDetails->row()->own_count;?></small></a></li>
            <?php //if ($userProfileDetails->row()->lists>0){?>
 <!--             <li><a href="user/<?php //echo $userProfileDetails->row()->user_name;?>/lists"><b>Lists</b> <small><?php //echo $userProfileDetails->row()->lists;?></small></a></li>
  -->           <?php //}?>
          </ul>
          <div class="top-menu">
            <div class="viewer">
              <ul>
   <!--              <li class="slideshow"><a href="#" class="btn-slideshow"><i class="ic-slideshow"></i> <span style="margin-left: -37px;">Slideshow<b></b></span></a></li>
 -->              </ul>
            </div>
          </div>
          <?php if ($addedProductDetails->num_rows()>0 || $notSellProducts->num_rows()>0){?>
          <ol class="stream">
          <?php 
          foreach ($addedProductDetails->result() as $productLikeDetailsRow){
          		$imgName = 'dummyProductImage.jpg';
         		$imgArr = explode(',', $productLikeDetailsRow->image);
         		if (count($imgArr)>0){
         			foreach ($imgArr as $imgRow){
         				if ($imgRow != ''){
         					$imgName = $imgRow;
         					break;
         				}
         			}
         		}
          		$fancyClass = 'fancy';
          		$fancyText = LIKE_BUTTON;
          		if (count($likedProducts)>0 && $likedProducts->num_rows()>0){
          			foreach ($likedProducts->result() as $likeProRow){
          				if ($likeProRow->product_id == $productLikeDetailsRow->seller_product_id){
          					$fancyClass = 'fancyd';$fancyText = LIKED_BUTTON;break;
          				}
          			}
          		}
          ?>
            <li class="big clear">
              <div class="figure-item"> 
              <a href="<?php echo 'things/'.$productLikeDetailsRow->id.'/'.url_title($productLikeDetailsRow->product_title);?>" class="vcard">
              <img src="images/product/<?php echo $imgName;?>">
              </a> 
              <a href="<?php echo 'things/'.$productLikeDetailsRow->id.'/'.url_title($productLikeDetailsRow->product_name);?>" class="figure-img"> 
              <span class="figure grid" style="background-size: cover" data-ori-url="images/product/<?php echo $imgName;?>" data-310-url="images/product/<?php echo $imgName;?>"><em class="back"></em>
              </span> 
              <span class="figure classic"> <em class="back"></em> 
              <img src="images/product/<?php echo $imgName;?>" data-width="640" data-height="640"> 
              </span> 
              <span class="figure vertical"> <em class="back"></em> 
              <img src="images/product/<?php echo $imgName;?>" data-width="310" data-height="310"> </span> 
              <span class="figcaption"><?php echo $productLikeDetailsRow->product_name;?></span> 
              </a> 
              <em class="figure-detail"> 
              <span class="username"><em><a href="<?php if ($productLikeDetailsRow->user_name == ''){echo 'user/administrator';}else {echo 'user/'.$productLikeDetailsRow->user_name;}?>"><?php if ($productLikeDetailsRow->user_name == ''){echo 'administrator';}else {echo $productLikeDetailsRow->full_name;}?></a> + <?php echo $productLikeDetailsRow->likes;?></em></span> 
              </em>
                <ul class="function">
                  <li class="share" style="margin-top: 0px; margin-right: 0px;">
                    <button type="button" data-timage="images/product/<?php echo $imgName;?>" tname="<?php echo $productLikeDetailsRow->product_name;?>" class="btn-share"> <i class="ic-share"></i> </button>
                  </li>
                </ul>
               <a href="#" item_img_url="images/product/<?php echo $imgName;?>" tid="<?php echo $productLikeDetailsRow->seller_product_id;?>" class="button <?php echo $fancyClass;?>" <?php if ($loginCheck==''){?>require_login="true"<?php }?>><span><i></i></span> <?php echo $fancyText;?></a> </div> 
            </li>
          <?php }?>  
          <?php 
          foreach ($notSellProducts->result() as $productLikeDetailsRow){
          		$imgName = 'dummyProductImage.jpg';
         		$imgArr = explode(',', $productLikeDetailsRow->image);
         		if (count($imgArr)>0){
         			foreach ($imgArr as $imgRow){
         				if ($imgRow != ''){
         					$imgName = $imgRow;
         					break;
         				}
         			}
         		}
          		$fancyClass = 'fancy';
          		$fancyText = LIKE_BUTTON;
          		if (count($likedProducts)>0 && $likedProducts->num_rows()>0){
          			foreach ($likedProducts->result() as $likeProRow){
          				if ($likeProRow->product_id == $productLikeDetailsRow->seller_product_id){
          					$fancyClass = 'fancyd';$fancyText = LIKED_BUTTON;break;
          				}
          			}
          		}
          ?>
            <li class="big clear">
              <div class="figure-item"> 
              <a href="<?php echo 'user/'.$userProfileDetails->row()->user_name.'/things/'.$productLikeDetailsRow->seller_product_id.'/'.url_title($productLikeDetailsRow->product_name);?>" class="vcard">
              <img src="images/product/<?php echo $imgName;?>">
              </a> 
              <a href="<?php echo 'user/'.$userProfileDetails->row()->user_name.'/things/'.$productLikeDetailsRow->seller_product_id.'/'.url_title($productLikeDetailsRow->product_name);?>" class="figure-img"> 
              <span class="figure grid" style="background-size: cover" data-ori-url="images/product/<?php echo $imgName;?>" data-310-url="images/product/<?php echo $imgName;?>"><em class="back"></em>
              </span> 
              <span class="figure classic"> <em class="back"></em> 
              <img src="images/product/<?php echo $imgName;?>" data-width="640" data-height="640"> 
              </span> 
              <span class="figure vertical"> <em class="back"></em> 
              <img src="images/product/<?php echo $imgName;?>" data-width="310" data-height="310"> </span> 
              <span class="figcaption"><?php echo $productLikeDetailsRow->product_name;?></span> 
              </a> 
              <em class="figure-detail"> 
              <span class="username"><em><a href="<?php if ($productLikeDetailsRow->user_name == ''){echo 'user/administrator';}else {echo 'user/'.$productLikeDetailsRow->user_name;}?>"><?php if ($productLikeDetailsRow->user_name == ''){echo 'administrator';}else {echo $productLikeDetailsRow->full_name;}?></a> + <?php echo $productLikeDetailsRow->likes;?></em></span> 
              </em>
                <ul class="function">
                  <li class="share" style="margin-top: 0px; margin-right: 0px;">
                    <button type="button" data-timage="<?php echo base_url();?>images/product/<?php echo $imgName;?>" tname="<?php echo $productLikeDetailsRow->product_name;?>" class="btn-share"> <i class="ic-share"></i> </button>
                  </li>
                </ul>
               <a href="#" item_img_url="images/product/<?php echo $imgName;?>" tid="<?php echo $productLikeDetailsRow->seller_product_id;?>" class="button <?php echo $fancyClass;?>" <?php if ($loginCheck==''){?>require_login="true"<?php }?>><span><i></i></span> <?php echo $fancyText;?></a> </div> 
            </li>
          <?php }?>  
          </ol>
          <?php }else {?>
          <div class="no-result">
          <?php if ($userProfileDetails->row()->products>0){?>
          <b>Product details not available</b>
          <?php }else {?>
          	<b><?php echo $userProfileDetails->row()->full_name;?></b> <?php if($this->lang->line('display_not_added') != '') { echo stripslashes($this->lang->line('display_not_added')); } else echo "has not added anything yet"; ?>.
          <?php }?>
          </div>
          <?php }?>
        </div>
        <div id="infscr-loading" style="display:none">
          <!--img alt='Loading...' src="/_ui/images/site/common/ajax-loader.gif"-->
          <span class="loading">Loading...</span> </div>
      </div>
      <aside id="sidebar">
        <div class="wrapper user-cover">
        <?php 
        $userImg = 'user-thumb1.png';
        if ($userProfileDetails->row()->image != ''){
	        $userImg = $userProfileDetails->row()->image;
        } 
        $followClass = 'follow';
        if ($loginCheck != ''){
	        $followingListArr = explode(',', $userDetails->row()->following);
	        if (in_array($userProfileDetails->row()->id, $followingListArr)){
	        	$followClass = 'following';
	        }
        } 
        ?>
          <div class="profile"> 
          <span class="avatar">
          <span id="user-photo-container">
          <img src="images/users/<?php echo $userImg;?>" />
          <?php if ($loginCheck != '' && $userDetails->row()->id == $userProfileDetails->row()->id){?>
           	<a title="Edit Profile Image" style="display: none;" class="btn-edit tooltip" onclick="$.dialog('change-photo').open();return false;" href="#">
          	<i class="ic-pen"></i>
          	<span><?php if($this->lang->line('display_edit_img') != '') { echo stripslashes($this->lang->line('display_edit_img')); } else echo "Edit Profile Image"; ?><b></b></span>
          	</a>
          <?php }?>	
          </span>
          </span>
          <?php 
          $web_url = $userProfileDetails->row()->web_url;
          if (substr($web_url, 0,4)!='http') $web_url = 'http://'.$web_url;
          ?>
            <p class="username"><?php echo $userProfileDetails->row()->full_name;?></p>
            <p class="location"><?php echo $userProfileDetails->row()->location;?>&nbsp;.&nbsp;<a href="<?php echo $web_url;?>" target="_blank"><?php echo $userProfileDetails->row()->web_url;?></a></p>
            <p class="bio"><?php echo $userProfileDetails->row()->about;?></p>
          </div>
          <ul class="sns-list">
          <?php 
          $fb_link = $userProfileDetails->row()->facebook;
          if (substr($fb_link, 0,4)!='http') $fb_link='http://'.$fb_link;
          $tw_link = $userProfileDetails->row()->twitter;
          if (substr($tw_link, 0,4)!='http') $tw_link='http://'.$tw_link;
          $go_link = $userProfileDetails->row()->google;
          if (substr($go_link, 0,4)!='http') $go_link='http://'.$go_link;
          ?>
            <li><a href="<?php echo $fb_link;?>" target="_blank"><span class="icon ic-fb"></span> Facebook</a></li>
            <li><a href="<?php echo $tw_link;?>" target="_blank"><span class="icon ic-tw"></span> Twitter</a></li>
            <li><a href="<?php echo $go_link;?>" target="_blank"><span class="icon ic-gg"></span> Twitter</a></li>
          </ul>
<!--           <a href="#" class="rank" onMouseOver="var x = $(this).position();$(this).parents('.user-cover').find('.tooltip-pop').css('left',x.left+($(this).width()/2)-95+'px').show();" onMouseOut="$(this).parents('.user-cover').find('.tooltip-pop').hide();">85 rank</a>
      -->     <div class="tooltip-pop"><b><?php echo $siteTitle;?> Rank</b> <span>Your rank is a real-time popularity score of the things you've added to <?php echo $siteTitle;?>.</span> <span>The more popular your things, the higher your rank.</span></div>
          <ul class="followers">
            <li><a href="user/<?php echo $userProfileDetails->row()->user_name;?>/followers" ><b><?php echo $userProfileDetails->row()->followers_count;?></b> <small>Followers</small></a></li>
            <li><a href="user/<?php echo $userProfileDetails->row()->user_name;?>/following" ><b><?php echo $userProfileDetails->row()->following_count;?></b> <small>Following</small></a></li>
          </ul>
          <div class="user-control">
          <?php if ($loginCheck == $userProfileDetails->row()->id){?>
            <div class="relation"> <a href="settings" class="edit-profile btn">Edit Profile</a> </div>
          <?php }else {?>
            <div class="relation"> <a href="#" uid="<?php echo $userProfileDetails->row()->id;?>" <?php if ($loginCheck==''){?>require_login="true"<?php }?> class="follow-user-link follow-link <?php echo $followClass;?>"><i class="icon"></i>Follow</a> </div>
          <?php }?>
            <div class="setting">
              <div class="trick" onClick="$(this).parents('.setting').removeClass('opened');"></div>
              <a href="#" class="btns-gray-embo btn-setting" onClick="$(this).parents('.setting').toggleClass('opened');return false;"><i class="icon ic-cok"></i></a>
              <div class="menu-content">
                <ul>
                   <li><a href="<?php echo base_url();?>site/feed/user/<?php echo $userProfileDetails->row()->user_name;?>" target="_blank">RSS Feed</a></li>
                   <li><a href="<?php echo base_url();?>user/<?php echo $userProfileDetails->row()->user_name;?>" username="<?php echo $userProfileDetails->row()->user_name;?>" txt="Check out <?php echo $userProfileDetails->row()->full_name;?>'s profile!" <?php if ($loginCheck == ''){?>require_login="true"<?php }?> class="btn-user-share">Share Profile</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
<!--         
        <div class="wrapper badge">
          <h3 class="stit">Badges</h3>
          <a href="#" class="see-all">See all</a>
          <ul class="badge-list">
            <li> <a href="#"><img src="images/site/badge_image_1.png"></a> </li>
            <li> <img src="images/site/badge_image_2.png"> </li>
            <li> <img src="images/site/badge_image_3.png"> </li>
            <li> <img src="images/site/badge_image_4.png"> </li>
            <li> <img src="images/site/badge_image_5.png"> </li>
            <li> <img src="images/site/badge_image_6.png"> </li>
            <li> <img src="images/site/badge_image_7.png"> </li>
            <li> <img src="images/site/badge_image_8.png"> </li>
          </ul>
        </div>
 --> 
        <?php 
        if ($recentActivityDetails->num_rows()>0){
        ?>
        <div class="wrapper activity">
          <h3 class="stit">Recent Activity</h3>
          <ul class="activity-list">
          <?php 
          foreach ($recentActivityDetails->result() as $recentActivityDetailsRow){
          	$activityTime = strtotime($recentActivityDetailsRow->activity_time);
 //         	$actTime = humanTiming($activityTime) . " ago" ;
 			$actTime = timespan($activityTime).' ago';
          	if ($recentActivityDetailsRow->activity_name == 'fancy'){
          		$icon = 'ic-fancy';
          		$actTxt = LIKED_BUTTON;
          		if ($recentActivityDetailsRow->product_name != ''){
	          		$link = 'things/'.$recentActivityDetailsRow->productID.'/'.url_title($recentActivityDetailsRow->product_name);
	          		$linkTxt = $recentActivityDetailsRow->product_name;
          		}else {
	          		$link = 'user/'.$userProfileDetails->row()->user_name.'/things/'.$recentActivityDetailsRow->activity_id.'/'.url_title($recentActivityDetailsRow->user_product_name);
	          		$linkTxt = $recentActivityDetailsRow->user_product_name;
          		}
          	}else if ($recentActivityDetailsRow->activity_name == 'unfancy'){
          		$icon = 'ic-fancy';
          		$actTxt = UNLIKE_BUTTON;
          		if ($recentActivityDetailsRow->product_name != ''){
	          		$link = 'things/'.$recentActivityDetailsRow->productID.'/'.url_title($recentActivityDetailsRow->product_name);
	          		$linkTxt = $recentActivityDetailsRow->product_name;
          		}else {
	          		$link = 'user/'.$userProfileDetails->row()->user_name.'/things/'.$recentActivityDetailsRow->activity_id.'/'.url_title($recentActivityDetailsRow->user_product_name);
	          		$linkTxt = $recentActivityDetailsRow->user_product_name;
          		}
          	}else if ($recentActivityDetailsRow->activity_name == 'follow'){
          		$icon = 'ic-follow';
          		$actTxt = 'Followed';
          		if ($recentActivityDetailsRow->user_name == ''){
    	      		$link = 'user/administrator';
	          		$linkTxt = 'administrator';
          		}else {
    	      		$link = 'user/'.$recentActivityDetailsRow->user_name;
	          		$linkTxt = $recentActivityDetailsRow->full_name;
          		}
          	}else if ($recentActivityDetailsRow->activity_name == 'unfollow'){
          		$icon = 'ic-follow';
          		$actTxt = 'Unfollowed';
          		if ($recentActivityDetailsRow->user_name == ''){
    	      		$link = 'user/administrator';
	          		$linkTxt = 'administrator';
          		}else {
    	      		$link = 'user/'.$recentActivityDetailsRow->user_name;
	          		$linkTxt = $recentActivityDetailsRow->full_name;
          		}
          	}
          ?>
            <li><span class="icon <?php echo $icon;?>"></span> <?php echo $actTxt;?> <a href="<?php echo $link;?>"><?php echo $linkTxt;?></a>.<small class="time"><?php echo $actTime;?></small></li>
          <?php 
          }
          ?>
          </ul>
        </div>
        <?php }?>
      </aside>
    </div>
    <?php 
     $this->load->view('site/templates/footer_menu');
     ?>
    <a href="#header" id="scroll-to-top"><span>Jump to top</span></a> </div>
  <!-- / container -->
</div>


</div>
<!-- Section_start -->
<script type="text/javascript" src="js/site/profile_things.js"></script>
<script>
jQuery(function($){
	$('a.more').mouseover(function(){$('.sns-minor').show();return false;});
	$('a.more').click(function(){
		$('.sns-minor').toggleClass('toggle');
	});
	$('.sns-minor .trick').click(function(){
		$('.sns-minor').removeClass('toggle');
		return false;
	});
	$('.sns-major').mouseover(function(){$('.sns-minor').hide();return false;});
	$('.sns-minor').mouseover(function(){if ($(this).hasClass('toggle')==false) $(this).hide();});
});
</script>
<script>
(function(){
	var $btns = $('.viewer li'), $stream = $('ol.stream'), $container=$('.container'), $wrapper = $('.wrapper-content'), first_id = 'stream-first-item_', latest_id = 'stream-latest-item_';

	$stream.data('feed-url', '/user-stream-updates?new-timeline&feed=featured');
	
	// show images as each image is loaded
	$stream.on('itemloaded', function(){

		var $latest = $stream.find('>#'+latest_id).removeAttr('id'),
	 	    $first = $stream.find('>#'+first_id).removeAttr('id'),
		    $target=$(), viewMode;

		// merge sameuser thing 
		var userid = $latest.attr('tuserid');
		var $currents = $latest.prevUntil('li[tuserid!='+userid+"]");
		var $nexts = $latest.nextUntil('li[tuserid!='+userid+"]");
		var $group = $($currents).add($latest).add($nexts);
		$nexts.filter(".clear").removeClass("clear").find("a.vcard").detach();
		if($group.length>2){
			$group.removeClass("big mid").addClass("sm").each(function(i){
				if(i%3==0) $(this).addClass("clear");
			});

			if($group.length%3==2){
				$group.last().removeClass("sm").addClass("mid").prev().removeClass("sm").addClass("mid");
			}else if($group.length%3==1){
				$group.last().removeClass("sm").addClass("big");
			}
		}else if($group.length==2){
			$group.removeClass("big").addClass("mid");
		}
		
		var forceRefresh = false;

		if(!$first.length || !$latest.length) {
			$target = $stream.children('li');
		} else {
			var newThings = $first.prevAll('li');			
			if(newThings.length) forceRefresh = true;
			$target = newThings.add($latest.nextAll('li'));
		}

		$stream.find('>li:first-child').attr('id', first_id);
		$stream.find('>li:last-child').attr('id', latest_id);

	    viewMode = $container.hasClass('vertical') ? 'vertical' : ($container.hasClass('normal') ? 'grid':'classic');

		if(viewMode=='grid'){
			$target.each(function(i,v,a){
				var $li = $(this), src_g;
				var $grid_img = $li.find(".figure.grid");
				
				if($grid_img.height()>400){
					$grid_img.css("background-image", "url("+$grid_img.attr("data-ori-url")+")");					
				}else{
					$grid_img.css("background-image", "url("+$grid_img.attr("data-310-url")+")");
				}
			});
		}

		if(viewMode == 'vertical'){
			$('#infscr-loading').show();
			setTimeout(function(){
				arrange(forceRefresh);
				$('#infscr-loading').hide();
			},10);
		}

	});
	$stream.trigger('itemloaded');
	
	$btns.each(function(){
		var $tip = $(this).find('span');
		$tip.css('margin-left', -$tip.width()/2 - 8 + 'px');
	});
	
	$btns.click(function(event){
		event.preventDefault();
		if($wrapper.hasClass('anim')) return;
		
		var $btn = $(this);

		// hightlight this button only
		$btns.find('a.current').removeClass('current');
		$btn.find('a').addClass('current');
		
		if(/\b(normal|vertical|classic)\b/.test($btn.attr('class'))){
			setView(RegExp.$1);
		}
	});

	$wrapper.on('redraw', function(event){
		var curMode = '';
		if(/\b(normal|vertical|classic)\b/.test($container.attr('class'))) curMode = RegExp.$1;
		if(curMode) setView(curMode, true);
	});

	function setView(mode, force){
		if(!force && $container.hasClass(mode)) return;
		var $items = $stream.find('>li');

		if($items.length>100){
			$items.filter(":eq(100)").nextAll().detach();			
		}

		if(!window.Modernizr || !Modernizr.csstransitions ){
			$stream.addClass('loading');
			$wrapper.trigger('before-fadeout');
			$stream.removeClass('loading');

			$wrapper.trigger('before-fadein');
			switchTo(mode);	

			if(mode=='normal'){
				$items.each(function(i,v,a){
					var $li = $(this);
					var $grid_img = $li.find(".figure.grid");
					
					if($li.height()>400){
						$grid_img.css("background-image", "url("+$grid_img.attr("data-ori-url")+")");					
					}else{
						$grid_img.css("background-image", "url("+$grid_img.attr("data-310-url")+")");
					}
				});
			}
			
			$stream.find('>li').css('opacity',1);
			$wrapper.trigger('after-fadein');
			return;
		} 

		$wrapper.trigger('before-fadeout').addClass('anim');
		$stream.addClass('loading');

		var item,
		    $visibles, visibles = [], prevVisibles, thefirst, 
		    offsetTop = $stream.offset().top,
		    hh = $('#header-new').height(),
		    sc = $(window).scrollTop(),
		    wh = $(window).innerHeight(),
			f_right, f_bottom, v_right, v_bottom,
			i, c, v, d, animated = 0;

		// get visible elements
		for(i=0,c=$items.length; i < c; i++){
			item = $items[i];
			if (offsetTop + item.offsetTop + item.offsetHeight < sc + hh) {
				//item.style.visibility = 'hidden';
			} else if (offsetTop + item.offsetTop > sc + wh) {
				//item.style.visibility = 'hidden';
				break;
			} else {
				visibles[visibles.length] = item;
			}
		}
		prevVisibles = visibles;

		// get the first animated element
		for(i=0,c=Math.min(visibles.length,10),thefirst=null; i < c; i++){
			v = visibles[i];
			
			if( !thefirst || (thefirst.offsetLeft > v.offsetLeft) || (thefirst.offsetLeft == v.offsetLeft && thefirst.offsetTop > v.offsetTop) ) {
				thefirst = v;
			}
		}

		if(visibles.length==0) fadeIn();
		// fade out elements using delay based on the distance between each element and the first element.
		for(i=0,c=visibles.length; i < c; i++){
			v = visibles[i];

			d = Math.sqrt(Math.pow((v.offsetLeft - thefirst.offsetLeft),2) + Math.pow(Math.max(v.offsetTop-thefirst.offsetTop,0),2));
			delayOpacity(v, 0, d/5);

			if(i == c -1){
				setTimeout(fadeIn,300+d/5);
			}
		}

		function fadeIn(){
			$wrapper.trigger('before-fadein');

			if($wrapper.hasClass("wait")){
				setTimeout(fadeIn, 50);
				return;
			}

			var i, c, v, thefirst, COL_COUNT, visibles = [], item;
			
			if($items.length !== $stream.get(0).childNodes.length || $items.get(0).parentNode !== $stream.get(0)) $items = $stream.find('>li');
			$stream.height($stream.parent().height());
			
			switchTo(mode);

			if(mode=='normal'){
				$items.each(function(i,v,a){
					var $li = $(this);
					var $grid_img = $li.find(".figure.grid");
					
					if($li.height()>400){
						$grid_img.css("background-image", "url("+$grid_img.attr("data-ori-url")+")");					
					}else{
						$grid_img.css("background-image", "url("+$grid_img.attr("data-310-url")+")");
					}
				});
			}

			$stream.removeClass('loading');
			$wrapper.removeClass('anim');

			// get visible elements
			for(i=0,c=$items.length; i < c; i++){
				item = $items[i];
				if (offsetTop + item.offsetTop + item.offsetHeight < sc + hh) {
					//item.style.visibility = 'hidden';
				} else if (offsetTop + item.offsetTop > sc + wh) {
					//item.style.visibility = 'hidden';
					break;
				} else {
					visibles[visibles.length] = item;
					item.style.opacity = 0;
				}
			}
			
			$wrapper.addClass('anim');

			$(visibles).css({opacity:0,visibility:''});
			COL_COUNT = Math.floor($stream.width()/$(visibles[0]).width());

			// get the first animated element
			for(i=0,c=Math.min(visibles.length,COL_COUNT),thefirst=null; i < c; i++){
				v = visibles[i];
				
				if( !thefirst || (thefirst.offsetLeft > v.offsetLeft) || (thefirst.offsetLeft == v.offsetLeft && thefirst.offsetTop > v.offsetTop) ) {
					thefirst = v;
				}
			}

			// fade in elements using delay based on the distance between each element and the first element.
			if(visibles.length==0) done();
			for(i=0,c=visibles.length; i < c; i++){
				v = visibles[i];

				d = Math.sqrt(Math.pow((v.offsetLeft - thefirst.offsetLeft),2) + Math.pow(Math.max(v.offsetTop-thefirst.offsetTop,0),2));
				delayOpacity(v, 1, d/5);

				if(i == c -1) setTimeout(done, 300+d/5);
			}
		};

		function done(){
			$wrapper.removeClass('anim');
			/*if(prevVisibles && prevVisibles.length) {
				for(var i=0,c=visibles.length; i < c; i++){
					if(visibles[i].style.opacity == '0') visibles[i].style.opacity = 1;
				}
			}*/
			$stream.find('>li').css('opacity',1);
			$wrapper.trigger('after-fadein');
		};
		
		function delayOpacity(element, opacity, interval){
			setTimeout(function(){ element.style.opacity = opacity }, Math.floor(interval));
		};


		
		function switchTo(mode){
			var currentMode = $container.hasClass('vertical')?'vertical':($container.hasClass('classic')?'classic':'normal')
			$container.removeClass('vertical normal classic').addClass(mode);
			if(mode == 'vertical') {
				arrange(true);
				$.infiniteshow.option('prepare',2000);
			} else {
				$stream.css('height','');
				$.infiniteshow.option('prepare',4000);
			}
			if($.browser.msie) $.infiniteshow.option('prepare',1000);
			$.cookie.set('timeline-view',mode,9999);
		};

	};
	
	var bottoms = [0,0,0,0];
	function arrange(force_refresh){
		
		var i, c, x, w, h, nh, min, $target, $marker, $first, $img, COL_COUNT, ITEM_WIDTH;

		var ts = new Date().getTime();
		
		$marker = $stream.find('li.page_marker_');

		if(force_refresh || !$marker.length) {
			force_refresh = true;
			bottoms = [0,0,0,0];
			$target = $stream.children('li');
		} else {
			$target = $marker.nextAll('li');
		}

		if(!$target.length) return;

		$first = $target.eq(0);
		$target.eq(-1).addClass('page_marker_');
		$marker.removeClass('page_marker_');
			
		//ITEM_WIDTH  = parseInt($first.width());
		//COL_COUNT   = Math.floor($stream.width()/ITEM_WIDTH);
		ITEM_WIDTH = 230;
		COL_COUNT = 4;
		
		for(i=0,c=$target.length; i < c; i++){
			min = Math.min.apply(Math, bottoms);			

			for(x=0; x < COL_COUNT; x++) if(bottoms[x] == min) break;

			//$li = $target.eq(i);
			$li = $($target[i]);
			$img = $li.find('.figure.vertical > img');
			if(!(nh = $img.attr('data-calcHeight'))){
				w = +$img.attr('data-width');
				h = +$img.attr('data-height');

				if(w && h) {
					//nh = $img.width()/w * h;
					nh = 210/w * h;
					nh = Math.max(nh,150);
					$img.attr('height', nh).data('calcHeight', nh);
				}else{
					nh = $img.height();
				}
			}

			$li.css({top:bottoms[x], left:x*ITEM_WIDTH})
			bottoms[x] = bottoms[x] + nh + 20;
		}
		
		$stream.height(Math.max.apply(Math, bottoms));	
		
	};
	$wrapper.on('arrange', function(){ arrange(true); });

	$notibar = $('.new-content');
	$notibar.off('click').on('click', function(){
		setTimeout(function(){
		    $.jStorage.deleteKey("fancy.prefetch.stream");
		    $.jStorage.deleteKey("first-featured");
		    $.jStorage.deleteKey("first-all");
		    $.jStorage.deleteKey("first-following");
			$stream.trigger('itemloaded');	

			if( $container.hasClass("normal") ){					
				$stream.find("li").each(function(i,v,a){
					var $li = $(this), src_g;
					var $grid_img = $li.find(".figure.grid");

					if($grid_img.height()>400){
						$grid_img.css("background-image", "url("+$grid_img.attr("data-ori-url")+")");
					}else{
						$grid_img.css("background-image", "url("+$grid_img.attr("data-310-url")+")");
					}
				});
			}		
		},100);
	});

	// feed selection
	var $feedtabs = $('.sorting a[data-feed]');	
	var init_ts = $stream.attr("ts");
	var ttl  = 5 * 60 * 1000;

	$feedtabs.click(function(e){
		var tab = $(e.target).data("feed")||"featured";
		switchTab(tab);
		e.preventDefault();
	});

	function switchTab(tab){
		$.jStorage.deleteKey("fancy.prefetch.stream");
		$feedtabs.removeClass("current");
		var $currentTab = $feedtabs.filter("a[data-feed="+tab+"]").addClass("current");
		$url = $('a.btn-more').hide();
		$win = $(window);

		var result = null;
		$wrapper.addClass("wait");	
		// hide notibar if it showing
		$notibar.hide();
		$stream.attr('ts','').data('feed-url', '/user-stream-updates?new-timeline&feed='+tab);
		var loc = tab;
		var keys = {
			timestamp : 'fancy.home-new.timestamp.'+loc,
			stream  : 'fancy.home-new.stream.'+loc,
			latest  : 'fancy.home-new.latest.'+loc,
			nextURL : 'fancy.home-new.nexturl.'+loc
		};

		if(!(result=$.jStorage.get('first-'+tab))){			
			$.ajax({
				url : '/?new-timeline&feed='+tab,
				dataType : 'html',
				success : function(data, st, xhr) {
					result = data;
					$.jStorage.set('first-'+tab, result, {TTL:5*60*1000});
				},
				error : function(xhr, st, err) {
					url = '';
				},
				complete : function(){
				}
			});
		}

		var swapContent = function(){
			if(!result){
				setTimeout(swapContent,50);
				return;
			}

			if($wrapper.hasClass("swapping")) return;
			$wrapper.addClass("swapping");
			$stream.find(">li").detach();

			$container.removeClass('pattern2 pattern3');			
			if( $container.hasClass("normal") ){
				var patterns = ['','pattern2','pattern3'];
				var pattern = patterns[Math.floor(Math.random()*3)]
				if(pattern){
					$container.addClass(pattern);
				}				
				$stream.find("li").each(function(i,v,a){
					var $li = $(this), src_g;
					var $grid_img = $li.find(".figure.grid");

					if($grid_img.height()>400){
						$grid_img.css("background-image", "url("+$grid_img.attr("data-ori-url")+")");
					}else{
						$grid_img.css("background-image", "url("+$grid_img.attr("data-310-url")+")");
					}
				});
			}

			var $sandbox = $('<div>'),
		    $contentBox = $('#content ol.stream'),
			$next, $rows;

			$sandbox[0].innerHTML = result.replace(/^[\s\S]+<body.+?>|<((?:no)?script|header|nav)[\s\S]+?<\/\1>|<\/body>[\s\S]+$/ig, '');
			$next = $sandbox.find('a.btn-more');
			$rows = $sandbox.find('#content ol.stream > li');
			
			$contentBox.append($rows);
			if(window.Modernizr && Modernizr.csstransitions )	$rows.css('opacity',0);

			$stream.trigger('itemloaded');

			if (tab!="suggestions" && $next.length) {
				url = $next.attr('href');
				$url.attr({
					'href' : $next.attr('href'),
					'ts'   : $next.attr('ts')
				});
				$stream.attr("ts",$currentTab.data("ts")||init_ts);
				$(window).trigger("prefetch.infiniteshow");
			} else {
				url = ''
				$url.attr({
					'href' : '',
					'ts'   : ''
				});
			}
			
			slideshow_request_url = '/home_slideshow.json?new-timeline&feed='+tab;
			Fancy.slideshow.reset();

			$wrapper.removeClass("wait");
			$wrapper.removeClass("swapping");
		}

		var done = function(){
			//setTimeout(function(){$('#content ol.stream > li').css('opacity',1)},500);
		}

		$stream.trigger("changeloc");
		$wrapper.off('before-fadein').on('before-fadein', swapContent);
		$wrapper.off('after-fadein').on('after-fadein', done);				
		$wrapper.trigger("redraw");
		$.cookie.set('timeline-feed',tab,9999);
	}

	$stream.on('changeloc',function(){
		$stream.attr("loc", ($feedtabs.filter(".current").attr("data-feed")||"featured") );
	})

	if("vertical"=="classic"){
		$wrapper.trigger("arrange");		
	}
	$(window).trigger("prefetch.infiniteshow");

	$stream.delegate('.figure-item',"mouseover",function(){
		if ($(this).parents('.timeline').hasClass('classic')==true) {
			$(this).find('.figure.classic .back')
				.width($(this).find('.figure.classic img').width())
				.height($(this).find('.figure.classic img').height())
				.css('margin-left',-($(this).find('.figure.classic img').width()/2)+'px')
				.css('margin-top',-($(this).find('.figure.classic img').height()/2)+'px')
				.css('left','50%')
				.css('top','50%')
			.end();
			$(this).find('.price').css('margin-top',($(this).find('.figure.classic').height()-$(this).find('.figure.classic img').height())/2+'px').css('margin-left',($(this).find('.figure.classic').width()-$(this).find('.figure.classic img').width())/2+'px');
			$(this).find('.share').css('margin-top',($(this).find('.figure.classic').height()-$(this).find('.figure.classic img').height())/2+'px').css('margin-right',($(this).find('.figure.classic').width()-$(this).find('.figure.classic img').width())/2+'px');
		}else{
			$(this).find('.figure.classic .back').removeAttr('style').end()
			.find('.price').removeAttr('style').end()
			.find('.figure.classic .share').removeAttr('style');
		}
	});
})();
</script>
<script>
        $.infiniteshow({
            itemSelector:'#content ol.stream > li',
            streamSelector:'#content ol.stream',
            dataKey:'home-new',
            post_callback: function($items){ $('ol.stream').trigger('itemloaded') },
            prefetch:true,
            
            newtimeline:true
        })
        if($.browser.msie) $.infiniteshow.option('prepare',1000);
    </script>
<?php
$this->load->view('site/templates/footer');
?>