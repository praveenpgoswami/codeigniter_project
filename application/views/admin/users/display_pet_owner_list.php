<?php
$this->load->view('admin/templates/header.php');
extract($privileges);
?>
<div id="content">
		<div class="grid_container">
			<?php
				$attributes = array('id' => 'display_form');
				echo form_open('admin/users/change_user_status_global',$attributes)
			?>
			<div class="grid_12">
				<div class="widget_wrap">
					<div class="widget_top">
						<span class="h_icon blocks_images"></span>
						<h6><?php echo $heading?></h6>
					</div>
					<div class="widget_content">
						<table class="display" id="userListTbl">
						<thead>
						<tr>
							<th class="center">
								<input name="checkbox_id[]" type="checkbox" value="on" class="checkall">
							</th>
							<th class="tip_top" title="Click to sort">
								 Full Name
							</th>
							<th class="tip_top" title="Click to sort">
								 User Type
							</th>
							<th class="tip_top" title="Click to sort">
								 Email
							</th>
 							<th class="tip_top" title="Click to sort">
								Created Date
							</th>
 							<th class="tip_top" title="Click to sort">
								Last Login
							</th>
							<th class="tip_top" title="Click to sort">
								Status
							</th>
							<th width="12%">
								 Action
							</th>
						</tr>
						</thead>
						<tbody>

					<?php if(!empty($data)): #print_r($data); die;
						foreach ($data as $key => $value) : ?>
								<tr>
									<td class="center tr_select ">
										<input name="checkbox_id[]" type="checkbox" value="<?php echo $value['id'];?>">
									</td>
									<td class="center" style="text-transform:capitalize;">
										<?php echo $value['full_name'];?>
									</td>
									<td class="center" style="text-transform:capitalize;">
										<?php echo str_replace("_"," ",$value['user_role']); ;?>
									</td>
									<td class="center">
										<?php echo $value['email'];?>
									</td>
									<td class="center"><?php echo $value['last_login_date'];?></td>
									<td class="center">
										 <?php echo $value['last_login_date'];?>
									</td>
									<td class="center">
									<?php	if ($allPrev == '1' || in_array('2', $Members)){
										$mode = ($value['status'] == 'Active')?'0':'1';
										if ($mode == '0'){ ?>
										<a title="Click to inactive" class="tip_top" href="javascript:confirm_status('admin/users/change_pet_owner_status/<?php echo $mode;?>/<?php echo $value["user_id"];?>');"><span class="badge_style b_done"><?php echo $value['status'];?></span></a>
										<?php	}else {	?>
											<a title="Click to active" class="tip_top" href="javascript:confirm_status('admin/users/change_pet_owner_status/<?php echo $mode;?>/<?php echo $value["user_id"];?>')"><span class="badge_style"><?php echo $value['status'];?></span></a>
										<?php	}
										}else {	?>
										<span class="badge_style b_done"><?php echo $value['status'];?></span>
										<?php }?>
										</td>
										<td class="center">
											<span><a class="action-icons c-suspend" href="admin/users/view_user/<?php echo $value["user_id"];?>" title="View">View</a></span>
										<?php if ($allPrev == '1' || in_array('3', $Members)){?>
											<span><a class="action-icons c-delete" href="javascript:confirm_delete('admin/users/delete_pet_owner/<?php echo $value["user_id"]; ?>')" title="Delete">Delete</a></span>
										<?php }?>
										</td>
								</tr>
								</tr>
							<?php endforeach; endif; ?>
						</tbody>
						<tfoot>
						<tr>
							<th class="center">
								<input name="checkbox_id[]" type="checkbox" value="on" class="checkall">
							</th>
							<th>
								 First Name
							</th>
							<th>
								 Last Name
							</th>
							<th>
								 Email
							</th>
 							<th>
								User Created Date
							</th>
 							<th>
								Last Login Date
							</th>
							<th>
								Status
							</th>
							<th>
								 Action
							</th>
						</tr>
						</tfoot>
						</table>
					</div>
				</div>
			</div>
			<input type="hidden" name="statusMode" id="statusMode"/>
			<input type="hidden" name="SubAdminEmail" id="SubAdminEmail"/>
		</form>

		</div>
		<span class="clear"></span>
	</div>
</div>
<?php
$this->load->view('admin/templates/footer.php');
?>