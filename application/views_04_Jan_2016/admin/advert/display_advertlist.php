<?php
$this->load->view('admin/templates/header.php');
extract($privileges);
?>
<div id="content">
		<div class="grid_container">
			<?php
				$attributes = array('id' => 'display_form');
				echo form_open('admin/advert/change_advert_status_global',$attributes)
			?>
			<div class="grid_12">
				<div class="widget_wrap">
					<div class="widget_top">
						<span class="h_icon blocks_images"></span>
						<h6><?php echo $heading?></h6>
						<div style="float: right;line-height:40px;padding:0px 10px;height:39px;">
						<?php if ($allPrev == '1' || in_array('2', $user)){?>
							<?php if($enable == 'off'){?><div class="btn_30_light" style="height: 29px;">
								<a href="admin/adminlogin/enable_advert" class="tipTop"><span class="icon accept_co"></span><span class="btn_link">Enable Advert</span></a>
							</div>
							<?php } else {?>
							<div class="btn_30_light" style="height: 29px;">
								<a href="admin/adminlogin/disable_advert" class="tipTop"><span class="icon delete_co"></span><span class="btn_link">Disable Advert</span></a>
							</div>
							<?php }?>
							<div class="btn_30_light" style="height: 29px;">
								<a href="javascript:void(0)" onclick="return checkBoxValidationAdmin('Active','<?php echo $subAdminMail; ?>');" class="tipTop" title="Select any checkbox and click here to active records"><span class="icon accept_co"></span><span class="btn_link">Active</span></a>
							</div>
							<div class="btn_30_light" style="height: 29px;">
								<a href="javascript:void(0)" onclick="return checkBoxValidationAdmin('Inactive','<?php echo $subAdminMail; ?>');" class="tipTop" title="Select any checkbox and click here to inactive records"><span class="icon delete_co"></span><span class="btn_link">Inactive</span></a>
							</div>
						<?php
						}
						if ($allPrev == '1' || in_array('3', $Slider)){
						?>
							<div class="btn_30_light" style="height: 29px;">
								<a href="javascript:void(0)" onclick="return checkBoxValidationAdmin('Delete','<?php echo $subAdminMail; ?>');" class="tipTop" title="Select any checkbox and click here to delete records"><span class="icon cross_co"></span><span class="btn_link">Delete</span></a>
							</div>
						<?php }?>
						</div>
					</div>
					<div class="widget_content">
						<table class="display" id="newsletter_tbl">
						<thead>
						<tr>
							<th class="center">
								<input name="checkbox_id[]" type="checkbox" value="on" class="checkall">
							</th>
							<th class="tip_top" title="Click to sort">
						    Advert Name							</th>
				     <th class="tip_top" title="Click to sort">Advert Link</th>

							<th>
								Advert Image
							</th>
							<th class="tip_top" title="Click to sort">
								Status
							</th>
							<th>
								 Action
							</th>
						</tr>
						</thead>
						<tbody>
						<?php
						if ($advertList->num_rows() > 0){
							foreach ($advertList->result() as $row){
						?>
						<tr>
							<td class="center tr_select ">
								<input name="checkbox_id[]" type="checkbox" value="<?php echo $row->id;?>">
							</td>
							<td class="center">
								<?php echo ucfirst($row->advert_name);?>
							</td>
							<td class="center">
								<?php echo $row->advert_link;?>
							</td>

							<td class="center">
							<div class="widget_thumb">
							<?php if ($row->image != ''){?>
								 <img class="rollovereff" width="40px" height="40px" src="<?php echo base_url();?>images/advert/<?php echo $row->image;?>" />
							<?php }else {?>
								 <img class="rollovereff" width="40px" height="40px" src="<?php echo base_url();?>images/users/user-thumb1.png" />
							<?php }?>
							</div>
							</td>

							<td class="center">
							<?php
							if ($allPrev == '1' || in_array('2', $Slider)){
								$mode = ($row->status == 'Active')?'0':'1';
								if ($mode == '0'){
							?>
								<a title="Click to inactive" class="tip_top" href="javascript:confirm_status('admin/advert/change_advert_status/<?php echo $mode;?>/<?php echo $row->id;?>');"><span class="badge_style b_done"><?php echo $row->status;?></span></a>
							<?php
								}else {
							?>
								<a title="Click to active" class="tip_top" href="javascript:confirm_status('admin/advert/change_advert_status/<?php echo $mode;?>/<?php echo $row->id;?>')"><span class="badge_style"><?php echo $row->status;?></span></a>
							<?php
								}
							}else {
							?>
							<span class="badge_style b_done"><?php echo $row->status;?></span>
							<?php }?>
							</td>
							<td class="center">
							<?php if ($allPrev == '1' || in_array('2', $Slider)){?>
								<span><a class="action-icons c-edit" href="admin/advert/edit_advert_form/<?php echo $row->id;?>" title="Edit">Edit</a></span>
							<?php }?>
								<span><a class="action-icons c-suspend" href="admin/advert/view_advert/<?php echo $row->id;?>" title="View">View</a></span>
							<?php if ($allPrev == '1' || in_array('3', $Slider)){?>
								<span><a class="action-icons c-delete" href="javascript:confirm_delete('admin/advert/delete_advert/<?php echo $row->id;?>')" title="Delete">Delete</a></span>
							<?php }?>
							</td>
						</tr>
						<?php
							}
						}
						?>
						</tbody>
						<tfoot>
						<tr>
							<th class="center">
								<input name="checkbox_id[]" type="checkbox" value="on" class="checkall">
							</th>
							<th>
						    Advert Name							</th>
				     <th>Advert Link</th>
							<th>
								Advert Image
							</th>
							<th class="tip_top" title="Click to sort">
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