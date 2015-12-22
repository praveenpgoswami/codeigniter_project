<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 
 * This controller contains the functions related to listings management 
 * @author Teamtweaks
 *
 */

class Listings extends MY_Controller {

	function __construct(){
        parent::__construct();
		$this->load->helper(array('cookie','date','form'));
		$this->load->library(array('encrypt','form_validation'));		
		$this->load->model('listings_model');
		if ($this->checkPrivileges('Listing',$this->privStatus) == FALSE){
			redirect('admin');
		}
    }
	
	/*
	*Load contens for rooms and beds for listings
	*
	*/
	public function rooms_and_beds() {
		$condition=array('id'=>1);
		$this->data['listDetail'] = $this->listings_model->get_all_details(LISTINGS,$condition);	
		$this->load->view('admin/listings/rooms_and_beds',$this->data);
	}
	
	/*
	*Load contens for listings informations for listings
	*
	*/
	public function listings_info() {
		$condition=array('id'=>1);
		$this->data['listDetail'] = $this->listings_model->get_all_details(LISTINGS,$condition);	
		$this->load->view('admin/listings/listings_info',$this->data);
	}
	/*
	*Save rooms and beds for listings
	*
	*/
	public function insertlistings_roomsandbed() {		
		$condition=array('id'=>1);
		$listDetail = $this->listings_model->get_all_details(LISTINGS,$condition);	
		$dataArr=array('bedrooms'=>$this->input->post('bedrooms'),
								'beds'=>$this->input->post('beds'),
								'bedtype'=>$this->input->post('bedtype'),
								'bathrooms'=>$this->input->post('bathrooms'),
								'noofbathrooms'=>$this->input->post('noofbathrooms'),
								'min_stay'=>$this->input->post('min_stay'),
								'accommodates'=>$this->input->post('accommodates'),
								'can_policy'=>$this->input->post('can_policy')
								);
		$finalVal=json_encode($dataArr);
		$listArr=array('rooms_bed'=>$finalVal);
		
		if($listDetail->num_rows()==1){
			$this->listings_model->update_details(LISTINGS,$listArr,$condition);
		}else{
			$this->listings_model->simple_insert(LISTINGS,$listArr);
		}
		redirect('admin/listings/rooms_and_beds');
	}
    
}

/* End of file listings.php */
/* Location: ./application/controllers/admin/listings.php */