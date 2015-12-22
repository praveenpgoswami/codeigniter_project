<?php 
$currentUrl = $this->uri->segment(2,0); $currentPage = $this->uri->segment(3,0);
if($currentUrl==''){$currentUrl = 'dashboard';} if($currentPage==''){$currentPage = 'dashboard';}
?>
 
<div id="left_bar" >

	<div id="sidebar">
		<div id="secondary_nav">
			<ul id="sidenav" class="accordion_mnu collapsible">

				<li><a href="<?php echo base_url();?>admin/dashboard/admin_dashboard" <?php if($currentUrl=='dashboard'){ echo 'class="active"';} ?>><span class="nav_icon computer_imac"></span> Dashboard</a></li>
				<li><h6 style="margin: 10px 0;padding-left:40px;font-weight:normal;color:#0D68AF;">Managements</h6></li>
                
				<?php extract($privileges); if ($allPrev == '1'){ ?>
				<li><a href="<?php echo base_url();?>admin/adminlogin/display_admin_list" <?php if($currentUrl=='adminlogin'){ echo 'class="active"';} ?>><span class="nav_icon admin_user"></span> Admin<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='adminlogin' || $currentUrl=='sitemapcreate'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					<li><a href="<?php echo base_url();?>admin/adminlogin/display_admin_list" <?php if($currentPage=='display_admin_list'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Admin Users</a></li>
					<li><a href="admin/adminlogin/change_admin_password_form" <?php if($currentPage=='change_admin_password_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Change Password</a></li>
					<li><a href="admin/adminlogin/admin_global_settings_form" <?php if($currentPage=='admin_global_settings_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Settings</a></li>
                    <li><a href="admin/adminlogin/admin_smtp_settings" <?php if($currentPage=='admin_smtp_settings'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>SMTP Settings</a></li>
                   
				   <li><a href="admin/sitemap/create_sitemap" <?php if($currentUrl=='create_sitemap'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Sitemap Creation</a></li>
				</ul>
				</li>
				
				
				<li><a href="<?php echo base_url();?>admin/subadmin/display_sub_admin" <?php if($currentUrl=='subadmin'){ echo 'class="active"';} ?>><span class="nav_icon user"></span> Sub-Admin<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='subadmin'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					<li><a href="admin/subadmin/display_sub_admin" <?php if($currentPage=='display_sub_admin'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Sub-Admin List</a></li>
					<li><a href="admin/subadmin/add_sub_admin_form" <?php if($currentPage=='add_sub_admin_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Add New Sub-Admin</a></li>
				</ul>
				</li>
				
				
				
				
				
				
				
				
				<?php } if ((isset($Members) && is_array($Members)) && in_array('0', $Members) || $allPrev == '1'){ 	?>
				<li><a href="admin/users/display_user_dashboard" <?php if($currentUrl=='users'){ echo 'class="active"';} ?>><span class="nav_icon users"></span>Members<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='users'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					<li><a href="admin/users/display_user_dashboard" <?php if($currentPage=='display_user_dashboard'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Dashboard</a></li>
					<li><a href="admin/users/display_user_list" <?php if($currentPage=='display_user_list'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Member List</a></li>
					<?php if ($allPrev == '1' || in_array('1', $Members)){?>
					<li><a href="admin/users/add_user_form" <?php if($currentPage=='add_user_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Add New Member</a></li>
					<?php }?>
					<li><a href="admin/users/export_user_details" <?php if($currentPage=='export_user_details'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Export Member List</a></li>
					
				</ul>
				</li>
				
				<?php  } if ((isset($Host) && is_array($Host)) && in_array('0', $Host) || $allPrev == '1') { 	?>
				<li><a href="admin/seller/display_seller_dashboard" <?php if($currentUrl=='seller'){ echo 'class="active"';} ?>><span class="nav_icon users_2"></span>Host<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='seller'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					<li><a href="admin/seller/display_seller_dashboard" <?php if($currentPage=='display_seller_dashboard'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Dashboard</a></li>
					<li><a href="admin/seller/display_seller_list" <?php if($currentPage=='display_seller_list'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Host List</a></li>
                    <?php if ($allPrev == '1' || in_array('1', $Host)){?>
					<li><a href="admin/seller/add_seller_form" <?php if($currentPage=='add_seller_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Add New Host</a></li>
                      <li><a href="admin/seller/customerExcelExport" <?php if($currentPage=='display_seller_list'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Export Host List</a></li>
                    <?php } ?>					
				</ul>
				</li>
				
				<?php } if ((isset($Properties) && is_array($Properties)) && in_array('0', $Properties) || $allPrev == '1'){ 	?>
				<li><a href="admin/product/display_rental_dashboard" <?php if($currentUrl=='product' || $currentUrl=='comments'){ echo 'class="active"';} ?>><span class="nav_icon folder"></span> Properties<span class="up_down_arrow">&nbsp;</span></a>
				  <ul class="acitem" <?php if($currentUrl=='product' || $currentUrl=='comments'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
                  
                  
                  <li><a href="admin/product/display_rental_dashboard" <?php if($currentPage=='display_rental_dashboard'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Dashboard</a></li>
                  
                  
					<li><a href="admin/product/display_product_list" <?php if($currentPage=='display_product_list'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Property List</a></li>
					<?php if ($allPrev == '1' || in_array('1', $Properties)){ ?>
					<li><a href="admin/product/add_product_form" <?php if($currentPage=='add_product_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Add New Property</a></li>
                     <li><a href="admin/product/customerExcelExport" <?php if($currentPage=='display_user_product_list'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Export Property List</a></li>
					<?php } ?>
				</ul>
				</li>
				
				<?php } if ((isset($Payment_gateway) && is_array($Payment_gateway)) && in_array('0', $Payment_gateway) || $allPrev == '1'){ ?>
                <li><a href="admin/order/display_order_paid" <?php if($currentUrl=='order' || $this->uri->segment(1,0)=='order-review'){ echo 'class="active"';} ?>><span class="nav_icon coverflow"></span> Finance<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='order' || $this->uri->segment(1,0)=='order-review'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					<li><a href="admin/order/display_order_paid" <?php if($currentPage=='display_order_paid'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Paid Payment</a></li>
					<li><a href="admin/order/display_order_pending" <?php if($currentPage=='display_order_pending'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Failed Payment</a></li>
					
					<li><a href="admin/order/display_listing_order" <?php if($currentPage=='display_order_pending'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Listing  Payment</a></li>
					
                    <li><a href="admin/order/customerExcelExport/Paid" <?php if($currentPage=='display_order_pending'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Export Finance Paid List</a></li>
					<li><a href="admin/order/customerExcelExport/Pending" <?php if($currentPage=='display_order_pending'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Export Finance Failed  List</a></li>
					<li><a href="admin/order/customerExcelExportlist" <?php if($currentPage=='display_order_pending'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Export Finance Listing  List</a></li>

				</ul>
				</li>
				<?php } if ((isset($List) && is_array($List)) && in_array('0', $List) || $allPrev == '1'){ 	?>
				<li><a href="admin/attribute/display_attribute_list" <?php if($currentUrl=='attribute'){ echo 'style="active"';} ?>><span class="nav_icon cog_3"></span> List<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='attribute'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					<li><a href="admin/attribute/display_attribute_list" <?php if($currentPage=='display_attribute_list'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Lists</a></li>
					<li><a href="admin/attribute/display_list_values" <?php if($currentPage=='display_list_values'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>List Values</a></li>
					<?php if ($allPrev == '1' || in_array('1', $List)){?>
                    <li><a href="admin/attribute/add_attribute_form" <?php if($currentPage=='add_attribute_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Add New List</a></li>
                    <li><a href="admin/attribute/add_list_value_form" <?php if($currentPage=='add_list_value_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Add List Value</a></li>
					
					<?php }?>
				</ul>
				</li>
			
				<?php } if ((isset($List) && is_array($List)) && in_array('0', $List) || $allPrev == '1'){ 	?>
				<li><a href="javascript:void(0);" <?php if($currentUrl=='bookingpayment'){ echo 'style="active"';} ?>><span class="nav_icon cog_3"></span> Accounts<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='bookingpayment'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					
					<li><a href="admin/bookingpayment/display_receivable" <?php if($currentPage=='display_receivable'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Receivable</a></li>					
					<?php if ($allPrev == '1' || in_array('1', $List)){?>
                    <li><a href="admin/bookingpayment/display_payable" <?php if($currentPage=='display_payable'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Payable</a></li>
					
					
					
					<li><a href="admin/bookingpayment/customerExcelExportReceivable" <?php if($currentPage=='customerExcelExportReceivable'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Export Receivable</a></li>
					<li><a href="admin/bookingpayment/customerExcelExportPayable" <?php if($currentPage=='customerExcelExportPayable'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Export Payable</a></li>
					<?php }?>
				</ul>
				</li>
				
				
				<?php } if ((isset($List) && is_array($List)) && in_array('0', $List) || $allPrev == '1'){ 	?>
				<li><a href="admin/attribute/display_attribute_list" <?php if($currentUrl=='account'){ echo 'style="active"';} ?>><span class="nav_icon cog_3"></span> Booking Status<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='account'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					
					<li><a href="admin/account/display_newbooking" <?php if($currentPage=='display_newbooking'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>New Booking</a></li>					
					<?php if ($allPrev == '1' || in_array('1', $List)){?>
                    <li><a href="admin/account/display_book_confirmed" <?php if($currentPage=='display_book_confirmed'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Completed Booking</a></li>
					
					<li><a href="admin/account/display_book_expired" <?php if($currentPage=='display_book_expired'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Expired Booking</a></li>
					
					<li><a href="admin/account/customerExcelExportNewBooking/enquiry" <?php if($currentPage=='customerExcelExportNewBooking'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Export New Booking</a></li>
					<li><a href="admin/account/customerExcelExportNewBooking/booked" <?php if($currentPage=='customerExcelExportNewBooking'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Exp Completed Booking</a></li>
					
					<li><a href="admin/account/customerExcelExportExpired" <?php if($currentPage=='customerExcelExportExpired'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Exp Expired Booking</a></li>
				   
					<?php }?>
				</ul>
				</li>
				
				<?php } if ((isset($Listspace) && is_array($Listspace)) && in_array('0', $Listspace) || $allPrev == '1'){ 	?>
				<li><a href="admin/listattribute/display_attribute_listspace" <?php if($currentUrl=='listattribute'){ echo 'class="active"';} ?>><span class="nav_icon folder"></span>List Space<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='listattribute'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					<li><a href="admin/listattribute/display_attribute_listspace" <?php if($currentPage=='display_attribute_listspace'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>List Space</a></li>
					<li><a href="admin/listattribute/display_listspace_values" <?php if($currentPage=='display_listspace_values'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>List Space Values</a></li>
					
					<?php if ($allPrev == '1' || in_array('1', $Listspace)){?>
                    <li style="display:none"><a href="admin/listattribute/add_attribute_listform" <?php if($currentPage=='add_attribute_listform'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Add New List Space</a></li>
                    <li><a href="admin/listattribute/add_listspace_value_form" <?php if($currentPage=='add_listspace_value_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Add List Value Space</a></li>
					
					<?php }?>
				</ul>
				</li>
				
				<?php } if ((isset($Listing) && is_array($Listing)) && in_array('0', $Listing) || $allPrev == '1'){ ?>
				<li>
					<a href="admin/listings/display_attribute_list" <?php if($currentUrl=='listings'){ echo 'class="active"';} ?>>
						<span class="nav_icon folder"></span>Listing 
						<span class="up_down_arrow">&nbsp;</span>
					</a>
					<ul class="acitem" <?php if($currentUrl=='listings'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
						<?php if ($allPrev == '1' || in_array('1', $Listing)){?>
						<li>
							<a href="admin/listings/rooms_and_beds" <?php if($currentPage=='rooms_and_beds'){ echo 'class="active"';} ?>>
								<span class="list-icon">&nbsp;</span>Rooms and Beds
							</a>
						</li>
						
						<?php } ?>
					</ul>
				</li>
				
				
				<?php  } if ((isset($Couponcode) && is_array($Couponcode)) && in_array('0', $Couponcode) || $allPrev == '1'){ ?>
				<li><a href="admin/couponcards/display_couponcards" <?php if($currentUrl=='couponcards'){ echo 'class="active"';} ?>><span class="nav_icon record"></span> Coupon Codes<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='couponcards'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					<li><a href="admin/couponcards/display_couponcards" <?php if($currentPage=='display_couponcards'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Coupon code List</a></li>
					<?php if ($allPrev == '1' || in_array('1', $Couponcode)){?>
					<li><a href="admin/couponcards/add_couponcard_form" <?php if($currentPage=='add_couponcard_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Add Coupon code</a></li>
					<?php }?>
				</ul>
				</li>
				
				<?php } if ((isset($Newsletter) && is_array($Newsletter)) && in_array('0', $Newsletter) || $allPrev == '1'){  ?>
				<li><a href="admin/newsletter/display_newsletter" <?php if($currentUrl=='newsletter'){ echo 'class="active"';} ?>><span class="nav_icon mail"></span> Newsletter Template<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='newsletter'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					<li><a href="admin/newsletter/display_subscribers_list" <?php if($currentPage=='display_subscribers_list'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Subscription List</a></li>
					<?php if ($allPrev == '1' || in_array('1', $Newsletter)){?>
					<li><a href="admin/newsletter/display_newsletter" <?php if($currentPage=='display_newsletter'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Email Template List</a></li>
                    <li><a href="admin/newsletter/add_newsletter" <?php if($currentPage=='add_newsletter'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Add Email Template</a></li>
					<li><a href="admin/newsletter/mass_email" <?php if($currentPage=='mass_email'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Mass E-Mail Campaigns</a></li>
					<?php }?>
				</ul>
				</li>
				
				<?php } if ((isset($Location) && is_array($Location)) && in_array('0', $Location) || $allPrev == '1'){ ?>
				<li><a href="admin/location/display_location_list" <?php if($currentUrl=='location'){ echo 'class="active"';} ?>><span class="nav_icon globe"></span> Manage Country<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='location'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					<li><a href="admin/location/display_location_list" <?php if($currentPage=='display_location_list'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Country List</a></li>
                    <?php if ($allPrev == '1' || in_array('1', $Location)){ ?>
                    <li><a href="admin/location/add_tax_form" <?php if($currentPage=='add_tax_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Add State</a></li>
					<?php } ?>
				</ul>
				</li>
				
				<?php } if ((isset($Pages) && is_array($Pages)) && in_array('0', $Pages) || $allPrev == '1'){ ?>
				<li><a href="admin/cms/display_cms" <?php if($currentUrl=='cms'){ echo 'class="active"';} ?>><span class="nav_icon documents"></span> Manage Static Pages<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='cms'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
				 <li><a href="admin/cms/display_cms" <?php if($currentPage=='display_cms'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>List of pages</a></li>
					<?php if ($allPrev == '1' || in_array('1', $Pages)){?>
				 <li><a href="admin/cms/add_cms_form" <?php if($currentPage=='add_cms_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Add Main Page</a></li>
				<li><a href="admin/cms/add_subpage_form" <?php if($currentPage=='add_subpage_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Add Sub Page</a></li>
					<?php }?>
				</ul>
				</li>
				<?php  } if ((isset($City) && is_array($City)) && in_array('0', $City) || $allPrev == '1'){ ?>
				<li><a href="admin/city/display_city_list" <?php if($currentUrl=='city'){ echo 'class="active"';} ?>><span class="nav_icon record"></span> Manage City<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='city'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					<li><a href="admin/city/display_city_list" <?php if($currentPage=='display_city_list'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>City List</a></li>
					<?php if ($allPrev == '1' || in_array('1', $City)){?>
					<li><a href="admin/city/add_city_form" <?php if($currentPage=='add_city_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Add City</a></li>
					<?php }?>
				</ul>
				</li>
				
				
				<?php } if ((isset($Commission) && is_array($Commission)) && in_array('0', $Commission) || $allPrev == '1'){?>
				<li><a href="#" <?php if($currentUrl=='Commission'){ echo 'class="active"';} ?>><span class="nav_icon folder"></span>Commisssions<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='Commission'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					<li><a href="admin/commission/display_commission_list" <?php if($currentPage=='display_commission_list'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Commisssion List</a></li>
					<li style="display:none;"><a href="admin/commission/display_commission_tracking_lists" <?php if($currentPage=='display_commission_tracking_lists'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Commisssion Tracking</a></li>
				</ul>
				</li>
				<?php }
				if ((isset($Payment_gateway) && is_array($Payment_gateway)) && in_array('0', $Payment_gateway) || $allPrev == '1'){ ?>
				<li><a href="admin/paygateway/display_gateway" <?php if($currentUrl=='paygateway'){ echo 'class="active"';} ?>><span class="nav_icon shopping_cart_2"></span> Payment Gateway</a></li>
				<?php 
				}if ((isset($Language) && is_array($Language)) && in_array('0', $Language) || $allPrev == '1'){ ?>
				 
                <li><a href="admin/multilanguage" <?php if($currentUrl=='multilanguage'){ echo 'class="active"';} ?>><span class="nav_icon cog_3"></span> Manage Language</a></li>
				
				<?php } if ((isset($Slider) && is_array($Slider)) && in_array('0', $Slider) || $allPrev == '1'){ ?>
                <li><a href="#" <?php if($currentUrl=='slider' || $currentUrl=='comments'){ echo 'class="active"';} ?>><span class="nav_icon folder"></span> Slider<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='slider' || $currentUrl=='comments'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					<li><a href="admin/slider/display_slider_list" <?php if($currentPage=='display_slider_list'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Slider List</a></li>
					<li><a href="admin/slider/add_slider_form" <?php if($currentPage=='add_slider_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Add New Slider</a></li>
				</ul>
				</li>
				<? } if ((isset($Prefooter) && is_array($Prefooter)) && in_array('0', $Prefooter) || $allPrev == '1'){ ?>
				
				<li><a href="#" <?php if($currentUrl=='prefooter' || $currentUrl=='comments'){ echo 'class="active"';} ?>><span class="nav_icon folder"></span>Prefooter<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='prefooter' || $currentUrl=='comments'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					<li><a href="admin/prefooter/display_prefooter_list" <?php if($currentPage=='display_prefooter_list'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Prefooter List</a></li>
				</ul>
				</li>
				<? } if ((isset($Backup) && is_array($Backup)) && in_array('0', $Backup) || $allPrev == '1'){ ?>
				
				<li><a href="#" <?php if($currentUrl=='dropbox'){ echo 'class="active"';} ?>><span class="nav_icon folder"></span>Backup<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='dropbox'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					<li><a href="admin/backup/dbBackup" <?php if($currentPage=='add_prefooter_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Database Backup</a></li>
					
				</ul>
				</li>
				
				 <?php  }if ((isset($Review) && is_array($Review)) && in_array('0', $Review) || $allPrev == '1'){ ?>
            
            	<li><a href="admin/review/display_review_list" <?php if($currentUrl=='testimonials' || $this->uri->segment(1,0)=='testimonials-review'){ echo 'class="active"';} ?>><span class="nav_icon folder"></span> Review <span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='testimonials' || $this->uri->segment(1,0)=='testimonials-review'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
               
					<li><a href="admin/review/display_review_list" <?php if($currentPage=='display_testimonials_list'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Review List </a></li>
                  
				</ul>
				</li> 
                <?php } if ((isset($Currency) && is_array($Currency)) && in_array('0', $Currency) || $allPrev == '1'){ ?>
				<li><a href="admin/currency/display_currency_list" <?php if($currentUrl=='currency'){ echo 'class="active"';} ?>><span class="nav_icon globe"></span> Currency<span class="up_down_arrow">&nbsp;</span></a>
				<ul class="acitem" <?php if($currentUrl=='currency'){ echo 'style="display: block;"';}else{ echo 'style="display: none;"';} ?>>
					<li><a href="admin/currency/display_currency_list" <?php if($currentPage=='display_currency_list'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>currency List</a></li>
                    <?php if ($allPrev == '1' || in_array('1', $currency)){?>
                    <li><a href="admin/currency/add_currency_form" <?php if($currentPage=='add_currency_form'){ echo 'class="active"';} ?>><span class="list-icon">&nbsp;</span>Add currency</a></li>
                    <?php }?>
				</ul>
				</li>
				
				
				
				<?php }if ((isset($Contact_Us) && is_array($Contact_Us)) && in_array('0', $Contact_Us) || $allPrev == '1'){ ?>
				<li><a href="admin/contact_us/display_contactus" ><span class="nav_icon globe"></span> Contact Us</a></li>
				
				<?php } ?>
				
				 
				
				
				
				
				
				
				
				
				
				</ul>
				
				
				
			
		</div>
	</div>
</div>


