<?php
$this->load->view('admin/templates/header.php');
?>
<div id="content">
		<div class="grid_container">
			<div class="grid_12">
				<div class="widget_wrap">
					<div class="widget_top">
						<span class="h_icon list"></span>
						<h6>Add New Advert</h6>
					</div>
					<div class="widget_content">
					<?php
						$attributes = array('class' => 'form_container left_label', 'id' => 'addadvert_form', 'enctype' => 'multipart/form-data');
						echo form_open_multipart('admin/advert/insertEditadvert',$attributes)
					?>
	 						<ul>
	 							<li>
								<div class="form_grid_12">
									<label class="field_title" for="advert_name">Advert Name <span class="req">*</span></label>
									<div class="form_input">
										<input name="advert_name" id="advert_name" type="text" tabindex="1" class="required large tipTop" title="Please enter the advert name"/>
									</div>
								</div>
								</li>
								<li>
								<div class="form_grid_12">
									<label class="field_title" for="advert_title">Advert Title </label>
									<div class="form_input">
										<input name="advert_title" id="advert_title" type="text" tabindex="2" class="large tipTop" title="Please enter the advert title"/>
									</div>
								</div>
								</li>
								<li>
								<div class="form_grid_12">
									<label class="field_title" for="advert_link">Advert Link <span class="req">*</span></label>
									<div class="form_input">
										<input name="advert_link" id="advert_link" type="text" tabindex="2" class="required large tipTop" title="Please enter the advert link"/>
									</div>
								</div>
								</li>
                                <li>
								<div class="form_grid_12">
									<label class="field_title" for="advert_desc">Advert Description </label>
									<div class="form_input">
										<textarea name="advert_desc" id="advert_desc" class="large tipTop" title="Please enter the advert link"></textarea>
									</div>
								</div>
								</li>
								<li>
								<div class="form_grid_12">
									<label class="field_title" for="image">Advert Image<span class="req">*</span></label>
									<div class="form_input">
										<input name="image" id="image" type="file" tabindex="7" class="required large tipTop" title="Please select advert image"/>
									<br><span style="color:red;">Upload the Image Size 1349 X 484 or Above</span>
									</div>
								</div>
								</li>
								<li>
								<div class="form_grid_12">
									<label class="field_title" for="admin_name">Status <span class="req">*</span></label>
									<div class="form_input">
										<div class="active_inactive">
											<input type="checkbox" tabindex="8" name="status" checked="checked" id="active_inactive_active" class="active_inactive"/>
										</div>
									</div>
								</div>
								</li>
								<li>
								<div class="form_grid_12">
									<div class="form_input">
										<button type="submit" class="btn_small btn_blue" tabindex="9"><span>Submit</span></button>
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
<script>
$('#addadvert_form').validate();
</script>
<?php
$this->load->view('admin/templates/footer.php');
?>