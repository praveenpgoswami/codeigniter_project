<?php
$this->load->view('admin/templates/header.php'); ?>
<style type="text/css">.widget_content p{padding: 0px;}</style>
<div id="content">
		<div class="grid_container">
			<div class="grid_12">
				<div class="widget_wrap">
					<div class="widget_top">
						<span class="h_icon list"></span>
						<h6>View Pet Sitter</h6>
					</div>
					<div class="widget_content">
					<?php
						#echo '<pre>';	print_r($data);echo '</pre>';
						$attributes = array('class' => 'form_container left_label');
						echo form_open('admin',$attributes);	?>
					<div id="tab1">
						<ul>
							<li>
								<div class="form_grid_12">
									<label class="field_title">Images : </label>
									<div class="form_input">
									<ul>
										<?php $profile_pictures = ($data[0]['full_name']) ? unserialize($data[0]['profile_pictures']) : '';
										foreach ($profile_pictures as $key => $img) {
											# get profile pictures...
											echo '<li><img src="uploads/pet_owner/'.$img.'" alt="" heght="50" width="50"/></li>';
										}
										?>
									</ul>
									</div>
								</div>
							</li>

 							<li>
								<div class="form_grid_12">
									<label class="field_title">FIRST NAME : </label>
									<div class="form_input"><?php echo ($data[0]['full_name']) ? $data[0]['full_name'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Mobile Number : </label>
									<div class="form_input"><?php echo ($data[0]['mobile_number']) ? $data[0]['mobile_number'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Role : </label>
									<div class="form_input"><?php echo ($data[0]['user_role']) ? $data[0]['user_role'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Email Address : </label>
									<div class="form_input"><?php echo ($data[0]['email']) ? $data[0]['email'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Suburb/Postcode : </label>
									<div class="form_input"><?php echo ($data[0]['s_suburb']) ? $data[0]['s_suburb'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">I Am : </label>
									<div class="form_input"><?php echo ($data[0]['s_gender']) ? $data[0]['s_gender'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Aged : </label>
									<div class="form_input"><?php echo ($data[0]['s_age']) ? $data[0]['s_age'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Occupation : </label>
									<div class="form_input"><?php echo ($data[0]['s_working_status']) ? $data[0]['s_working_status'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Smoking Status : </label>
									<div class="form_input"><?php echo ($data[0]['s_smoking_status']) ? $data[0]['s_smoking_status'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Sexuality : </label>
									<div class="form_input"><?php echo ($data[0]['s_sexuality']) ? $data[0]['s_sexuality'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Experience Level : </label>
									<?php if (array_key_exists('s_experience', $sitter_registration_fields)) :?>
										<div class="form_input"><?php echo ($data[0]['s_experience']) ? $sitter_registration_fields['s_experience'][$data[0]['s_experience']] : ''; ?></div>
									<?php endif; ?>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Comfortable with : </label>
									<div class="form_input"><?php echo ($data[0]['s_comfortable_with']) ? ucfirst($data[0]['s_comfortable_with']) : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Prefer looking pets : </label>
									<?php $prefer_arr = ($data[0]['s_prefer_pet']) ? unserialize($data[0]['s_prefer_pet']) : ''; #print_r($prefer_arr); ?>
									<?php if (array_key_exists('s_prefer_pet', $sitter_registration_fields)) :?>
										<div class="form_input">
										<?php
											foreach ($prefer_arr as $key => $value) { $key++;
												echo '<p>'.$key.'. '.$sitter_registration_fields['s_prefer_pet'][$value].'</p>';
											}
										?>
										</div>
									<?php endif; ?>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Pet status : </label>
										<?php if (array_key_exists('s_pet_status', $sitter_registration_fields)) :?>
										<div class="form_input"><?php echo ($data[0]['s_pet_status']) ? $sitter_registration_fields['s_pet_status'][$data[0]['s_pet_status']] : ''; ?></div>
									<?php endif; ?>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">I am happy to pet sit in : </label>
									<?php if (array_key_exists('s_location', $sitter_registration_fields)) :?>
										<div class="form_input"><?php echo ($data[0]['s_location']) ? $sitter_registration_fields['s_location'][$data[0]['s_location']] : ''; ?></div>
									<?php endif; ?>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">I will pet-sit : </label>
									<?php $charge = ($data[0]['s_charges']) ? unserialize($data[0]['s_charges']) : '';?>
									<?php if (array_key_exists('s_charges', $sitter_registration_fields)) :?>
										<div class="form_input">
										<?php
											foreach ($charge as $key => $value) { $key++;
												if($value == 1){
														$price = $data[0]['s_owners_house_rate'];
													}else{
														$price = $data[0]['s_rown_premises_rate'];
													}
												echo '<p>'.$key.'. '.$sitter_registration_fields['s_charges'][$key].' <strong>$'.$price.'</strong>/day</p>';
											}
										?>
										</div>
									<?php endif; ?>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">When : </label>
									<?php $length_of_time = ($data[0]['s_length_of_time']) ? unserialize($data[0]['s_length_of_time']) : '';?>
									<?php if (array_key_exists('s_length_of_time', $sitter_registration_fields)) :?>
										<div class="form_input">
										<?php
											foreach ($length_of_time as $key => $value) { $key++;
												echo '<p>'.$key.'. '.$sitter_registration_fields['s_length_of_time'][$key].'</p>';
											}
										?>
										</div>
									<?php endif; ?>

								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Insurance : </label>
									<div class="form_input"><?php echo ($data[0]['s_insurance']) ? $data[0]['s_insurance'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Something more about me : </label>
									<div class="form_input"><?php echo ($data[0]['s_about_me']) ? $data[0]['s_about_me'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Status : </label>
									<div class="form_input"><?php echo ($data[0]['status']) ? $data[0]['status'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<div class="form_input">
									<a href="admin/users/display_pet_sitter_list" class="tipLeft" title="Go to users list"><span class="badge_style b_done">Back</span></a>
								</div>
							</div>
							</li>

						</ul>
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