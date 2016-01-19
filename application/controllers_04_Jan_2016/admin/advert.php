<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 *
 * This controller contains the functions related to user management
 * @author Teamtweaks
 *
 */

class Advert extends MY_Controller {

	function __construct(){
        parent::__construct();
				$this->load->helper(array('cookie','date','form'));
				$this->load->library(array('encrypt','form_validation'));
				$this->load->model('advert_model');
				if ($this->checkPrivileges('Advert',$this->privStatus) == FALSE){
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
			redirect('admin/advert/display_advert_list');
		}
	}

	/**
	 *
	 * This function loads the users list page
	 */
	public function display_advert_list(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'Advert List';
			$condition = array();
			$this->data['advertList'] = $this->advert_model->get_all_details(ADVERT,$condition);
			$condition = array('id'=>'1');
			$enableRslt = $this->advert_model->get_all_details(ADMIN_SETTINGS,$condition);
			$this->data['enable'] = $enableRslt->row()->advert;
			$this->load->view('admin/advert/display_advertlist',$this->data);
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
			$this->data['heading'] = 'Advert Dashboard';
			$condition = 'order by `created` desc';
			$this->data['usersList'] = $this->advert_model->get_advert_details($condition);
			$this->load->view('admin/advert/display_advert_dashboard',$this->data);
		}
	}

	/**
	 *
	 * This function loads the add new user form
	 */
	public function add_advert_form(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'Add New Advert';
			$this->load->view('admin/advert/add_advert',$this->data);
		}
	}

	/**
	 *
	 * This function insert and edit a user
	 */
	public function insertEditAdvert(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$advert_id = $this->input->post('advert_id');
			$advert_name = $this->input->post('advert_name');
			$advert_title = $this->input->post('advert_title');
			if ($advert_id == ''){
				$condition = array('advert_name' => $advert_name);
				$duplicate_name = $this->advert_model->get_all_details(ADVERT,$condition);
				if ($duplicate_name->num_rows() > 0){
					$this->setErrorMessage('error','Advert name already exists');
					redirect('admin/advert/add_advert_form');
				}
			}
			$excludeArr = array("advert_id","image","status");

			if ($this->input->post('status') != ''){
				$advert_status = 'Active';
			}else {
				$advert_status = 'Inactive';
			}
			$inputArr = array('status' => $advert_status);

			$datestring = "%Y-%m-%d";
			$time = time();

			  if(!is_dir($logoDirectory))                       {
            mkdir($logoDirectory,0777);
          }
				$config['overwrite'] = FALSE;
				$config['allowed_types'] = 'jpg|jpeg|gif|png';
				$config['max_size'] = 2000;
				$config['upload_path'] = './images/advert';
				$this->load->library('upload', $config);
				$this->upload->initialize($config);
				$this->upload->do_upload('image');
				$imgDetails = $this->upload->data();
				#print_r($imgDetails); die;

				if($imgDetails['file_name']!=''){
		    	$path='/images/advert/thumb/';

				@copy('./images/advert/'.$imgDetails['file_name'],'./images/advert/thumb/'.$imgDetails['file_name']);

          if($imgDetails['image_width'] < 1349 && $imgDetails['image_height'] < 484){
					   if (!$this->imageResizeWithSpace(1349, 484, $imgDetails['file_name'], './images/advert/thumb/')){
								$error = array('error' => $this->upload->display_errors());
							}else{
								$advertUploadedData = array($this->upload->data());
							}
				  }
				$inputArr['image'] = $imgDetails['file_name'];
			}
			$condition = array('id' => $advert_id);
			if ($advert_id == ''){
				$this->advert_model->commonInsertUpdate(ADVERT,'insert',$excludeArr,$inputArr,$condition);
				$this->setErrorMessage('success','Advert added successfully');
			}else {


				$this->advert_model->commonInsertUpdate(ADVERT,'update',$excludeArr,$inputArr,$condition);
				$this->setErrorMessage('success','Advert updated successfully');
			}
			redirect('admin/advert/display_advert_list');
		}
	}

	/**
	 *
	 * This function loads the edit user form
	 */
	public function edit_advert_form(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'Edit Advert';
			$user_id = $this->uri->segment(4,0);
			$condition = array('id' => $user_id);
			$this->data['advert_details'] = $this->advert_model->get_all_details(ADVERT,$condition);
			if ($this->data['advert_details']->num_rows() == 1){
				$this->load->view('admin/advert/edit_advert',$this->data);
			}else {
				redirect('admin');
			}
		}
	}

	/**
	 *
	 * This function change the user status
	 */
	public function change_advert_status(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$mode = $this->uri->segment(4,0);
			$user_id = $this->uri->segment(5,0);
			$status = ($mode == '0')?'Inactive':'Active';
			$newdata = array('status' => $status);
			$condition = array('id' => $user_id);
			$this->advert_model->update_details(ADVERT,$newdata,$condition);
			$this->setErrorMessage('success','Advert Status Changed Successfully');
			redirect('admin/advert/display_advert_list');
		}
	}

	/**
	 *
	 * This function loads the user view page
	 */
	public function view_advert(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'View Advert';
			$user_id = $this->uri->segment(4,0);
			$condition = array('id' => $user_id);
			$this->data['advert_details'] = $this->advert_model->get_all_details(ADVERT,$condition);
			if ($this->data['advert_details']->num_rows() == 1){
				$this->load->view('admin/advert/view_advert',$this->data);
			}else {
				redirect('admin');
			}
		}
	}

	/**
	 *
	 * This function delete the user record from db
	 */
	public function delete_advert(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$user_id = $this->uri->segment(4,0);
			$condition = array('id' => $user_id);
			$this->advert_model->commonDelete(ADVERT,$condition);
			$this->setErrorMessage('success','Advert deleted successfully');
			redirect('admin/advert/display_advert_list');
		}
	}

	/**
	 *
	 * This function change the user status, delete the user record
	 */
	public function change_advert_status_global(){
		if(count($_POST['checkbox_id']) > 0 &&  $_POST['statusMode'] != ''){
			$this->advert_model->activeInactiveCommon(ADVERT,'id');
			if (strtolower($_POST['statusMode']) == 'delete'){
				$this->setErrorMessage('success','Advert deleted successfully');
			}else {
				$this->setErrorMessage('success','Advert status changed successfully');
			}
			redirect('admin/advert/display_advert_list');
		}
	}

	public function getExtension($str)	{
		$i = strrpos($str,".");
		if (!$i){
			return "";
		}

		$l = strlen($str) - $i;
		$ext = substr($str,$i+1,$l);
		return $ext;
	}
 public function compressImage($ext,$uploadedfile,$path,$actual_image_name,$newwidth){

		if($ext=="jpg" || $ext=="jpeg" ){
			$src = imagecreatefromjpeg($uploadedfile);
		}
		else if($ext=="png"){
			$src = imagecreatefrompng($uploadedfile);
		}
		else if($ext=="gif"){
			$src = imagecreatefromgif($uploadedfile);
		}
		else{
			$src = imagecreatefrombmp($uploadedfile);
		}

		list($width,$height)=getimagesize($uploadedfile);
		$newheight=($height/$width)*$newwidth;
		$tmp=imagecreatetruecolor($newwidth,$newheight);
		imagecopyresampled($tmp,$src,0,0,0,0,$newwidth,$newheight,$width,$height);
		$filename = $path.$newwidth.'_'.$actual_image_name; //PixelSize_TimeStamp.jpg
		imagejpeg($tmp,$filename,100);
		imagedestroy($tmp);
		return $filename;
	}

}
/* End of file advert.php */
/* Location: ./application/controllers/admin/advert.php */