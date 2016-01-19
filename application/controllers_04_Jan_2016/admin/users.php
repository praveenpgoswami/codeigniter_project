<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 *
 * This controller contains the functions related to user management
 * @author Teamtweaks
 *
 */

class Users extends MY_Controller {

	function __construct(){
        parent::__construct();
		$this->load->helper(array('cookie','date','form'));
		$this->load->library(array('encrypt','form_validation'));
		$this->load->model('user_model');
		if ($this->checkPrivileges('Members',$this->privStatus) == FALSE){
			redirect('admin');
		}
    }

    /**
     *
     * This function loads the users list page
     */
   	public function index(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			redirect('admin/users/display_user_list');
		}
	}

	/**
	 *
	 * This function loads the users list page
	 */
	public function display_user_list(){

		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'Members List';
			#$condition = array('group'=>'User');
			$condition = 'where `group`="User" AND `user_role` = "pet_owner" OR `user_role` = "pet_sitter"  order by `created` desc';
			#$this->data['usersList'] = $this->user_model->get_all_details(USERS,$condition);
			$this->data['usersList'] = $this->user_model->get_users_details($condition);

			$this->db->select('t1.id,t1.mobile_number,t1.full_name,t1.user_name,t1.profile_name,t1.user_role,t1.mobile_verification_code,t1.group,t1.email,t1.status,t1.email,t1.last_login_date,t1.last_login_ip, t2.*')
			   ->from('fc_users as t1')
			   ->join('user_pet_owner as t2', 't1.id = t2.user_id', LEFT)
			   ->where_in('t1.user_role',array('pet_owner'));

			$query = $this->db->get();
			$result = $query->result_array();

			$this->db->select('t1.id,t1.mobile_number,t1.full_name,t1.user_name,t1.profile_name,t1.user_role,t1.mobile_verification_code,t1.group,t1.email,t1.status,t1.email,t1.last_login_date,t1.last_login_ip, t2.*')
			   ->from('fc_users as t1')
			   ->join('user_pet_sitter as t2', 't1.id = t2.user_id', LEFT)
			   ->where_in('t1.user_role',array('pet_sitter'));

			$query2 = $this->db->get();
			$result2 = $query2->result_array();

			$this->data['data'] = array_merge($result, $result2);

			$this->load->view('admin/users/display_userlist',$this->data);
		}
	}

	/**
	 *
	 * This function loads the users dashboard
	 */
	public function display_user_dashboard(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'Members Dashboard';
			$condition = 'where `group`="User" AND `user_role` = "pet_owner" OR `user_role` = "pet_sitter"  order by `created` desc';

			$this->data['usersList'] = $this->user_model->get_users_details($condition);
			$this->load->view('admin/users/display_user_dashboard',$this->data);
		}
	}

	/**
	 *
	 * This function loads the add new user form
	 */
	public function add_user_form(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'Add New Member';
			$this->load->view('admin/users/add_user',$this->data);
		}
	}

	/**
	 *
	 * This function insert and edit a user
	 */
	public function insertEditUser(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$user_id = $this->input->post('user_id');
			$firstname = $this->input->post('firstname');
			$user_name = $this->input->post('firstname');
			$password = md5($this->input->post('new_password'));
			$email = $this->input->post('email');
			if ($user_id == ''){

				$condition = array('firstname' => $firstname);
				$duplicate_name = $this->user_model->get_all_details(USERS,$condition);
				if ($duplicate_name->num_rows() > 0){
					$this->setErrorMessage('error','First name already exists');
					redirect('admin/users/add_user_form');
				}else {
					$condition = array('email' => $email);
					$duplicate_mail = $this->user_model->get_all_details(USERS,$condition);
					if ($duplicate_mail->num_rows() > 0){
						$this->setErrorMessage('error','User email already exists');
						redirect('admin/users/add_user_form');
					}
				}
			}
			$excludeArr = array("user_id","image","new_password","confirm_password","group","status");

			$user_group = 'User';

			if ($this->input->post('status') != ''){
				$user_status = 'Active';
			}else {
				$user_status = 'Inactive';
			}
			$inputArr = array('group' => $user_group, 'status' => $user_status, 'user_name' => $user_name);

			$inputArr['request_status'] = 'Approved';

			$datestring = "%Y-%m-%d";
			$time = time();
			//$config['encrypt_name'] = TRUE;
			$config['overwrite'] = FALSE;
	    	$config['allowed_types'] = 'jpg|jpeg|gif|png';
		    $config['max_size'] = 2000;
		    $config['upload_path'] = './images/users';
		    $this->load->library('upload', $config);
			if ( $this->upload->do_upload('image')){
		    	$imgDetails = $this->upload->data();
		    	$inputArr['image'] = $imgDetails['file_name'];
			}
			if ($user_id == ''){
				$user_data = array(
					'password'	=>	$password,
					'is_verified'	=>	'Yes',
					'created'	=>	mdate($datestring,$time),
					'modified'	=>	mdate($datestring,$time),
				);
			}else {
				$user_data = array('modified' =>	mdate($datestring,$time));
			}
			$dataArr = array_merge($inputArr,$user_data);
			$condition = array('id' => $user_id);
			if ($user_id == ''){
				$this->user_model->commonInsertUpdate(USERS,'insert',$excludeArr,$dataArr,$condition);
				$this->setErrorMessage('success','User added successfully');
			}else {
				//print_r($dataArr);die;
				$this->user_model->commonInsertUpdate(USERS,'update',$excludeArr,$dataArr,$condition);
				$this->setErrorMessage('success','User updated successfully');
			}
			redirect('admin/users/display_user_list');
		}
	}

	/**
	 *
	 * This function loads the edit user form
	 */
	public function edit_user_form(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'Edit Member';
			$user_id = $this->uri->segment(4,0);
			$condition = array('id' => $user_id);
			$this->data['user_details'] = $this->user_model->get_all_details(USERS,$condition);
			if ($this->data['user_details']->num_rows() == 1){
				$this->load->view('admin/users/edit_user',$this->data);
			}else {
				redirect('admin');
			}
		}
	}

	/**
	 *
	 * This function change the user status
	 */
	public function change_user_status(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$mode = $this->uri->segment(4,0);
			$user_id = $this->uri->segment(5,0);
			$status = ($mode == '0')?'Inactive':'Active';
			$newdata = array('status' => $status);
			$condition = array('id' => $user_id);
			$this->user_model->update_details(USERS,$newdata,$condition);
			$this->setErrorMessage('success','User Status Changed Successfully');
			redirect('admin/users/display_user_list');
		}
	}

	/**
	 *
	 * This function loads the user view page
	 */
	public function view_user(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'View User';

			//get config value
			$this->data['owner_registration_fields'] = $this->config->item('pet_owner_registration_fields');
			$this->data['sitter_registration_fields'] = $this->config->item('pet_sitter_registration_fields');

			$user_id = $this->uri->segment(4,0);
			$condition = array('id' => $user_id);
			$this->data['user_details'] = $this->user_model->get_all_details(USERS,$condition);
			$check_role = $this->check_user_role($user_id);

			//get user data using user id
			if($check_role == 'pet_owner'){
				$this->db->select('t1.id,t1.mobile_number,t1.full_name,t1.user_name,t1.profile_name,t1.user_role,t1.mobile_verification_code,t1.group,t1.email,t1.status,t1.email,t1.last_login_date,t1.last_login_ip, t2.*')
				   ->from('fc_users as t1')
				   ->join('user_pet_owner as t2', 't1.id = t2.user_id', LEFT)
				   ->where('t1.id',$user_id)
				   ->where('t1.user_role','pet_owner');

				$query = $this->db->get();
				$this->data['data'] = $query->result_array();
				$this->load->view('admin/users/pet_owner',$this->data);

			}else if($check_role == 'pet_sitter'){

				$this->db->select('t1.id,t1.mobile_number,t1.full_name,t1.user_name,t1.profile_name,t1.user_role,t1.mobile_verification_code,t1.group,t1.email,t1.status,t1.email,t1.last_login_date,t1.last_login_ip, t2.*')
				   ->from('fc_users as t1')
				   ->join('user_pet_sitter as t2', 't1.id = t2.user_id', LEFT)
				   ->where('t1.id',$user_id)
				   ->where('t1.user_role','pet_sitter');

				$query = $this->db->get();
				$this->data['data'] = $query->result_array();
				$this->load->view('admin/users/pet_sitter',$this->data);

			} else {
				redirect('admin/users/display_user_list');
			}

			// if ($this->data['user_details']->num_rows() == 1){
			// 	$this->load->view('admin/users/view_user',$this->data);
			// }else {
			// 	redirect('admin');
			// }
		}
	}


	/**
	 *
	 * Check user type using user id
	 */

	function check_user_role($userid){
			//query to get user_role using user id from user table
			if(!$userid)
					redirect('admin/users/display_user_list');

			$this->db->select('user_role')
							 ->from('fc_users as t1')
							 ->where('id', $userid);
			$query 	= $this->db->get();
			$result = $query->result_array();

			if(!empty($result))
					return $result[0]['user_role'];
	}

	/**
	 *
	 * This function delete the user record from db
	 */
	public function delete_user(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$user_id = $this->uri->segment(4,0);
			$condition = array('id' => $user_id);
			$this->user_model->commonDelete(USERS,$condition);
			$this->setErrorMessage('success','User deleted successfully');
            redirect('admin/users/display_user_list');
		}
	}

	/**
	 *
	 * This function change the user status, delete the user record
	 */
	public function change_user_status_global(){
		if(count($_POST['checkbox_id']) > 0 &&  $_POST['statusMode'] != ''){
			$this->user_model->activeInactiveCommon(USERS,'id');
			if (strtolower($_POST['statusMode']) == 'delete'){
				$this->setErrorMessage('success','User records deleted successfully');
			}else {
				$this->setErrorMessage('success','User records status changed successfully');
			}
			redirect('admin/users/display_user_list');
		}
	}

	public function export_user_details()
	{
	$fields_wanted=array('firstname','lastname','email','created','last_login_date','last_login_ip');
    $table=USERS;
	$users=$this->user_model->export_user_details($table,$fields_wanted);
	$this->data['users_detail']=$users['users_detail']->result();
	$this->load->view('admin/users/export_user',$this->data);
	}

	/**
	 *
	 * This function loads the pet owner dashboard
	 */
	public function display_pet_owner_dashboard(){

		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'Pet Owner Dashboard';
			$condition = 'where `group`="User" AND `user_role` = "pet_owner" order by `created` desc';
			$this->data['usersList'] = $this->user_model->get_users_details($condition);

			$this->load->view('admin/users/display_pet_owner_dashboard',$this->data);
		}
	}

	/**
	 *
	 * This function loads the pet owner list page
	 */
	public function display_pet_owner_list(){

		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'Members List';
			$condition = 'where `group`="User" AND `user_role` = "pet_owner" order by `created` desc';
			$this->data['usersList'] = $this->user_model->get_users_details($condition);

			$this->db->select('t1.id,t1.mobile_number,t1.full_name,t1.user_name,t1.profile_name,t1.user_role,t1.mobile_verification_code,t1.group,t1.email,t1.status,t1.email,t1.last_login_date,t1.last_login_ip, t2.*')
			   ->from('fc_users as t1')
			   ->join('user_pet_owner as t2', 't1.id = t2.user_id', LEFT)
			   ->where_in('t1.user_role',array('pet_owner'));

			$query 	= $this->db->get();
			$this->data['data'] = $query->result_array();

			$this->load->view('admin/users/display_pet_owner_list',$this->data);
		}
	}

	/**
	 *
	 * This function loads the pet sitter dashboard
	 */
	public function display_pet_sitter_dashboard(){

		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'Pet Sitter Dashboard';
			$condition = 'where `group`="User" AND `user_role` = "pet_sitter" order by `created` desc';
			$this->data['usersList'] = $this->user_model->get_users_details($condition);

			$this->load->view('admin/users/display_pet_sitter_dashboard',$this->data);
		}
	}

	/**
	 *
	 * This function loads the pet sitter list page
	 */
	public function display_pet_sitter_list(){

		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'Members List';
			$condition = 'where `group`="User" AND `user_role` = "pet_sitter" order by `created` desc';
			$this->data['usersList'] = $this->user_model->get_users_details($condition);

			$this->db->select('t1.id,t1.mobile_number,t1.full_name,t1.user_name,t1.profile_name,t1.user_role,t1.mobile_verification_code,t1.group,t1.email,t1.status,t1.email,t1.last_login_date,t1.last_login_ip, t2.*')
			   ->from('fc_users as t1')
			   ->join('user_pet_sitter as t2', 't1.id = t2.user_id', LEFT)
			   ->where_in('t1.user_role',array('pet_sitter'));

			$query 	= $this->db->get();
			$this->data['data'] = $query->result_array();

			$this->load->view('admin/users/display_pet_sitter_list',$this->data);
		}
	}

}

/* End of file users.php */
/* Location: ./application/controllers/admin/users.php */