<?php
$this->load->view('admin/templates/header.php'); ?>
<style type="text/css">.widget_content p{padding: 0px;}</style>
<div id="content">
		<div class="grid_container">
			<div class="grid_12">
				<div class="widget_wrap">
					<div class="widget_top">
						<span class="h_icon list"></span>
						<h6>View Pet Owner</h6>
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
									<div class="form_input"><?php echo ($data[0]['o_suburb']) ? $data[0]['o_suburb'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Pet sitter needed from : </label>
									<div class="form_input"><?php echo ($data[0]['o_from_date']) ? $data[0]['o_from_date'] : ''; ?> to <?php echo ($data[0]['o_to_date']) ? $data[0]['o_to_date'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Preferences : </label>
									<?php if (array_key_exists('o_preference', $owner_registration_fields)) :?>
										<div class="form_input"><?php echo ($data[0]['o_preference']) ? $owner_registration_fields['o_preference'][$data[0]['o_preference']] : ''; ?></div>
									<?php endif; ?>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">I Am : </label>
									<div class="form_input"><?php echo ($data[0]['o_gender']) ? $data[0]['o_gender'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Arrangement : </label>
									<?php if (array_key_exists('o_arrangement', $owner_registration_fields)) :?>
										<div class="form_input"><?php echo ($data[0]['o_arrangement']) ? $owner_registration_fields['o_arrangement'][$data[0]['o_arrangement']] : ''; ?></div>
									<?php endif; ?>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Smoking Status : </label>
									<?php if (array_key_exists('o_smoking_status', $owner_registration_fields)) :?>
										<div class="form_input"><?php echo ($data[0]['o_smoking_status']) ? $owner_registration_fields['o_smoking_status'][$data[0]['o_smoking_status']] : ''; ?></div>
									<?php endif; ?>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Willing to pay : </label>
									<div class="form_input"><?php echo ($data[0]['o_amount']) ? $data[0]['o_amount'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Number of pets : </label>
									<div class="form_input"><?php echo ($data[0]['o_number_of_pets']) ? $data[0]['o_number_of_pets'] : ''; ?></div>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Pet types : </label>
									<?php $pet_arr = ($data[0]['o_pet_type']) ? unserialize($data[0]['o_pet_type']) : ''; ?>
									<?php if (array_key_exists('o_pet_type', $owner_registration_fields)) :?>
										<div class="form_input">
										<?php
											foreach ($pet_arr as $key => $value) { $key++;
												echo '<p>'.$key.'. '.$owner_registration_fields['o_pet_type'][$value].'</p>';
											}
										?>
										</div>
									<?php endif; ?>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">Level of daily attention : </label>
									<?php if (array_key_exists('o_difficulty_level', $owner_registration_fields)) :?>
										<div class="form_input"><?php echo ($data[0]['o_difficulty_level']) ? $owner_registration_fields['o_difficulty_level'][$data[0]['o_difficulty_level']] : ''; ?></div>
									<?php endif; ?>
								</div>
							</li>

							<li>
								<div class="form_grid_12">
									<label class="field_title">About Pets : </label>
									<div class="form_input"><?php echo ($data[0]['o_about_pets']) ? $data[0]['o_about_pets'] : ''; ?></div>
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
									<a href="admin/users/display_pet_owner_list" class="tipLeft" title="Go to users list"><span class="badge_style b_done">Back</span></a>
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