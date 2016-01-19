<?php
$this->load->view('admin/templates/header.php');
?>
<div id="content">
		<div class="grid_container">
			<div class="grid_12">
				<div class="widget_wrap">
					<div class="widget_top">
						<span class="h_icon list"></span>
						<h6>Edit Advert</h6>
					</div>
					<div class="widget_content">
					<?php
						$attributes = array('class' => 'form_container left_label', 'id' => 'editadvert_form', 'enctype' => 'multipart/form-data');
						echo form_open_multipart('admin/advert/insertEditAdvert',$attributes)
					?>
	 						<ul>
	 							<li>
								<div class="form_grid_12">
									<label class="field_title" for="user_name">Advert Name </label>
									<div class="form_input">
										<input name="advert_name" style=" width:295px" id="advert_name" value="<?php echo $advert_details->row()->advert_name;?>" type="text" tabindex="1" class="required tipTop" title="Please enter the advert name"/>
									</div>
								</div>
								</li>
	 							<li>
								<div class="form_grid_12">
									<label class="field_title" for="full_name">Advert Title <span class="req">*</span></label>
									<div class="form_input">
										<input name="advert_title" style=" width:295px" id="advert_title" value="<?php echo $advert_details->row()->advert_title;?>" type="text" tabindex="1" class="required tipTop" title="Please enter the advert title"/>
									</div>
								</div>
								</li>
                                <li>
								<div class="form_grid_12">
									<label class="field_title" for="image">Advert Image<span class="req">*</span></label>
									<div class="form_input">
										<input name="image" id="image" type="file" tabindex="7" class="large tipTop" title="Please select advert image"/>
									</div>
									<div class="form_input"><img src="<?php echo base_url();?>images/advert/<?php echo $advert_details->row()->image;?>" width="100px"/><br>
									<span style="color:red;">Upload the Image Size 1349 X 484 or Above</span></div>

								</div>

								</li>
								<li>
								<div class="form_grid_12">
									<label class="field_title" for="advert_link">Advert Link <span class="req">*</span></label>
									<div class="form_input">
										<input name="advert_link" id="advert_link" type="text" value="<?php echo $advert_details->row()->advert_link;?>" tabindex="2" class="required large tipTop" title="Please enter the advert link"/>
									</div>
								</div>
								</li>
                                <li>
								<div class="form_grid_12">
									<label class="field_title" for="advert_desc">Advert Description <span class="req">*</span></label>
									<div class="form_input">
										<textarea name="advert_desc" id="advert_desc" class="required large tipTop" title="Please enter the advert link"><?php echo $advert_details->row()->advert_desc;?></textarea>
									</div>
								</div>
								</li>

								<li>
								<div class="form_grid_12">
									<label class="field_title" for="admin_name">Status <span class="req">*</span></label>
									<div class="form_input">
										<div class="active_inactive">
											<input type="checkbox" name="status" <?php if ($advert_details->row()->status == 'Active'){echo 'checked="checked"';}?> id="active_inactive_active" class="active_inactive"/>
										</div>
									</div>
								</div>
								<input type="hidden" name="advert_id" value="<?php echo $advert_details->row()->id;?>"/>
								</li>
								<li>
								<div class="form_grid_12">
									<div class="form_input">
										<button type="submit" class="btn_small btn_blue" tabindex="4"><span>Update</span></button>
									</div>
								</div>
								</li>
							</ul>
						</form>
					</div>
				</div>
			</div>
		</div>
		<span class="clear"></span>
	</div>
</div>
<?php
$this->load->view('admin/templates/footer.php');
?>