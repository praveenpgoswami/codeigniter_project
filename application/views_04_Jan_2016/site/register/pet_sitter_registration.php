<?php $this->load->view('site/templates/header'); ?>
<link rel="stylesheet" type="text/css" href="css/site/register.css">
<style>
.chack { margin-top:0px !important;}
</style>
<!---Register-->
<div class="dashboard yourlisting dash-home bgcolor site-register-section">
  <div class="main main-box">
    <div class="container">
      <div class="col-md-12">
        <h1 class="pet-title"> Pet sitter registration</h1>
        <h2> Passionate about pet care?  Create a free pet-sitter profile</h2>
        <div class="tag-line1">Register as a pet sitter and connect with pet owners in your area.</div>
        <div class="section-how-it-work">
          <h3>How does it work?</h3>
          <p>Once you register as a pet sitter here you can search for pet owners in your area and use stayrove‘s secure messaging service to contact suitable pet-owners.</p>
          <p>Pet owners can search and contact you directly through our messaging service. You can choose to log in to see these messages and replies or receive these notifications by email (default).</p>
        </div>
        <div class="section-Benefits">
        <h3>Benefits of being a stayrove sitter:</h3>
        <ul>
          <li>Take the hassle out of searching.</li>
          <li>Features to help find the best match of pet and pet-sitter.</li>
          <li>Easy secure platform for messaging.</li>
          <li>Easy notifications you when requests come up in your area.</li>
        </ul>
        </div>
    <?php $attributes = array('class' => 'register-pet-sitter', 'id' => 'register-pet-sitter');
  #echo form_open('/site/register/pet_sitter_registration', $attributes);?>
    <form name="register-pet-sitter" id="register-pet-sitter" class="form-horizontal" method="post" action="site/register/pet_sitter_registration" enctype="multipart/form-data">
    <?php $success = $this->messages->get("success");
      if(isset($success[0])){ ?>
        <div class="alert alert-success"><?php echo $success[0]; ?></div>
      <?php } ?>
        <div class="error_register_pet_sitter"></div>
        <div class="top-box">
          <h2>ABOUT ME</h2>

          <div class="form-group required">
            <label class="control-label">I Am:</label>
            <div class="col-sm-8">
              <select name="s_gender" id="s_gender" class="gends">
              <option value="">--- Choose gender ---</option>
                <?php
                  $s_gender = set_value('s_gender');
                  if (array_key_exists('s_gender', $sitter_registration_fields)) :
                  foreach ($sitter_registration_fields['s_gender'] as $key => $value) : ?>
                    <option value="<?php echo $key; ?>" <?php echo ($key == $s_gender) ? set_select('s_gender', $s_gender) : ''; ?>><?php echo $value; ?></option>
                  <?php endforeach; endif; ?>
              </select>
              <div class="error-msg">
              <?php echo form_error('s_gender', '<label class="error">', '</label>'); ?>
              </div>
            </div>
          </div>

          <div class="form-group required">
            <label class="control-label">Aged:</label>
            <div class="col-sm-8">
            <input type="number" min="0" name="s_age" id="s_age" value="<?php echo set_value('s_age'); ?>" placeholder="Enter your age" style="width:22%;">
            <div class="error-msg">
              <?php echo form_error('s_age', '<label class="error">', '</label>'); ?>
            </div>
            </div>
          </div>

          <div class="form-group">
            <label class="control-label">My occupation</label>
            <div class="col-sm-8">
               <select name="s_working_status" id="s_working_status" class="gends">
                <option value="">--- Choose working status ---</option>
                <?php
                  if (array_key_exists('s_working_status', $sitter_registration_fields)) :
                  foreach ($sitter_registration_fields['s_working_status'] as $key => $value) : ?>
                    <option value="<?php echo $key; ?>" <?php echo ($key == $s_working_status) ? 'selected': ''; ?>><?php echo $value; ?></option>
                  <?php endforeach; endif; ?>
              </select>
            </div>
          </div>


          <div class="form-group required">
            <label class="control-label">I'm a:</label>
            <div class="col-sm-8">
              <select name="s_smoking_status" id="s_smoking_status" class="gends">
                <option value="">--- Smoking status ---</option>
                <?php
                  $s_smoking_status = set_value('s_smoking_status');
                  if (array_key_exists('s_smoking_status', $sitter_registration_fields)) :
                  foreach ($sitter_registration_fields['s_smoking_status'] as $key => $value) : ?>
                    <option value="<?php echo $key; ?>" <?php echo ($key == $s_smoking_status) ? set_select('s_smoking_status', $s_smoking_status) : ''; ?>><?php echo $value; ?></option>
                  <?php endforeach; endif; ?>
              </select>
              <div class="error-msg">
              <?php echo form_error('s_smoking_status', '<label class="error">', '</label>'); ?>
              </div>
            </div>
          </div>

          <div class="form-group">
            <label class="control-label">My sexuality:</label>
              <div class="col-sm-8">
                <select name="s_sexuality" id="s_sexuality" class="gends">
                  <option value="">--- Choose sexuality ---</option>
                  <?php
                  if (array_key_exists('s_sexuality', $sitter_registration_fields)) :
                  foreach ($sitter_registration_fields['s_sexuality'] as $key => $value) : ?>
                    <option value="<?php echo $key; ?>" <?php echo ($key == $s_sexuality) ? 'selected' : ''; ?>><?php echo $value; ?></option>
                  <?php endforeach; endif; ?>
                </select>
            </div>
          </div>
          <div class="crl"></div>
        </div>

        <div class="top-box">
          <h2>MY pet-sitting profile</h2>
         <div class="form-group required">
            <label class="control-label">I have:</label>
            <div class="col-sm-9">
              <select name="s_experience" id="s_experience" class="gends">
                <option value="">--- Choose experience level ---</option>
               <?php
                  $s_experience = set_value('s_experience');
                  if (array_key_exists('s_experience', $sitter_registration_fields)) :
                  foreach ($sitter_registration_fields['s_experience'] as $key => $value) : ?>
                    <option value="<?php echo $key; ?>" <?php echo ($key == $s_experience) ? set_select('s_experience', $s_experience) : ''; ?>><?php echo $value; ?></option>
                  <?php endforeach; endif; ?>
              </select>
              <div class="error-msg">
              <?php echo form_error('s_experience', '<label class="error">', '</label>'); ?>
              </div>
              <span class="help-block"> More detail can be entered in your profile comments at the bottom of this form. stayrove is working on new functionality to verify qualifications or professional experience, thereby allowing your experience status to be displayed prominently on your profile giving pet owners extra piece-of-mind and improving your appeal.</span>
            </div>
          </div>

          <div class="form-group required">
            <label class="control-label">I am most comfortable with:</label>
            <div class="col-sm-8">
              <label class="radio-inline">
                <input name="s_comfortable_with" value="dogs" type="radio" class="chack" <?php echo ($s_comfortable_with == 'dogs') ? 'checked' : '';?>> Dogs
              </label>
              <label class="radio-inline">
                <input type="radio" value="cats" name="s_comfortable_with" class="chack" <?php echo ($s_comfortable_with == 'cats') ? 'checked' : '';?>> Cats
              </label>
              <label class="radio-inline">
                <input type="radio" value="others" name="s_comfortable_with" class="chack" id="other_comfortable_with" <?php echo ($s_comfortable_with == 'others') ? 'checked' : '';?>> Other
                <input type="text" name="s_other_comfortable_with" id="s_other_comfortable_with"/>
              </label>
              <div class="error-msg">
              <?php echo form_error('s_comfortable_with', '<label class="error">', '</label>'); ?>
              </div>
            </div>
          </div>

          <div class="form-group required">
            <label class="control-label">I prefer looking after pets who are:</label>
            <div class="col-sm-8">
              <label class="radio-box"> <input type="checkbox" value="1" name="s_prefer_pet[]" class="chack checkbox-empty" <?php echo (in_array('1',$s_prefer_pet)) ? 'checked' : '';?>>   Extremely active or need regular walks or entertainment  </label>
              <label class="radio-box"> <input type="checkbox" value="2" name="s_prefer_pet[]" class="chack checkbox-empty" <?php echo (in_array('2',$s_prefer_pet)) ? 'checked' : '';?>>   Moderately active </label>
              <label class="radio-box"> <input type="checkbox" value="3" name="s_prefer_pet[]" class="chack checkbox-empty" <?php echo (in_array('3',$s_prefer_pet)) ? 'checked' : '';?>>   Sedentary or indoors</label>
              <div class="error-msg">
              <?php echo form_error('s_prefer_pet[]', '<label class="error">', '</label>'); ?>
              </div>
            </div>
          </div>

          <div class="form-group ">
            <label class="control-label">I have:</label>
            <div class="col-sm-8">
               <select name="s_pet_status" id="s_pet_status" class="gends">
                <option value="">--- Your pet status ---</option>
                <?php
                  if (array_key_exists('s_pet_status', $sitter_registration_fields)) :
                  foreach ($sitter_registration_fields['s_pet_status'] as $key => $value) : ?>
                    <option value="<?php echo $key; ?>" <?php echo ($key == $s_pet_status) ? 'selected' : ''; ?>><?php echo $value; ?></option>
                  <?php endforeach; endif; ?>
              </select>
            </div>
          </div>
          <div class="crl"></div>
        </div>

        <div class="top-box">
          <h2>Where I'm available to pet sit</h2>

        <div class="form-group required">
          <label class="control-label">Suburb or Postcode:</label>
            <div class="col-sm-8">
              <input id="s_suburb" type="text" name="s_suburb" value="<?php echo set_value('s_suburb'); ?>" placeholder="Enter your postcode or suburb">
              <div class="error-msg">
              <?php echo form_error('s_suburb', '<label class="error">', '</label>'); ?>
              </div>
            </div>
        </div>

          <div class="form-group required">
          <label class="control-label">I am happy to pet sit in:</label>
            <div class="col-sm-8">
              <select name="s_location" id="s_location" class="gends">
                <option value="">--- Choose location ---</option>
              <?php
                  $s_location = set_value('s_location');
                  if (array_key_exists('s_location', $sitter_registration_fields)) :
                  foreach ($sitter_registration_fields['s_location'] as $key => $value) : ?>
                    <option value="<?php echo $key; ?>" <?php echo ($key == $s_location) ? set_select('s_location', $s_location) : ''; ?>><?php echo $value; ?></option>
                  <?php endforeach; endif; ?>
              </select>
              <div class="error-msg">
              <?php echo form_error('s_location', '<label class="error">', '</label>'); ?>
              </div>
              <span class="help-block">   If selecting ‘other areas’ or wishing to add detail or clarify available locations please enter details here<br /></span>
              <textarea id="s_other_location" name="s_other_location" placeholder="Enter more information about your available locations"></textarea>
            </div>
          </div>

				<div class="form-group required">
					<label class="control-label"><strong>My charges:</strong><br/> I will pet-sit:</label>
						<div class="col-sm-8">
  						<label class="radio-box">
                <input type="checkbox" value="1" name="s_charges[]" class="chack checkbox-empty" id="s_charges_one" <?php echo (in_array('1',$s_charges)) ? 'checked' : '';?>>  In the pet owners house, at a rate of
                <input type="number" min="0" name="s_owners_house_rate" id="s_owners_house_rate" placeholder="(enter your rate)" disabled="disabled" value="<?php echo set_value('s_owners_house_rate'); ?>" /> /day
              </label>

  						<label class="radio-box">
                <input type="checkbox" value="2" name="s_charges[]" class="chack checkbox-empty" id="s_charges_two" <?php echo (in_array('2',$s_charges)) ? 'checked' : '';?>>    In my own premises, at a rate of
                <input type="number" min="0" name="s_rown_premises_rate" id="s_rown_premises_rate" placeholder="(enter your rate including travel)" disabled="disabled" value="<?php echo set_value('s_owners_house_rate'); ?>"> /day
              </label>

               <div class="error-msg"><?php echo form_error('s_charges[]', '<label class="error">', '</label>'); ?></div>
              <span class="help-block"> If choosing this option I understand that the pet owner may elect to visit prior to selecting me in order to ensure the location is secure and suitably set up for their pet, and I agree to this condition.</span>
						</div>
				</div>
				<div class="crl"></div>
				</div>

        <div class="top-box">
          <h2>When I am available to pet sit</h2>

				<div class="form-group required">
				<label class="control-label">For how long:</label>
					<div class="col-sm-8">
					  <input type="checkbox" value="1" name="s_length_of_time[]" class="chack checkbox-empty" <?php echo (in_array('short_term',$s_length_of_time)) ? 'checked' : '';?>>&nbsp; <label>Short term (2-3 days or less)</label>&nbsp;&nbsp;&nbsp;
						<input type="checkbox" value="2" name="s_length_of_time[]" class="chack checkbox-empty" <?php echo (in_array('medium_term',$s_length_of_time)) ? 'checked' : '';?>>&nbsp;<label>Medium term</label>&nbsp;&nbsp;&nbsp;
						<input type="checkbox" value="3" name="s_length_of_time[]" class="chack checkbox-empty" <?php echo (in_array('longer_term',$s_length_of_time)) ? 'checked' : '';?>> &nbsp;<label>Longer term</label>
            <div class="error-msg">
              <?php echo form_error('s_length_of_time[]', '<label class="error">', '</label>'); ?>
					   </div>
					</div>
				</div>

					<div class="form-group">
						<label class="control-label">Insurance:</label>
						<div class="col-sm-9">
							<div class="chack-full"> <input type="checkbox" value="Yes" name="s_insurance" id="s_insurance" class="chack" <?php echo ($s_insurance == 'yes') ? 'checked' : '';?>>
							I am insured for pet sitting, with a current certificate of cover available for the pet owner to view if they choose.
							<span class="help-block">  An image of this can be uploaded to your photos section. stayrove is working on new functionality to verify insurance cover, thereby allowing your insurance status to be displayed prominently on your profile giving pet owners extra piece-of-mind and improving your appeal.</span>  </div>
						</div>
					</div>

						<div class="form-group required">
						<label class="control-label"> Something more about me</label>
							<div class="col-sm-8">
								<textarea name="s_about_me" id="s_about_me" placeholder="Enter a brief summary that you’d like displayed on your profile" rows="10" cols="45"><?php echo set_value('s_about_me'); ?></textarea>
								<div class="error-msg">
								<?php echo form_error('s_about_me', '<label class="error">', '</label>'); ?>
                </div>
								<span class="help-block">This will display on your profile page and is the first impression you give. Keep it short, relevant and interesting.</span>
							</div>
						</div>
            <div class="crl"></div>
          </div>


          <div class="top-box">
            <h2>MY ACCOUNT</h2>


            <div class="form-group required">
              <label class="control-label">Email</label>
              <div class="col-sm-8">
                <input id="s_email" type="email" name="s_email" value="<?php echo set_value('s_email'); ?>" placeholder="Enter Email Address">
                <div class="error-msg">
                <?php echo form_error( 's_email', '<label class="error">', '</label>'); ?>
                </div>
                <span class="help-block">   (Kept private - used for login access)</span>
              </div>
            </div>

            <div class="form-group required">
              <label class="control-label">Password</label>
              <div class="col-sm-8">
                <input id="s_password" type="password" name="s_password" value="<?php echo set_value('s_password'); ?>" placeholder="Enter Password">
                <div class="error-msg">
                <?php echo form_error( 's_password', '<label class="error">', '</label>'); ?>
                </div>
              </div>
            </div>

            <div class="form-group required">
              <label class="control-label">Profile name</label>
              <div class="col-sm-8">
                <input id="s_profile_name" type="text" name="s_profile_name" value="<?php echo set_value('s_profile_name'); ?>" placeholder="Name or nickname">
                <div class="error-msg">
                <?php echo form_error( 's_profile_name', '<label class="error">', '</label>'); ?>
                </div>
                <span class="help-block">  Your name or nickname enter a short title  eg. ‘Julius the poodle’ or ‘three cats and a bunny’</span>
              </div>
            </div>

            <div class="form-group required">
              <label class="control-label">Mobile number</label>
              <div class="col-sm-8">
                <div class="pniw-number-prefix">+61</div>
                <input id="s_mobile_number" type="number" min="0" name="s_mobile_number" value="<?php echo set_value('s_mobile_number'); ?>" placeholder="Mobile number "> <a href="javascript:void(0)" id="mobile_varification">Generate OTP</a> <span class="loader-img"><img src="<?php echo base_url()?>images/ajax-loader-small.gif"></span>
                <div class="error-msg">
                <?php echo form_error( 's_mobile_number', '<label class="error">', '</label>'); ?>
                </div>
              </div>
            </div>

            <div class="form-group required">
              <div class="col-md-2"></div>
              <div class="col-md-8">
                <div class="verification_div">
                  <p class="message message_sent"></p>
                  <input type="password" id="mobile_verification_code" name="mobile_verification_code" placeholder="Please enter the 6-digit code">
                   <div class="error-msg">
                    <?php echo form_error( 'mobile_verification_code', '<label class="error">', '</label>'); ?>
                   </div>
                    <span class="help-block">You must varified your mobile number to register.</span>
                </div>
              </div>
            </div>

             <div class="form-group required">
              <label class="control-label">Upload picture(s):</label>
                <div class="col-sm-8">
                  <?php
                  $data = array(
                          'name'  => 'uploadedimages[]',
                          'id'    => 'uploadedimages',
                          'class' => 'uploadImg',
                          'style' => 'width:50%',
                        );
                  echo form_upload($data,'','multiple'); ?>
                  <div class="error-msg">
                  <?php echo form_error('uploadedimages[]', '<label class="error">', '</label>'); ?>
                  </div>
                </div>
            </div>

            <div class="crl"></div>
          </div>

					<div class="col-md-12">
						<div class="btn-in">
							<button class="btn btn-primary blue" type="submit">Register as a sitter </button>
						</div>
					</div>
           <div class="help-block1">
                By registering as a sitter on stayrove.com you are agreeing to our<a href="#"> Terms</a> and <a href="#">Privacy Policy  </a>
        <!-- </form> -->
        <?php echo form_close(); ?></div>

        </div></div></div></div>

<!---DASHBOARD-->
<!---FOOTER-->
<script type="text/javascript" src="<?php echo base_url();?>js/vaidation.jquery.js"></script>
<script typ="text/javascript">
$(function(){
    $("#register-pet-sitter").validate({
      rules: {
        s_email: {
          required: true,
          email: true
        },
        s_gender: {
          required: true
        },
        s_age: {
          required: true,
          //number: true,
          maxlength: 3
        },
        s_smoking_status: {
          required: true
        },
        s_experience: {
          required: true
        },
        s_comfortable_with: {
          required: true
        },
        s_prefer_pet:{
          required: true
        },
        s_suburb: {
          required: true
        },
        s_location: {
          required: true
        },
        s_about_me: {
          required: true
        },
        s_password: {
          required: true
        },
        s_profile_name: {
          required: true
        },
        s_mobile_number: {
          required: true,
          maxlength: 10
        },
        s_other_comfortable_with:{
          required: true
        },
        s_other_location:{
          required: true
        },
        s_rown_premises_rate:{
          required: true,
          number: true
        },
        s_owners_house_rate:{
          required: true,
          number: true
        },
        uploadedimages:{
          required: true
        },
        mobile_verification_code:{
          required: true
        }
      },
      messages: {
        s_email: {
          required: "We need your email address to contact you",
          email: "Your email address must be in the format of name@domain.com"
        }
      },
      invalidHandler: function(event, validator) {
        var errors = validator.numberOfInvalids();
        if (errors) {
         $('.alert-success').hide()
         $('.error_register_pet_sitter').html('<div class="alert alert-danger"><strong>Error!</strong> Please fill in all required fields marked with an asterisk (*)</div>');
          var body = $("html, body");
          body.stop().animate({scrollTop:0}, '900', 'swing');
        } else {
          $('.error_register_pet_sitter').html('');
        }
      },
      // errorClass: 'error-msg',
      // errorElement: 'div',
      errorPlacement: function(error, element) {
        error.addClass("ui red pointing above ui label error").appendTo( element.closest('div').find('.error-msg') );
      },
      highlight: function(element, errorClass, validClass) {
        $(element).closest('div').find('.error-msg').addClass("error").removeClass("success");

      },
      unhighlight: function(element, errorClass, validClass){
        $(element).closest('div').find('.error-msg').removeClass("error").addClass("success");
      }
    });
  });

  $(document).ready(function() {
    $(':radio[name="s_comfortable_with"]').change(function() {
      var s_comfortable_with = $(this).val();
      if(s_comfortable_with == 'others'){
        $("#s_other_comfortable_with").show();
      }else{
        $("#s_other_comfortable_with").hide();
      }
    });

    $('#s_charges_one').click(function () {
      if($(this).is(':checked')){
        $("input#s_owners_house_rate").removeAttr('disabled');
      }else{
        $("input#s_owners_house_rate").attr('disabled','disabled');
        $("input#s_owners_house_rate").val('');
      }
    });

    $('#s_charges_two').click(function () {
      if($(this).is(':checked')){
        $("input#s_rown_premises_rate").removeAttr('disabled');
      }else{
        $("input#s_rown_premises_rate").attr('disabled','disabled');
        $("input#s_rown_premises_rate").val('');
      }
    });

    $( "#s_location" ).change(function() {
      var s_location = $(this).val();
      if(s_location == '3'){
        $("#s_other_location").show();
      }else{
        $("#s_other_location").hide();
      }

    });

    $("#mobile_varification").click(function(e) {
      e.preventDefault();
      var mobile_code = $('.pniw-number-prefix').text();
      var phone_number = $('#s_mobile_number').val();
      sendSMSVarification(mobile_code, phone_number);
    });

    $.validator.addMethod("specialChar", function(value, element) {
        return this.optional(element) || /([0-9a-zA-Z_.-\s])$/.test(value);
    }, "Please Fill Correct Value in Field.");

    $.validator.addMethod("uploadImg", function(value, element) {
        return this.optional(element) == '';
    }, "Please choose your profile picture.");

    $.validator.addMethod("checkbox-empty", function(value, element) {
        return this.optional(element) == '';
    }, "This field is required.");
  });

function sendSMSVarification(mobile_code, phone_number) {

    if (phone_number == '') {
      alert('Please Enter Mobile Number');
    } else if(isNaN(phone_number) || phone_number.length < 9) {
      alert('Mobile Number Should be 10 Digit Number');
    }else{
     $('.loader-img img').show()
     $.ajax({
        type: 'POST',
        url: '<?php echo base_url();?>site/register/mobile_number_verification',
        data: {
          phone_no: phone_number,
          mobile_code: mobile_code
        },
        success: function(response) {
          if (response == 'success') {
            $('.loader-img img').hide()
            alert('We Have Sent Verification Code to Your Mobile Please Enter Verification Code');
            $('.message_sent').html('<p>We sent a verification code to ' + phone_number + '</p>');
            $('.verification_div').show();
          }
        }
      });
    }
  }
</script>
<?php $this->load->view('site/templates/footer'); ?>