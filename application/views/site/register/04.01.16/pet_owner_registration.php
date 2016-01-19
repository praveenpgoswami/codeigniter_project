<?php $this->load->view('site/templates/header'); ?>
<!---Register-->
<link rel="stylesheet" type="text/css" href="css/site/register.css">
<div class="dashboard yourlisting dash-home bgcolor site-register-section">
  <div class="main main-box own">
    <div class="container">
      <div class="col-md-12">
        <h1 class="pet-title"> Pet Owner Registration </h1>
        <h2>It's free and easy to find a pet sitter</h2>
        <div class="tag-line1">With 1,000s of pet sitters on stayrove - we'll connect you with the perfect carer for your pet while you’re away.</div>

				<div class="section-how-it-work">
          <h3>How does it work?</h3>
          <p>Once you register as a pet-owner here you can search for pet sitters in your area and use stayrove‘s secure messaging service to contact suitable pet-sitters.</p>
          <p>Pet sitters can search and contact you directly through our messaging service. You can choose to log in to see these messages and replies or receive these notifications by email (default).</p>
        </div>

        <div class="section-Benefits">
        <h3>Benefits of registering with stayrove:</h3>
        <ul>
          <li>Take the hassle out of searching.</li>
          <li>Features to help find the best match of pet and pet-sitter.</li>
          <li>Easy secure platform for messaging.</li>
          <li>Easy notifications you when requests come up in your area.</li>
        </ul>
        </div>
        <form name="register-pet-owner" id="register-pet-owner" role="form" class="form-horizontal" method="post" action="site/register/pet_owner_registration" enctype="multipart/form-data">
          <div class="error_register_pet_owner"></div>
          <div class="top-box">
            <h2>THE BASICS</h2>

            <div class="form-group required">
              <label class="control-label" for="o_suburb">My Location:</label>
              <div class="col-sm-8">
                <input id="o_suburb" type="text" name="o_suburb" value="<?php echo set_value('o_suburb'); ?>" placeholder="Enter your postcode or suburb">
                <div class="error-msg">
                  <?php echo form_error( 'o_suburb', '<label class="error">', '</label>'); ?>
                </div>
              </div>
            </div>

            <div class="form-group required">
              <label class="control-label" for="o_from_date">Pet sitter needed from </label>
              <div class="col-sm-8">
                <input type="text" class="o_from_date" style="width:33%" name="o_from_date" value="<?php echo set_value('o_from_date'); ?>" data-date-format="yyyy/mm/dd" placeholder="yyyy/mm/dd"/> To
                <input type="text" class="o_to_date" style="width:33%" name="o_to_date" value="<?php echo set_value('o_to_date'); ?>" data-date-format="yyyy/mm/dd" placeholder="yyyy/mm/dd"/>
                <div class="error-msg">
                <?php echo form_error( 'o_from_date', '<label class="error">', '</label>'); ?>
                <?php echo form_error( 'o_to_date', '<label class="error">', '</label>'); ?>
                </div>
              </div>
            </div>

            <div class="form-group">
              <div class="col-sm-2">&nbsp;</div>
              <div class="col-sm-8">
                <label>
                  <div class="checkbox">
                    <input type="checkbox" value="yes" <?php echo ($o_help_wanted != '') ? 'checked' : ''; ?> name="o_help_wanted" class="chack"> On-going help wanted</div>
                </label>
                 <div class="padding-15 help-block"> Select this if you want to find a regular dog-walker or someone to help with a daily feeding routine for example.</div>
              </div>

            </div>


            <div class="form-group required">
              <label class="control-label col-md-2" for="o_preference">Preferences </label>
              <div class="col-sm-8">
                <select name="o_preference" id="o_preference" class="gends">
                  <option value="">--- Choose experience level ---</option>
                  <?php
                  $o_preference = set_value('o_preference');
                  if (array_key_exists('o_preference', $owner_registration_fields)) :
                  foreach ($owner_registration_fields['o_preference'] as $key => $value) : ?>
                    <option value="<?php echo $key; ?>" <?php echo ($key == $o_preference) ? set_select('o_preference', $o_preference) : ''; ?>><?php echo $value; ?></option>
                  <?php endforeach; endif; ?>
                </select>
                <div class="error-msg">
                <?php echo form_error( 'o_preference', '<label class="error">', '</label>'); ?>
                </div>
              </div>
            </div>


            <div class="form-group">
              <div class="col-sm-2"></div>
              <div class="col-sm-8">
                <label>
                  <div class="checkbox top1">
                    <input type="checkbox" value="yes" name="o_insured" <?php echo ($o_insured != '') ? 'checked' : ''; ?> class="chack"> Insured pet-carers only
                  </div>
                </label>
              </div>
            </div>

            <div class="form-group required">
              <label class="control-label">I Am:</label>
              <div class="col-sm-8">
                <select name="o_gender" id="o_gender" class="gends">
                  <option value="">--- Choose gender ---</option>
                 <?php
                  $o_gender = set_value('o_gender');
                  if (array_key_exists('o_gender', $owner_registration_fields)) :
                  foreach ($owner_registration_fields['o_gender'] as $key => $value) : ?>
                    <option value="<?php echo $key; ?>" <?php echo ($key == $o_gender) ? set_select('o_gender', $o_gender) : ''; ?>><?php echo $value; ?></option>
                  <?php endforeach; endif; ?>
                </select>
                <div class="error-msg">
                <?php echo form_error( 'o_gender', '<label class="error">', '</label>'); ?>
                </div>
              </div>
            </div>

            <div class="form-group required">
              <label class="control-label">Arrangement:</label>
              <div class="col-sm-8">
                <select name="o_arrangement" id="o_arrangement" class="gends">
                  <option value="">--- Choose an arrangement ---</option>
                  <?php
                  $o_arrangement = set_value('o_arrangement');
                  if (array_key_exists('o_arrangement', $owner_registration_fields)) :
                  foreach ($owner_registration_fields['o_arrangement'] as $key => $value) : ?>
                    <option value="<?php echo $key; ?>" <?php echo ($key == $o_arrangement) ? set_select('o_arrangement', $o_arrangement) : ''; ?>><?php echo $value; ?></option>
                  <?php endforeach; endif; ?>
                </select>
                <div class="error-msg">
                <?php echo form_error( 'o_arrangement', '<label class="error">', '</label>'); ?>
                </div>
              </div>
            </div>

            <div class="form-group">
                <label class="control-label" for="o_smoking_status">If electing to have a live-in pet sitter please choose:</label>
              <div class="col-sm-8">
                <select name="o_smoking_status" id="o_smoking_status" class="gends select-box1">
                  <option value="">--- Choose smoking status preferences ---</option>
                  <?php
                  if (array_key_exists('o_smoking_status', $owner_registration_fields)) :
                  foreach ($owner_registration_fields['o_smoking_status'] as $key => $value) : ?>
                    <option value="<?php echo $key; ?>" <?php echo ($key == $o_smoking_status) ? 'selected' : ''; ?>><?php echo $value; ?></option>
                  <?php endforeach; endif; ?>
                </select>
              </div>
            </div>

            <div class="form-group required">
                <label class="control-label" for="o_amount">I am willing to pay enter a maximum amount you are willing to pay /day:</label>
                <div class="col-sm-8">
                <input type="number" min="0" name="o_amount" id="o_amount" value="<?php echo set_value('o_amount'); ?>" placeholder="Doller" />
                <div class="error-msg">
                <?php echo form_error( 'o_amount', '<label class="error">', '</label>'); ?>
                </div>
              </div>
              <span class="help-block">  </span>
            </div>
          </div>

          <div class="top-box">
            <h2>THE PETS</h2>
            <div class="form-group required">
              <label class="control-label">Number of pets</label>
              <div class="col-md-7">
                <select name="o_number_of_pets" id="o_number_of_pets" class="gends">
                  <option value="">--- Choose number ---</option>
                  <?php
                  $o_number_of_pets = set_value('o_number_of_pets');
                  if (array_key_exists('o_number_of_pets', $owner_registration_fields)) :
                  foreach ($owner_registration_fields['o_number_of_pets'] as $key => $value) : ?>
                    <option value="<?php echo $key; ?>" <?php echo ($key == $o_number_of_pets) ? set_select('o_number_of_pets', $o_number_of_pets) : ''; ?>><?php echo $value; ?></option>
                  <?php endforeach; endif; ?>
                </select>
                <div class="error-msg">
                <?php echo form_error( 'o_number_of_pets', '<label class="error">', '</label>'); ?>
                </div>
              </div>
            </div>

            <div class="form-group required">
              <label class="control-label">Pet types</label>
              <div class="col-md-7">
                <select name="o_pet_type" id="o_pet_type" class="gends">
                  <option value="">--- Choose a pet type ---</option>
                  <?php
                  $o_pet_type = set_value('o_pet_type');
                  if (array_key_exists('o_pet_type', $owner_registration_fields)) :
                  foreach ($owner_registration_fields['o_pet_type'] as $key => $value) : ?>
                    <option value="<?php echo $key; ?>" <?php echo ($key == $o_pet_type) ? set_select('o_pet_type', $o_pet_type) : ''; ?>><?php echo $value; ?></option>
                  <?php endforeach; endif; ?>
                </select>
                <div class="error-msg">
                <?php echo form_error( 'o_pet_type', '<label class="error">', '</label>'); ?>
                </div>
              </div>
            </div>

            <div class="form-group required">
              <label class="control-label">Level of daily attention</label>
              <div class="col-md-7">
                <select name="o_difficulty_level" id="o_difficulty_level" class="gends">
                  <option value="">--- Choose a difficulty level ---</option>
                  <?php
                  $o_difficulty_level = set_value('o_difficulty_level');
                  if (array_key_exists('o_difficulty_level', $owner_registration_fields)) :
                  foreach ($owner_registration_fields['o_difficulty_level'] as $key => $value) : ?>
                    <option value="<?php echo $key; ?>" <?php echo ($key == $o_difficulty_level) ? set_select('o_difficulty_level', $o_difficulty_level) : ''; ?>><?php echo $value; ?></option>
                  <?php endforeach; endif; ?>
                </select>
                <div class="error-msg">
                <?php echo form_error( 'o_difficulty_level', '<label class="error">', '</label>'); ?>
                </div>
              </div>
            </div>

            <div class="form-group required">
              <label class="control-label">More about my pets and their needs</label>
              <div class="col-md-7">
                <textarea name="o_about_pets" id="o_about_pets" placeholder="Click here to enter text" rows="10" cols="45"><?php echo set_value('o_about_pets'); ?></textarea>
                <div class="error-msg">
                <?php echo form_error( 'o_about_pets', '<label class="error">', '</label>'); ?>
                </div>
              </div>
            </div>
            <div class="col-sm-2"></div>
            <div class="col-sm-8"> <span class="help-block"><a href="#">Help me</a> - I don't know what to say...</span> </div>

            <div class="crl"></div>
          </div>

          <div class="top-box">
            <h2>MY ACCOUNT</h2>


            <div class="form-group required">
              <label class="control-label">Email</label>
              <div class="col-sm-8">
                <input id="o_email" type="email" name="o_email" value="<?php echo set_value('o_email'); ?>" placeholder="Enter Email Address">
                <div class="error-msg">
                <?php echo form_error( 'o_email', '<label class="error">', '</label>'); ?>
                </div>
                <span class="help-block">   (Kept private - used for login access)</span>
              </div>
            </div>

            <div class="form-group required">
              <label class="control-label">Password</label>
              <div class="col-sm-8">
                <input id="o_password" type="password" name="o_password" value="<?php echo set_value('o_password'); ?>" placeholder="Enter Password">
                <div class="error-msg">
                <?php echo form_error( 'o_password', '<label class="error">', '</label>'); ?>
                </div>
              </div>
            </div>

            <div class="form-group required">
              <label class="control-label">Profile name</label>
              <div class="col-sm-8">
                <input id="o_profile_name" type="text" name="o_profile_name" value="<?php echo set_value('o_profile_name'); ?>" placeholder="Name or nickname">
                <div class="error-msg">
                <?php echo form_error( 'o_profile_name', '<label class="error">', '</label>'); ?>
                </div>
                <span class="help-block">  Your name or nickname enter a short title  eg. ‘Julius the poodle’ or ‘three cats and a bunny’</span>
              </div>
            </div>

            <div class="form-group required">
              <label class="control-label">Mobile number</label>
              <div class="col-sm-8">
                <div class="pniw-number-prefix">+91</div>
                <input id="o_mobile_number" type="number" min="0" name="o_mobile_number" value="<?php echo set_value('o_mobile_number'); ?>" placeholder="Mobile number "> <a href="javascript:void(0)" id="mobile_varification">Generate OTP</a> <span class="loader-img"><img src="<?php echo base_url()?>images/ajax-loader-small.gif"></span>
                <div class="error-msg">
                <?php echo form_error( 'o_mobile_number', '<label class="error">', '</label>'); ?>
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
                    <?php echo form_error( 'o_mobile_number', '<label class="error">', '</label>'); ?>
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
              <input type="hidden" name="register_owner" value="register_owner" />
              <button class="btn btn-primary blue" type="submit">List My Pet </button>
            </div>
          </div>
          <div class="help-block1"> By registering as a sitter on stayrove.com you are agreeing to our<a href="#"> Terms</a> and <a href="#">Privacy Policy </a> </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!---DASHBOARD-->
<!---FOOTER-->
<?php $this->load->view('site/templates/footer'); ?>
<style>


</style>
<script type="text/javascript" src="<?php echo base_url();?>js/vaidation.jquery.js"></script>
<script typ="text/javascript">

$.getScript("<?php echo base_url();?>js/site/bootstrap-datepicker.js", function(){

var startDate = '<?php echo date('m/d/Y');?>';

var FromEndDate = new Date();

var ToEndDate = new Date();

ToEndDate.setDate(ToEndDate.getDate()+365);

$('.o_from_date').datepicker({
    weekStart: 1,

    startDate: '<?php echo date('m/d/Y');?>',

    dateFormat: 'yyyy/mm/dd',
    //endDate: FromEndDate,

    autoclose: true

})
    .on('changeDate', function(selected){

        startDate = new Date(selected.date.valueOf());

        startDate.setDate(startDate.getDate(new Date(selected.date.valueOf())));

        $('.o_to_date').datepicker('setStartDate', startDate);

    });
$('.o_to_date')
    .datepicker({

        weekStart: 1,

        startDate: startDate,

        endDate: ToEndDate,

        autoclose: true

    })
    .on('changeDate', function(selected){

        FromEndDate = new Date(selected.date.valueOf());

        FromEndDate.setDate(FromEndDate.getDate(new Date(selected.date.valueOf())));

        $('.o_from_date').datepicker('setEndDate', FromEndDate);

    });
});

//add register form validation
$(function(){
    $("#register-pet-owner").validate({
      rules: {
        o_email: {
          required: true,
          email: true
        },
        o_suburb: {
          required: true
        },
        o_from_date: {
          required: true
        },
        o_to_date: {
          required: true
        },
        o_preference: {
          required: true
        },
        o_gender: {
          required: true
        },
        o_arrangement: {
          required: true
        },
        o_amount: {
          required: true
        },
        o_number_of_pets: {
          required: true
        },
        o_pet_type: {
          required: true
        },
        o_difficulty_level: {
          required: true
        },
        o_password: {
          required: true
        },
        o_profile_name: {
          required: true
        },
        o_mobile_number: {
          required: true
        },
        o_about_pets:{
          required: true
        },
        uploadedimages:{
          required: true
        }
      },
      messages: {
        o_email: {
          required: "We need your email address to contact you",
          email: "Your email address must be in the format of name@domain.com"
        }
      },
      invalidHandler: function(event, validator) {
        var errors = validator.numberOfInvalids();
        if (errors) {
         $('.alert-success').hide()
         $('.error_register_pet_owner').html('<div class="alert alert-danger"><strong>Error!</strong> Please fill in all required fields marked with an asterisk (*)</div>');
          var body = $("html, body");
          body.stop().animate({scrollTop:0}, '900', 'swing');
        } else {
          $('.error_register_pet_owner').html('');
        }
      },
      errorPlacement: function(error, element) {
        error.addClass("ui red pointing above ui label error").appendTo( element.closest('div').find('.error-msg') );
      }
    });
  });

  $(document).ready(function(){
    $("#mobile_varification").click(function(e) {
      e.preventDefault();
      var mobile_code = $('.pniw-number-prefix').text();
      var phone_number = $('#o_mobile_number').val();
      sendSMSVarification(mobile_code, phone_number);
    });

    $.validator.addMethod("specialChar", function(value, element) {
        return this.optional(element) || /([0-9a-zA-Z_.-\s])$/.test(value);
    }, "Please Fill Correct Value in Field.");

    $.validator.addMethod("uploadImg", function(value, element) {
        return this.optional(element) == '';
    }, "Please choose your profile picture.");

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