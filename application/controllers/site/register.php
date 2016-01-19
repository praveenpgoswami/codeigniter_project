<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 *
 * Shop related functions
 * @author Teamtweaks
 *
 */
class Register extends MY_Controller {
	function __construct(){
    parent::__construct();
		$this->load->helper(array('cookie','date','form','email'));
		$this->load->library(array('encrypt','form_validation', 'messages'));
		$this->load->model('product_model','shop');
		$this->load->model('city_model');
		$this->load->model('user_model');
		$this->data['loginCheck'] = $this->checkLogin('U');
		$this->data['likedProducts'] = array();

    if ($this->data['loginCheck'] != ''){
      redirect(base_url());
    }
  }

  public function index(){
  		redirect(base_url());
      exit();
  }

	public function pet_owner_registration(){
		$this->data['heading'] = 'Pet owner registration';
		$this->data['pet_owner_registration'] = array();
    $this->load->library('form_validation');

    $this->data['owner_registration_fields'] = $this->config->item('pet_owner_registration_fields');
    $this->data['o_smoking_status'] = $this->input->post ( 'o_smoking_status' );
    $this->data['o_help_wanted'] = $this->input->post ( 'o_help_wanted' );
    $this->data['o_insured'] = $this->input->post ( 'o_insured' );
    $this->data['o_pet_type'] = $this->input->post ( 'o_pet_type' );
    $validate = array(
        array(
            'field' => 'o_suburb',
            'label' => 'Location',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 'o_from_date',
            'label' => 'From Date',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 'o_to_date',
            'label' => 'To Date',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 'o_email',
            'label' => 'Email Address',
            'rules' => 'trim|required|valid_email|callback_email_exists'
        ),
        array(
            'field' => 'o_password',
            'label' => 'Password',
            'rules' => 'trim|required|min_length[5]|max_length[32]'
        ),
        array(
            'field' => 'o_preference',
            'label' => 'Preference',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 'o_gender',
            'label' => 'Gender',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 'o_arrangement',
            'label' => 'Arrangement',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 'o_amount',
            'label' => 'Amount',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 'o_number_of_pets',
            'label' => 'Number Of Pets',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 'o_pet_type[]',
            'label' => 'Pet Type',
            'rules' => 'trim|required|xss_clean'
        ),
         array(
            'field' => 'o_about_pets',
            'label' => 'About Pets',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 'o_difficulty_level',
            'label' => 'Difficulty Level',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 'o_profile_name',
            'label' => 'Profile Name',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 'o_mobile_number',
            'label' => 'Mobile Number',
            'rules' => 'trim|required|xss_clean|callback_check_otp'
        ),
        array(
            'field' => 'mobile_verification_code',
            'label' => 'Verification Code',
            'rules' => 'trim|required|xss_clean|callback_check_otp_value'
        ),
        array(
            'field' => 'uploadedimages[]',
            'label' => 'Image',
            'rules' => 'callback_fileupload_check'
        )
    );
    $this->form_validation->set_rules($validate);

    if($this->form_validation->run() == FALSE) {
      $this->data['validation_error'] = '<div class="alert alert-danger"><strong>Error!</strong> Please fill in all required fields marked with an asterisk (*)</div>';
      $this->load->view('site/register/pet_owner_registration',$this->data);
    } else {
      //THE BASICS INFO
      $o_suburb = $this->input->post ( 'o_suburb' );

      $o_from_date = $this->input->post ( 'o_from_date' );
      $o_from_date = ($o_from_date) ? date("Y-m-d", strtotime($o_from_date)) : '';

      $o_to_date = $this->input->post ( 'o_from_date' );
      $o_to_date = ($o_to_date) ? date("Y-m-d", strtotime($o_to_date)) : '';
      #echo '290749'; die;
      $o_help_wanted = $this->input->post ( 'o_help_wanted' );
      $o_preference = $this->input->post ( 'o_preference' );
      $o_insured = $this->input->post ( 'o_insured' );
      $o_gender = $this->input->post ( 'o_gender' );
      $o_arrangement = $this->input->post ( 'o_arrangement' );
      $o_smoking_status = $this->input->post ( 'o_smoking_status' );
      $o_amount = $this->input->post ( 'o_amount' );

      //THE PETS INFO
      $o_number_of_pets = $this->input->post ( 'o_number_of_pets' );
      $o_pet_type = $this->input->post ( 'o_pet_type' ) ? serialize($this->input->post ('o_pet_type')) : '';
      $o_difficulty_level = $this->input->post ( 'o_difficulty_level' );
      $o_about_pets = $this->input->post ( 'o_about_pets' );

      //MY ACCOUNT INFO
      $o_email = $this->input->post ( 'o_email' );
      $o_password = $this->input->post ( 'o_password' );
      $o_profile_name = $this->input->post ( 'o_profile_name' );
      $o_mobile_number = $this->input->post ( 'o_mobile_number' );

      $mobile_verification_code = '';
      if($this->session->unset_userdata('VARIFICATION_CODE')){
        $mobile_verification_code = $this->session->unset_userdata('VARIFICATION_CODE');
      }
      //SAVE DATA
      $save_data = array(
                'mobile_number' => $o_mobile_number,
                'full_name' => $o_profile_name,
                'user_name' => $o_profile_name,
                'profile_name' => $o_profile_name,
                'user_role' => 'pet_owner',
                'mobile_verification_code' => $mobile_verification_code,
                'group' => 'User',
                'email' => $o_email,
                'password' => md5($o_password),
                'status' => 'Active'
              );

        $images = array();
        if(!empty($this->_uploaded)){
          foreach ($this->_uploaded as $key => $value) {
            $newImgName = '';
            $newImgName = $value['raw_name'].'-'.rand().time().$value['file_ext'];
            @rename('./uploads/pet_owner/'.$value['file_name'], './uploads/pet_owner/'.$newImgName);
            $images[] = $newImgName;
          }
        }
      $save_data['profile_pictures'] = serialize($images);

      $user_id = $this->user_model->save('fc_users',$save_data);

      //INSERT OTHER INFO IN user_pet_owner
      if(!empty($user_id )){
        $save_info = array(
                'user_id' => $user_id,
                'o_suburb' => $o_suburb,
                'o_from_date' => $o_from_date,
                'o_to_date' => $o_to_date,
                'o_help_wanted' => $o_help_wanted,
                'o_preference' => $o_preference,
                'o_insured' => $o_insured,
                'o_gender' => $o_gender,
                'o_arrangement' => $o_arrangement,
                'o_smoking_status' => $o_smoking_status,
                'o_amount' => $o_amount,
                'o_number_of_pets' => $o_number_of_pets,
                'o_pet_type' => $o_pet_type,
                'o_difficulty_level' => $o_difficulty_level,
                'o_about_pets' => $o_about_pets,
              );
        $user_info_id = $this->user_model->save('user_pet_owner',$save_info);
      }

      //send an enail to user after register
      $message  = "<h3>Your account has been created.</h3> <br />";

      $message .= "Thank you for registering with Intersil. Your account has been created, and a verification email has been sent to your registered email address. <br />";

      $message .= "Please click on the verification link included in the email to activate your account.<br />";

      $message .= "Your Email/Username : ".$o_email.'<br />';

      $message .= "Your Password : ".$o_password.'<br />';

      $message .= "Thanks<br />";

      $message .= "Team Stayrove";

      $email_values = array (
        'mail_type' => 'html',
        'from_mail_id' => 'praveen.puri@dotsquares.com',
        'mail_name' => 'Stayrove',
        'to_mail_id' => $o_email,
        'subject_message' => 'Stayrove Register',
        'body_messages' => trim($message)
      );
      $this->send_an_email($email_values);

      if($this->session->unset_userdata('VARIFICATION_CODE')){
        $this->session->unset_userdata('VARIFICATION_CODE');
      }
      $this->setErrorMessage('success','Successfully logged in as a pet-owner!');
      redirect(base_url());
    }
  }

  public function pet_sitter_registration(){

		$this->data['heading'] = 'Pet Sitter registration';
		$this->data['pet_sitter_registration'] = array();
		$this->load->library('form_validation');
    $this->data['sitter_registration_fields'] = $this->config->item('pet_sitter_registration_fields');

    $this->data['s_working_status'] = $this->input->post ( 's_working_status' );
    $this->data['s_prefer_pet'] = $this->input->post ( 's_prefer_pet' );
    $this->data['s_pet_status'] = $this->input->post ( 's_pet_status' );
    $this->data['s_insurance'] = $this->input->post ( 's_insurance' );
    $this->data['s_sexuality'] = $this->input->post ( 's_sexuality' );
    $this->data['s_comfortable_with'] = $this->input->post ( 's_comfortable_with' );
    $this->data['s_prefer_pet'] = $this->input->post ( 's_prefer_pet' );
    $this->data['s_pet_status'] = $this->input->post ( 's_pet_status' );
    $this->data['s_suburb'] = $this->input->post ( 's_suburb' );
    $this->data['s_charges'] = $this->input->post ( 's_charges' );
    $this->data['s_rown_premises_rate'] = $this->input->post ( 's_rown_premises_rate' );
    $this->data['s_length_of_time'] = $this->input->post ( 's_length_of_time' );
    $this->data['s_insurance'] = $this->input->post ( 's_insurance' );
    $this->data['s_about_me'] = $this->input->post ( 's_about_me' );

    $validate = array(
        array(
            'field' => 's_gender',
            'label' => 'Gender',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 's_age',
            'label' => 'Age',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 's_email',
            'label' => 'Email Address',
            'rules' => 'trim|required|valid_email|callback_email_exists'
        ),
        array(
            'field' => 's_password',
            'label' => 'Password',
            'rules' => 'trim|required|min_length[5]|max_length[32]'
        ),
        array(
            'field' => 's_age',
            'label' => 'Age',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 's_smoking_status',
            'label' => 'Smoking Status',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 's_experience',
            'label' => 'Experience',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 's_comfortable_with',
            'label' => 'Comfortable',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 's_prefer_pet[]',
            'label' => 'Prefer Pet',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 's_suburb',
            'label' => 'Suburb',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 's_location',
            'label' => 'Location',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 's_about_me',
            'label' => 'About Me',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 's_charges[]',
            'label' => 'My charges',
            'rules' => 'required'
        ),
        array(
            'field' => 's_length_of_time[]',
            'label' => 'Length of time',
            'rules' => 'required'
        ),
        array(
            'field' => 's_profile_name',
            'label' => 'Profile Name',
            'rules' => 'trim|required|xss_clean'
        ),
        array(
            'field' => 's_mobile_number',
            'label' => 'Mobile Number',
            'rules' => 'trim|required|xss_clean|check_otp'
        ),
        array(
            'field' => 'uploadedimages[]',
            'label' => 'Image',
            'rules' => 'callback_fileupload_check'
        ),
         array(
            'field' => 'mobile_verification_code',
            'label' => 'Verification Code',
            'rules' => 'trim|required|xss_clean|callback_check_otp_value'
        )
    );
    $this->form_validation->set_rules($validate);

    if($this->form_validation->run() == FALSE) {
      $this->data['validation_error'] = '<div class="alert alert-danger"><strong>Error!</strong> Please fill in all required fields marked with an asterisk (*)</div>';
      $this->load->view('site/register/pet_sitter_registration',$this->data);
    } else {
	    //ABOUT ME INFO
      $s_gender = $this->input->post ( 's_gender' );
			$s_age = $this->input->post ( 's_age' );
			$s_working_status = $this->input->post ( 's_working_status' );
			$s_smoking_status = $this->input->post ( 's_smoking_status' );
			$s_sexuality = $this->input->post ( 's_sexuality' );

      //MY pet-sitting profile INFO
      $s_experience = $this->input->post ( 's_experience' );
			$s_comfortable_with = $this->input->post ( 's_comfortable_with' );
			$s_prefer_pet = $this->input->post ( 's_prefer_pet' ) ? serialize($this->input->post ( 's_prefer_pet' )) : '';
			$s_pet_status = $this->input->post ( 's_pet_status' );

      //Where I'm available to pet sit INFO
      $s_suburb = $this->input->post ( 's_suburb' );
			$s_location = $this->input->post ( 's_location' );
			$s_charges = $this->input->post ( 's_charges' ) ? serialize($this->input->post ( 's_charges' )) : '';

      //When I am available to pet sit INFO
      $s_length_of_time = $this->input->post ( 's_length_of_time' ) ? serialize($this->input->post ( 's_length_of_time' )) : '';
			$s_insurance = $this->input->post ( 's_insurance' );
			$s_about_me = $this->input->post ( 's_about_me' );

      //MY ACCOUNT INFO
      $s_email = $this->input->post ( 's_email' );
			$s_password = $this->input->post ( 's_password' );
			$s_profile_name = $this->input->post ( 's_profile_name' );
			$s_mobile_number = $this->input->post ( 's_mobile_number' );
      $s_other_comfortable_with = $this->input->post ( 's_other_comfortable_with' );
      $s_other_location = $this->input->post ( 's_other_location' );
      $s_rown_premises_rate = $this->input->post ( 's_rown_premises_rate' );
      $s_owners_house_rate = $this->input->post ( 's_owners_house_rate' );

      $mobile_verification_code = '';
      if($this->session->unset_userdata('VARIFICATION_CODE')){
        $mobile_verification_code = $this->session->unset_userdata('VARIFICATION_CODE');
      }

			$save_data = array(
                'mobile_number' => $s_mobile_number,
                'full_name' => $s_profile_name,
                'user_name' => $s_profile_name,
                'profile_name' => $s_profile_name,
                'user_role' => 'pet_sitter',
                'mobile_verification_code' => $mobile_verification_code,
                'group' => 'User',
                'email' => $s_email,
                'password' => md5($s_password),
                'status' => 'Active'
              );

			  $images = array();
        if(!empty($this->_uploaded)){
          foreach ($this->_uploaded as $key => $value) {
            $newImgName = '';
            $newImgName = $value['raw_name'].'-'.rand().time().$value['file_ext'];
            @rename('./uploads/pet_owner/'.$value['file_name'], './uploads/pet_owner/'.$newImgName);
            $images[] = $newImgName;
          }
        }
      $save_data['profile_pictures'] = serialize($images);

		  $user_id = $this->user_model->save('fc_users',$save_data);
		  if(!empty($user_id )){
		  	$save_info = array(
		  					'user_id' => $user_id,
                's_gender' => $s_gender,
                's_age' => $s_age,
                's_working_status' => $s_working_status,
                's_smoking_status' => $s_smoking_status,
                's_sexuality' => $s_sexuality,
                's_experience' => $s_experience,
                's_comfortable_with' => $s_comfortable_with,
                's_prefer_pet' => $s_prefer_pet,
                's_pet_status' => $s_pet_status,
                's_suburb' => $s_suburb,
                's_location' => $s_location,
                's_charges' => $s_charges,
                's_length_of_time' => $s_length_of_time,
                's_insurance' => $s_insurance,
                's_about_me' => $s_about_me,
                's_other_location' => $s_other_location,
                's_other_comfortable_with' => $s_other_comfortable_with,
                's_rown_premises_rate' => $s_rown_premises_rate,
                's_owners_house_rate' => $s_owners_house_rate
              );
		  	$user_info_id = $this->user_model->save('user_pet_sitter',$save_info);
		  }

      $message  = "<h3>Your account has been created.</h3> <br />";

      $message .= "Thank you for registering with Intersil. Your account has been created, and a verification email has been sent to your registered email address. <br />";

      $message .= "Please click on the verification link included in the email to activate your account.<br />";

      $message .= "Your Email/Username : ".$s_email.'<br />';

      $message .= "Your Password : ".$s_password.'<br />';

      $message .= "Thanks <br />";

      $message .= "Team Stayrove";

      $email_values = array (
        'mail_type' => 'html',
        'from_mail_id' => 'praveen.puri@dotsquares.com',
        'mail_name' => 'Stayrove',
        'to_mail_id' => $s_email,
        'subject_message' => 'Stayrove Register',
        'body_messages' => trim($message)
      );
      $this->send_an_email($email_values);

      if($this->session->unset_userdata('VARIFICATION_CODE')){
        $this->session->unset_userdata('VARIFICATION_CODE');
      }

      $this->setErrorMessage('success','Successfully logged in as a pet-sitter!');
      redirect(base_url());
		  #$this->load->view('site/register/pet_sitter_registration',$this->data);
  	}
  }

  function email_exists($email){
      if (valid_email ( $email )) {
        $this->load->library('form_validation');
        $condition = array ('email' => $email);
        $duplicateMail = $this->user_model->get_all_details( USERS, $condition );

        if ($duplicateMail->num_rows () > 0) {
            $this->form_validation->set_message('email_exists', 'The %s field value already exist, please try another.');
            return false;
          }else{
            return true;
          }
       }
    }

    // now the callback validation that deals with the upload of files
  public function fileupload_check(){

    // we retrieve the number of files that were uploaded
    $number_of_files = sizeof($_FILES['uploadedimages']['tmp_name']);

    // considering that do_upload() accepts single files, we will have to do a small hack so that we can upload multiple files. For this we will have to keep the data of uploaded files in a variable, and redo the $_FILE.
    $files = $_FILES['uploadedimages'];

    // first make sure that there is no error in uploading the files
    for($i=0;$i<$number_of_files;$i++)
    {
      if($_FILES['uploadedimages']['error'][$i] != 0)
      {
        // save the error message and return false, the validation of uploaded files failed
        $this->form_validation->set_message('fileupload_check', 'Couldn\'t upload the file(s)');
        return FALSE;
      }
    }

    // we first load the upload library
    $this->load->library('upload');
    // next we pass the upload path for the images
    if($_REQUEST['register_owner'] === 'register_owner'){
      $config['upload_path'] = './uploads/pet_owner';
    }else{
      $config['upload_path'] = './uploads/pet_sitter';
    }

    // also, we make sure we allow only certain type of images
    $config['allowed_types'] = 'gif|jpg|png';

    // now, taking into account that there can be more than one file, for each file we will have to do the upload
    for ($i = 0; $i < $number_of_files; $i++)
    {
      $_FILES['uploadedimage']['name'] = $files['name'][$i];
      $_FILES['uploadedimage']['type'] = $files['type'][$i];
      $_FILES['uploadedimage']['tmp_name'] = $files['tmp_name'][$i];
      $_FILES['uploadedimage']['error'] = $files['error'][$i];
      $_FILES['uploadedimage']['size'] = $files['size'][$i];

      //now we initialize the upload library
      $this->upload->initialize($config);

      if ($this->upload->do_upload('uploadedimage')){
        $this->_uploaded[$i] = $this->upload->data();
      }else{
        $this->form_validation->set_message('fileupload_check', $this->upload->display_errors());
        return FALSE;
      }
    }
    return TRUE;
  }

  public function mobile_number_verification(){
    require_once('twilio/Services/Twilio.php');

    $account_sid = $this->config->item('twilio_account_sid');
    $auth_token = $this->config->item('twilio_account_token');

    $random_confirmation_number = mt_rand(100000, 999999);

    $from = $this->config->item('twilio_phone_number');
    $mobile_code = ''; $phone_number = '';

    if($this->input->post('mobile_code') && $this->input->post('phone_no')) {
      $mobile_code = $this->input->post('mobile_code');
      $phone_number = $this->input->post('phone_no');
    }

    $to = $mobile_code.$phone_number; //echo $to;die;

    $http = new Services_Twilio_TinyHttp(
        'https://api.twilio.com',
        array('curlopts' => array(
            CURLOPT_SSL_VERIFYPEER => false,
            CURLOPT_SSL_VERIFYHOST => 2,
        ))
    );
    $client = new Services_Twilio($account_sid, $auth_token, "2010-04-01", $http);

    $message = $client->account->messages->sendMessage(
      $from, // From a valid Twilio number
      $to, // Text this number
      "Hi This is from Stayrove, Your Verification Code is ".$random_confirmation_number
    );
    if(!empty($message->sid)){
      #@session_start();
      $this->session->set_userdata('VARIFICATION_CODE',$random_confirmation_number);
      #$_SESSION['VARIFICATION_CODE'] = $random_confirmation_number;
       echo 'success';
    }
  }

  public function check_phone_verification(){
    $mobile_verification_code = $this->input->post('mobile_verification_code');
    if($this->session->userdata('VARIFICATION_CODE') && $this->session->userdata('VARIFICATION_CODE') == $mobile_verification_code) {
      $verification_code = $this->session->userdata('VARIFICATION_CODE');
      echo 'success';
    }
  }

  function check_otp(){
    if($this->session->userdata('VARIFICATION_CODE') && $this->session->userdata('VARIFICATION_CODE') != '') {
      return true;
    }else{
      $this->form_validation->set_message('check_otp', 'You need to generat an OTP');
      return FALSE;
    }
  }

  function check_otp_value($otpval){
    if($this->session->userdata('VARIFICATION_CODE') && $this->session->userdata('VARIFICATION_CODE') == $otpval) {
      return true;
    }else{
      $this->form_validation->set_message('check_otp_value', 'Inserted OTP is not valid! Please try again');
      return FALSE;
    }
  }

  public function send_an_email($email = array()){
    if(empty($email)){
      redirect(base_url());
    }else{
      $email_send_to_common = $this->user_model->common_email_send ( $email );
    }

  }

}
/*End of file cms.php */
/* Location: ./application/controllers/site/product.php */