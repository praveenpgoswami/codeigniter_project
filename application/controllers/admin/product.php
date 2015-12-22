<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 *
 * This controller contains the functions related to Product management
 * @author Teamtweaks
 *
 */

class Product extends MY_Controller {

	function __construct(){
		parent::__construct();
		$this->load->helper(array('cookie','date','form'));
		$this->load->library(array('encrypt','form_validation','image_lib'));
		$this->load->model('product_model');
		if ($this->checkPrivileges('Properties',$this->privStatus) == FALSE){
			redirect('admin');
		}
	}

	/**
	 *
	 * This function loads the product list page
	 */
	public function index(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			redirect('admin/product/display_product_list');
		}
	}

	/**
	 *
	 * This function loads the selling product list page
	 */
	public function display_product_list(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
		//echo 'gangatharan';die;
			$this->data['heading'] = 'Properties List';
			$condition = 'where u.status="Active" or p.user_id=0 group by cit.name order by p.created desc';
			//$this->data['productList'] = $this->product_model->view_product_details($condition);
			$this->data['checkin']=$_GET['checkin'];
			$this->data['checkout']=$_GET['checkout'];
			//echo "<pre>"; print_r($this->data['productList']->result()); die;
			$this->data['productList'] = $this->product_model->get_allthe_details($_GET['status'],$_GET['city'],$_GET['checkin'],$_GET['checkout'],$_GET['id']);
			$this->data['userdetails'] = $this->product_model->get_particular_details('id,firstname,lastname',USERS,array(),array(array('field'=>'user_name','type'=>'asc')));
			$this->data['options'] = 	$this->product_model->get_search_options($condition);
			$this->load->view('admin/product/display_product_list',$this->data);
		}
	}

	
	
	/**
	 *
	 * This function change the selling product status, delete the selling product record
	 */
	public function change_product_status_global(){

		
		if ($_POST['exportex'] == 'export') {

		$productList = $this->product_model->get_allthe_details($_POST['search_status'],$_POST['search_city'],$_POST['search_checkin'],$_POST['search_checkout'],$_POST['search_renters']);
		$data['checkin']=$_POST['search_checkin'];
		$data['checkout']=$_POST['search_checkout'];
		$data['getCustomerDetails'] = $a = $productList->result_array();
		
		//echo "<pre>"; print_r($productList->result()); die;
		$this->load->view('admin/product/customerExportExcel',$data);	
		//$this->load->view('admin/product/display_product_list',$this->data);
		}
		
		else {
			if($_POST['checkboxID']!=''){

				if($_POST['checkboxID']=='0'){
					redirect('admin/product/add_product_form/0');
				}else{
					redirect('admin/product/add_product_form/'.$_POST['checkboxID']);
				}

			}else{
				if(count($_POST['checkbox_id']) > 0 &&  $_POST['statusMode'] != ''){
					$data =  $_POST['checkbox_id'];
					if (strtolower($_POST['statusMode']) == 'delete'){
						for ($i=0;$i<count($data);$i++){
							if($data[$i] == 'on'){
								unset($data[$i]);
							}
						}
						foreach ($data as $product_id){
							if ($product_id!=''){
								$old_product_details = $this->product_model->get_all_details(PRODUCT,array('id'=>$product_id));
								$this->product_model->commonDelete(PRODUCT_PHOTOS,array('product_id' => $product_id));
								$this->product_model->commonDelete(PRODUCT_ADDRESS,array('product_id' => $product_id));
								$this->product_model->commonDelete(PRODUCT_BOOKING,array('product_id' => $product_id));
								$this->product_model->commonDelete(SCHEDULE,array('id' => $product_id));
								$this->update_old_list_values($product_id,array(),$old_product_details);
								$this->update_user_product_count($old_product_details);
							}
						}
					}
					$this->product_model->activeInactiveCommon(PRODUCT,'id');
					if (strtolower($_POST['statusMode']) == 'delete'){
						$this->setErrorMessage('success','Rental records deleted successfully');
					}else {
						$this->setErrorMessage('success','Rental records status changed successfully');
					}
					redirect('admin/product/display_product_list');
				}
			}



		}
		

	}
	
	
	/**
	 *
	 * This function loads the affiliate product list page
	 */
	public function display_user_product_list(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'Affiliate Product List';
			$this->data['productList'] = $this->product_model->view_notsell_product_details();
			$this->load->view('admin/product/display_user_product_list',$this->data);
		}
	}


	/**
	 * this function load add multiple image
	 */
	public function dragimageuploadinsert()
	{
		$val = $this->uri->segment(4,0);
		$this->data['prod_id']=$val;
			
		$this->load->view('admin/product/dragndrop',$this->data);
		//$this->load->view('site/product/photos_listing');
	}



	/**
	 *
	 *  Inserr the Product using Ajax added 26/05/2014 */

	public function saveAdminDetailPage()
	{
		$returnArr['resultval']='';
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		} else {
			$condition='';
			$catID = $this->input->post('catID');
			if($catID==0) {
				$title = $this->input->post('title');
				$dataArr = array( 'product_title' => $title);
				$excludeArr =array( 'title','catID','chk');
				$this->product_model->commonInsertUpdate(PRODUCT,'insert',$excludeArr,$dataArr,$condition);
					

					
				$returnArr['resultval']=$insert_id = $this->db->insert_id();
				$inputArr = array('product_id' =>$insert_id);
				$this->product_model->commonInsertUpdate(PRODUCT_ADDRESS,'insert',$excludeArr,$inputArr,$condition);
				$this->product_model->commonInsertUpdate(PRODUCT_BOOKING,'insert',$excludeArr,$inputArr,$condition);
				$this->product_model->commonInsertUpdate(SCHEDULE,'insert',$excludeArr,array('id'=>$insert_id),$condition);
				echo json_encode($returnArr);
			}
			else {
				$returnArr['resultval']=$catID;
				echo json_encode($returnArr);
					
			}


		}
	}



	/** Insert Images **/

	public function OtherDetailInsert()
	{
		$returnArr['resultval']='';
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		} else {
			$title = $this->input->post('val');
			$catID = $this->input->post('catID');
			$chk= $this->input->post('chk');
			$condition =array('id'=>$catID);
			$dataArr = array( $chk => $title);
			$excludeArr =array( 'title','catID','chk');
			$this->product_model->update_details(PRODUCT,array($chk=>$title),array('id'=>$catID));
			$returnArr['resultval']=$catID."title".$chk;
			echo json_encode($returnArr);
		}
	}
	
	public function DealPriceInsert()
	{
		$returnArr['resultval']='';
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		} else {
			$title = $this->input->post('title');
			
			$catID = $this->input->post('product_id');
			$chk= $this->input->post('val');
			$condition =array('product_id'=>$catID);
			$dataArr = array( $chk => $title);
			$dataArr1 = array( $title => $this->input->post('val'),'product_id'=>$catID);
			$excludeArr =array( 'title','product_id','chk','val');
			
			$productDealPrice=$this->product_model->get_all_details(PRODUCT_DEALPRICE,$condition);
			
			if($productDealPrice->num_rows()==0)
			{
			$this->product_model->commonInsertUpdate(PRODUCT_DEALPRICE,'insert',$excludeArr,$dataArr1,array());
			}
			else{
			
			$this->product_model->update_details(PRODUCT_DEALPRICE,array($title=>$chk),array('product_id'=>$catID));
			}
			echo $this->db->last_query();die;
			$returnArr['resultval']=$catID."title".$chk;
			echo json_encode($returnArr);
		}
	}


	public function deleteProductImage()
	{
		$returnArr['resultval']='';
		if ($this->checkLogin('A') == ''){
		//echo 'gangatharan';die;
			redirect('admin');
		} else {

			$prdID = $this->input->post('prdID');

			$condition =array('id'=>$prdID);
			//$this->product_model->commonDelete(PRODUCT_PHOTOS,$condition);
			$this->product_model->commonDelete(PRODUCT_PHOTOS,array('id' => $prdID));
			
			$returnArr['resultval']=$prdID;
			echo json_encode($returnArr);
		}
	}






	/**
	 * product image insert
	 */

	public function InsertProductImage() {
			

		$imageName = @implode(',',$this->input->post('imgUpload'));

		$imageNameNew = @explode(',',$imageName);

		$s=0;
		foreach($this->input->post('imgUploadUrl') as $imgUrl){

			//echo '<br>'.$imgUrl.$imageNameNew[$s]; die;
			copy($imgUrl, './images/product/rentals/'.$imageNameNew[$s]);
			unlink('server/php/files/'.$imageNameNew[$s]);
			unlink('server/php/files/thumbnail/'.$imageNameNew[$s]);
			$s++;
		}


		$prd_id = $this->input->post('prod_id');
		$img_nameurl = $this->input->post('imgUploadUrl');
		$img_name =$this->input->post('imgUpload');
		for($i=0;$i<count($img_name);$i++) {
			if(!empty($img_name[$i])) {
				// print_r($img_name[$i]);
				$filePRoductUploadData = array('product_id'=>$prd_id,'product_image'=>$img_name[$i]);
				$this->product_model->simple_insert(PRODUCT_PHOTOS,$filePRoductUploadData);
			}
			else {
				print_r("File is empty");
				$this->setErrorMessage('error','You cannot choose image');
				redirect('admin/product/add_product_form/'.$prd_id);

			}




		}

		redirect('admin/product/add_product_form/'.$prd_id);





		//$this->load->view('admin/product/add_product_form');

		/*$s=0;
		 foreach($this->input->post('imgUploadUrl') as $imgUrl){

		 //echo '<br>'.$imgUrl.$imageNameNew[$s];
		 copy($imgUrl, './images/product/rentals'.$imageNameNew[$s]);
		 unlink('server/php/files/'.$imageNameNew[$s]);
		 unlink('server/php/files/thumbnail/'.$imageNameNew[$s]);
			$s++;
			}*/

			
	}


	/**
	 *
	 * This function loads the add new product form
	 */
	public function add_product_form(){
	
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'Add New Property';
			$product_id=$this->data['Product_id'] = $this->uri->segment(4,0);
			
			$this->data['listDetail'] = $this->product_model->get_all_details(PRODUCT,array('id'=>$product_id));
			$this->data['SublistDetail'] = $this->product_model->get_all_details(LIST_SUB_VALUES,array());
			$this->data['listValues'] = $this->product_model->get_all_details(LISTINGS,array('id'=>1));	
			
			$this->data['ProductDealPrice']=$this->product_model->get_all_details(PRODUCT_DEALPRICE,array('product_id'=>$product_id));
			
			$this->data['categoryView'] = $this->product_model->view_category_details();
			//Rental Address
			
			$this->data['RentalCountry'] = $this->product_model->get_all_details(COUNTRY_LIST,array('status'=>'Active'));
			$this->data['RentalState'] = $this->product_model->get_all_details(STATE_TAX,array('status'=>'Active'));
			$this->data['RentalCity'] =  $this->product_model->get_all_details(CITY,array('status'=>'Active'));
			$this->data['NeiborCity'] =  $this->product_model->get_all_details(NEIGHBORHOOD,array('status'=>'Active'));
			$this->data['userdetails'] =  $this->product_model->get_selected_fields_records('id,firstname,lastname',USERS,'where status="Active" ');



			$this->data['listNameCnt'] = $this->product_model->get_all_details(ATTRIBUTE,array('status'=>'Active'));

			$this->data['listValueCnt'] = $this->product_model->get_all_details(LIST_VALUES,array('status'=>'Active'));


			
			$this->data['getCommonFacilityDetails'] = $this->product_model->getCommonFacilityDetails();
			
			$this->data['getPropertyType'] = $this->product_model->getPropertyType();
			
			$this->data['getExtraFacilityDetails'] = $this->product_model->getExtraFacilityDetails();
			$this->data['getSpecialFeatureFacilityDetails'] = $this->product_model->getSpecialFeatureFacilityDetails();
			$this->data['getHomeSafetyFacilityDetails'] = $this->product_model->getHomeSafetyFacilityDetails();

			$this->data['imgDetail'] = $this->product_model->get_images($product_id);
			$this->data['membershipplan']=$this->product_model->getMembershipPackage();







			$listIdArr=array();



			foreach($this->data['listValueCnt']->result_array() as $listCountryValue){
				$listIdArr[]=$listCountryValue['list_id'];
			}

			if($this->data['listNameCnt']->num_rows() > 0){
					
				foreach($this->data['listNameCnt']->result_array() as $listCountryName){

					$this->data['listCountryValue'] .='
					<script language="javascript">
$(function(){
 
    $("#selectall'.$listCountryName['id'].'").click(function () {
          $(".cb'.$listCountryName['id'].'").attr("checked", this.checked);
    });
 
    $(".cb'.$listCountryName['id'].'").click(function(){
 
        if($(".cb'.$listCountryName['id'].'").length == $(".cb:checked").length) {
            $("#selectall'.$listCountryName['id'].'").attr("checked", "checked");
        } else {
            $("#selectall'.$listCountryName['id'].'").removeAttr("checked");
        }
 
    });
});
</script>
				
					
					<div class="dashboard_price_main">
            
            	<div class="dashboard_price">
            
                    <div class="dashboard_price_left"><h3>'.ucfirst($listCountryName['attribute_name']).'</h3>'.$listCountryName['description'].'<br /><br /><br />Select All<input type="checkbox" id="selectall'.$listCountryName['id'].'"/></div><div class="dashboard_price_right"><ul class="facility_listed">';

					foreach($this->data['listValueCnt']->result_array() as $listCountryValue){

						//if(in_array($listCountryName['id'],$listIdArr)){
						if($listCountryValue['list_id']==$listCountryName['id']){

							if (in_array($listCountryValue['id'],$list_valueArr)){
								$checkStr = 'checked="checked"';
							}else {
								$checkStr = '';
							}




							$this->data['listCountryValue'] .='<li><input type="checkbox" name="list_value[]" class="checkbox_check cb'.$listCountryName['id'].'" '.$checkStr.'value="'.$listCountryValue['id'].'"/><span>'.ucfirst($listCountryValue['list_value']).'</span></li>';

						}

					}$this->data['listCountryValue'] .='</ul>
                    
                    
                    </div>
                
                </div> 
                
                
                
            
            </div>';

				}
			}
		}
			

		/*edit form code added 29/05/2014 */

		$id=$this->uri->segment(4,0);
		$hotel_id = $this->uri->segment(4);

			
		if($hotel_id!='') {
			$condition=array('id'=>$hotel_id);
			$condition = array(TOUR.'.id' => $hotel_id);
			//$this->data['product_details']=$this->tour_model->display_tour_list($condition);
			$this->data['product_details'] = $this->product_model->view_product1($hotel_id);

		}

		$this->load->library('googlemaps');
		$config['center'] = '37.4419, -122.1419';
		$config['zoom'] = 'auto';
		$this->googlemaps->initialize($config);
			
		$marker = array();
		$marker['position'] = '37.429, -122.1419';
		$marker['draggable'] = true;
			
		$marker['ondragend'] = 'updateDatabase(event.latLng.lat(), event.latLng.lng());';
		$this->googlemaps->add_marker($marker);
		$this->data['map']= $this->googlemaps->create_map();

			
			
			
		$this->data['atrributeValue'] = $this->product_model->view_atrribute_details();
		$this->data['PrdattrVal'] = $this->product_model->view_product_atrribute_details();
		//echo "<pre>"; print_r($this->data);die;
		$this->load->view('admin/product/add_product',$this->data);

	}


	public function UpdateProduct(){ //echo 'ganbas';die;
		/*image upload end */


		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {

// 			print_r($_POST);die;
			$product_data=array();
			$facility_list=array();
			$product_name = $this->input->post('product_title');
			$product_id = $this->input->post('prdiii');


			$datefrom= date('Y/m/d', strtotime(str_replace('/', '/', $this->input->post('datefrom'))));
			$dateto = date('Y/m/d', strtotime(str_replace('/', '/', $this->input->post('dateto'))));

			$dataArr = array('datefrom'=>$datefrom,'dateto'=>$dateto);
			if ($product_name == ''){
				$this->setErrorMessage('error','Product name required');
				echo "<script>window.history.go(-1)</script>";exit();
			}
			$price = $this->input->post('price');
			if ($price == ''){
				$this->setErrorMessage('error','Price required');
				echo "<script>window.history.go(-1)</script>";exit();
			}else if ($price <= 0){
				$this->setErrorMessage('error','Price must be greater than zero');
				echo "<script>window.history.go(-1)</script>";exit();
			}
			if ($product_id == ''){
				$old_product_details = array();
				$condition = array('product_name' => $product_name);
			}else {
				$old_product_details = $this->product_model->get_all_details(PRODUCT,array('id'=>$product_id));
				$condition = array('product_name' => $product_name,'id !=' => $product_id);
			}
			



			/* list value update code added 29/05/2014 */
			$listname = $this->input->post('list_name');
			$id = $this->input->post('prdiii');
			$facility = @implode(',',$this->input->post('list_name'));
			$sublist = 	@implode(',',$this->input->post('sub_list'));
			$facility_list = array('list_name' => $facility,'sub_list' => $sublist );
			
		
            $price_range = '';
			if ($price>0 && $price<21){
				$price_range = '1-20';
			}else if ($price>20 && $price<101){
				$price_range = '21-100';
			}else if ($price>100 && $price<201){
				$price_range = '101-200';
			}else if ($price>200 && $price<501){
				$price_range = '201-500';
			}else if ($price>500){
				$price_range = '501+';
			}
			$excludeArr = array("deal_amount","deal_start_date","deal_end_date","gateway_tbl_length","image","productID","changeorder","status","attribute_name","attribute_val","product_image","userID"
			, "country", "state", "city", "post_code", "property_name", "apt", "address", "feature", "datefrom", "dateto", "expiredate", "google_map", "add_feature", "rentals_policy", "trams_condition", "invoice_template","confirm_email","order_email","imaged","longitude","latitude","imgPriority","imgtitle","prd_id","prdiii","user_id","neighborhood");

			if ($this->input->post('status') != ''){
				$product_status = 'Publish';
			}else {
				$product_status = 'UnPublish';
			}

			$seourl = url_title($product_name, '-', TRUE);
			$checkSeo = $this->product_model->get_all_details(PRODUCT,array('seourl'=>$seourl,'id !='=>$product_id));
			$seo_count = 1;
			while ($checkSeo->num_rows()>0){
				$seourl = $seourl.$seo_count;
				$seo_count++;
				$checkSeo = $this->product_model->get_all_details(PRODUCT,array('seourl'=>$seourl,'id !='=>$product_id));
			}

			$ImageName = '';
			$list_val_str = '';

			$list_val_arr = $this->input->post('list_value');
			$NeighborhoodStr = @implode(',',$this->input->post('neighborhood'));


			if (is_array($list_val_arr) && count($list_val_arr)>0){
				$list_val_str = implode(',', $list_val_arr);
			}

			$datestring = "%Y-%m-%d %h:%i:%s";
			$time = time();
			if ($product_id == ''){
				$inputArr = array(
							'created' => mdate($datestring,$time),
							'seourl' => $seourl,
							'list_value' => $list_val_str,
							'price_range'=> $price_range,
							'neighborhood'=> $NeighborhoodStr,
							'user_id' => $this->input->post('user_id'),
							'seller_product_id'	=> mktime()
				);
			}else {
				$inputArr = array(
							'modified' => mdate($datestring,$time),
							'seourl' => $seourl,
							'neighborhood'=> $NeighborhoodStr,
							'category_id' => $category_id,
							'status' => $product_status,
							'price_range'=> $price_range,
							'list_name' => $list_name_str,
							'user_id' => $this->input->post('user_id'),
							'list_value' => $list_val_str
				);
			}

			if ($product_id != ''){
				$this->update_old_list_values($product_id,$list_val_arr,$old_product_details);
			}



			$dataArr = array_merge($inputArr,$product_data,$facility_list,$dataArr);




			$condition = array('id' => $product_id);


			$this->product_model->commonInsertUpdate(PRODUCT,'update',$excludeArr,$dataArr,$condition);
			

			$Attr_val_str = '';
			

			$this->setErrorMessage('success','Host added successfully');
			
			$this->update_price_range_in_table('add',$price_range,$product_id,$old_product_details);
			


			/* $this->load->library('googlemaps');

			$GeoAddress=str_replace(" ","+",$this->input->post('address'));
			$CityDateArr=$this->product_model->get_all_details(CITY,array('id'=>$this->input->post('city')));
			$GeoCity=str_replace(" ","+",$CityDateArr->row()->name);
			$geocode=file_get_contents('http://maps.google.com/maps/api/geocode/json?address='.$GeoAddress.',+'.$GeoCity.',+'.$this->input->post('post_code').'&sensor=false');

			$output= json_decode($geocode);

			$lat = $output->results[0]->geometry->location->lat;
			$long = $output->results[0]->geometry->location->lng;
			if($lat =='' || $long =='' ){
				$lat ='32.2133861';
				$long ='-5.4588187';
			} */

            $condition1 = array('product_id'=>$product_id);
			$inputArr1 = array(
							'product_id' =>$product_id,
							'country' => $this->input->post('country'),
							'state' => $this->input->post('state'),
							'city' => $this->input->post('city'),
							'post_code' => $this->input->post('post_code'),
							'apt' => $this->input->post('apt'),
							'address'=> $this->input->post('address'),
							'latitude'=> $this->input->post('latitude'),
							'longitude'=> $this->input->post('longitude')
			);
			$this->product_model->update_details(PRODUCT_ADDRESS,$inputArr1,$condition1);
			


			$inputArr2=array();
			$inputArr2 = array(
							'product_id' =>$product_id,
							'feature' => $this->input->post('feature'),
							'google_map' => $this->input->post('google_map'),
							'add_feature' => $this->input->post('add_feature'),
							'rentals_policy' => $this->input->post('rentals_policy'),
							'trams_condition' => $this->input->post('trams_condition'),
							'confirm_email' => $this->input->post('confirm_email'),
							'order_email' => $this->input->post('order_email'),
							'invoice_template'=> $this->input->post('invoice_template')
			);


			$this->product_model->simple_insert(PRODUCT_FEATURES,$inputArr2);

//echo 'gangatahran';die;	

			$DateUpdateCheck = $this->product_model->get_all_details(PRODUCT_BOOKING,array('product_id'=>$product_id,'dateto'=>$this->input->post('dateto'),'datefrom'=>$this->input->post('datefrom')));
			
			if($DateUpdateCheck->num_rows() == '1'){}else{
					
				
				$DateArr=$this->GetDays($this->input->post('datefrom'), $this->input->post('dateto'));
				
				$dateDispalyRowCount=0;
				if(!empty($DateArr)){
					$dateArrVAl .='{';
					foreach($DateArr as $dateDispalyRow){

						if($dateDispalyRowCount==0){

							$dateArrVAl .='"'.$dateDispalyRow.'":{"available":"1","bind":0,"info":"","notes":"","price":"'.$price.'","promo":"","status":"available"}';
						}else{
							$dateArrVAl .=',"'.$dateDispalyRow.'":{"available":"1","bind":0,"info":"","notes":"","price":"'.$price.'","promo":"","status":"available"}';
						}
						$dateDispalyRowCount=$dateDispalyRowCount+1;
					}
					$dateArrVAl .='}';
				}
				$inputArr4=array();
				$inputArr4 = array(
								'id' =>$product_id,
								'data' => trim($dateArrVAl)
				);
				$this->product_model->update_details(SCHEDULE,$inputArr4,array('id'=>$product_id));
			}

			$inputArr3=array();
			$inputArr3 = array(
							'dateto' => $this->input->post('dateto'),
							'datefrom' => $this->input->post('datefrom'),
							'price' => $this->input->post('price'),
			);
			$this->product_model->update_details(PRODUCT_BOOKING,$inputArr3,$condition1);

          //Update the list table
			if (is_array($list_val_arr)){
				foreach ($list_val_arr as $list_val_row){
					$list_val_details = $this->product_model->get_all_details(LIST_VALUES,array('id'=>$list_val_row));
					if ($list_val_details->num_rows()==1){
						$product_count = $list_val_details->row()->product_count;
						$products_in_this_list = $list_val_details->row()->products;
						$products_in_this_list_arr = explode(',', $products_in_this_list);
						if (!in_array($product_id, $products_in_this_list_arr)){
							array_push($products_in_this_list_arr, $product_id);
							$product_count++;
							$list_update_values = array(
								'products'=>implode(',', $products_in_this_list_arr),
								'product_count'=>$product_count
							);
							$list_update_condition = array('id'=>$list_val_row);
							$this->product_model->update_details(LIST_VALUES,$list_update_values,$list_update_condition);
						}
					}
				}
			}
			

			//Update user table count
			if ($this->checkLogin('U') != ''){
				$user_details = $this->product_model->get_all_details(USERS,array('id'=>$this->checkLogin('U')));
				if ($user_details->num_rows()==1){
					$prod_count = $user_details->row()->products;
					$prod_count++;
					$this->product_model->update_details(USERS,array('products'=>$prod_count),array('id'=>$this->checkLogin('U')));
				}
			}
			redirect('admin/product/display_product_list');
		}

	}

	/**
	 *
	 * This function insert and edit product
	 */
	public function insertEditProduct(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$product_data=array();

			$product_name = $this->input->post('product_name');
			$product_id = $this->input->post('productID');
			if ($product_name == ''){
				$this->setErrorMessage('error','Product name required');
				echo "<script>window.history.go(-1)</script>";exit();
			}
			$price = $this->input->post('price');
			if ($price == ''){
				$this->setErrorMessage('error','Price required');
				echo "<script>window.history.go(-1)</script>";exit();
			}else if ($price <= 0){
				$this->setErrorMessage('error','Price must be greater than zero');
				echo "<script>window.history.go(-1)</script>";exit();
			}
			if ($product_id == ''){
				$old_product_details = array();
				$condition = array('product_name' => $product_name);
			}else {
				$old_product_details = $this->product_model->get_all_details(PRODUCT,array('id'=>$product_id));
				$condition = array('product_name' => $product_name,'id !=' => $product_id);
			}
			/*			$duplicate_name = $this->product_model->get_all_details(PRODUCT,$condition);
			 if ($duplicate_name->num_rows() > 0){
				$this->setErrorMessage('error','Product name already exists');
				echo "<script>window.history.go(-1)</script>";exit();
				}
				*/


			$price_range = '';
			if ($price>0 && $price<21){
				$price_range = '1-20';
			}else if ($price>20 && $price<101){
				$price_range = '21-100';
			}else if ($price>100 && $price<201){
				$price_range = '101-200';
			}else if ($price>200 && $price<501){
				$price_range = '201-500';
			}else if ($price>500){
				$price_range = '501+';
			}
			$excludeArr = array("gateway_tbl_length","image","productID","changeorder","status","attribute_name","attribute_val","product_image","userID"
			, "country", "state", "city", "post_code", "property_name", "apt", "address", "feature", "datefrom", "dateto", "expiredate", "google_map", "add_feature", "rentals_policy", "trams_condition", "invoice_template","confirm_email","order_email","imaged","longitude","latitude","imgPriority","imgtitle");

			if ($this->input->post('status') != ''){
				$product_status = 'Publish';
			}else {
				$product_status = 'UnPublish';
			}

			$seourl = url_title($product_name, '-', TRUE);
			$checkSeo = $this->product_model->get_all_details(PRODUCT,array('seourl'=>$seourl,'id !='=>$product_id));
			$seo_count = 1;
			while ($checkSeo->num_rows()>0){
				$seourl = $seourl.$seo_count;
				$seo_count++;
				$checkSeo = $this->product_model->get_all_details(PRODUCT,array('seourl'=>$seourl,'id !='=>$product_id));
			}

			$ImageName = '';
			$list_val_str = '';

			$list_val_arr = $this->input->post('list_value');

			//echo '<pre>';print_r($list_val_arr);die;
			if (is_array($list_val_arr) && count($list_val_arr)>0){
				$list_val_str = implode(',', $list_val_arr);
			}

			$datestring = "%Y-%m-%d %h:%i:%s";
			$time = time();
			if ($product_id == ''){
				$inputArr = array(
							'created' => mdate($datestring,$time),
							'seourl' => $seourl,
							'product_title' => $product_name,
							'list_value' => $list_val_str,
							'list_name' => $list_val_str,
							'price_range'=> $price_range,
							'user_id' => 0,
							'seller_product_id'	=> mktime()
				);
			}else {
				$inputArr = array(
							'modified' => mdate($datestring,$time),
							'seourl' => $seourl,
							'product_title' => $product_name,
							'category_id' => $category_id,
							'status' => $product_status,
							'price_range'=> $price_range,
							'list_name' => $list_name_str,
							'list_value' => $list_val_str
				);
			}


			$logoDirectory ='./images/product';
			if(!is_dir($logoDirectory))
			{
				mkdir($logoDirectory,0777);
			}
			//$config['overwrite'] = FALSE;
			$config['remove_spaces'] = FALSE;
			$config['upload_path'] = $logoDirectory;
			$config['allowed_types'] = 'jpg|jpeg|gif|png';


			$this->load->library('upload', $config);
			$this->upload->initialize($config);
			$file_element_name = 'product_image';
			$ImageName_orig_name ='';
			$ImageName_encrypt_name ='';

			$file_element_name = 'product_image';

			$filePRoductUploadData = array();
			$setPriority = 0;
			$imgtitle = $this->input->post('imgtitle');
			if ( $this->upload->do_multi_upload('product_image'))
			{
					
					
			}

			// echo "<pre>";print_r($_FILES['product_image']);die;
			$logoDetails = $this->upload->get_multi_upload_data();

			if ($product_id != ''){
				$this->update_old_list_values($product_id,$list_val_arr,$old_product_details);
			}



			$dataArr = array_merge($inputArr,$product_data);



			if ($product_id == ''){
				$condition = array();


				$this->product_model->commonInsertUpdate(PRODUCT,'insert',$excludeArr,$dataArr,$condition);

				$product_id = $this->product_model->get_last_insert_id();

				$Attr_val_str = '';
				/*$Attr_val_arr = $this->input->post('list_value');
				 if (is_array($Attr_val_arr) && count($Attr_val_arr)>0){
					for($k=0;$k<sizeof($Attr_val_arr);$k++){
					$dataSubArr = '';
					$dataSubArr = array('product_id'=> $product_id,'attr_price'=>$Attr_val_arr[$k]);
					//echo '<pre>'; print_r($dataSubArr);
					$this->product_model->add_subproduct_insert($dataSubArr);
					}
					}*/

				$this->setErrorMessage('success','Host added successfully');
				$product_id = $this->product_model->get_last_insert_id();
				$this->update_price_range_in_table('add',$price_range,$product_id,$old_product_details);
				//echo '<pre>';
				//print_r($excludeArr);print_r($dataArr);print_r($condition);die;
				//echo $this->input->post('status');die;


					
					
				if ($product_id == ''){
					$product_data = array( 'image' => $ImageName);

				}else {

					$existingImage = $this->input->post('imaged');

					$newPOsitionArr = $this->input->post('changeorder');
					$imagePOsit = array();

					for($p=0;$p<sizeof($existingImage);$p++) {
						$imagePOsit[$newPOsitionArr[$p]] = $existingImage[$p];
					}

					ksort($imagePOsit);
					foreach ($imagePOsit as $keysss => $vald) {
						$imgArraypos[]=$vald;
					}
					$imagArraypo0 = @implode(",",$imgArraypos);
					$allImages = $imagArraypo0.','.$ImageName;

					$product_data = array( 'image' => $allImages);
				}
					
					
					
					
					
				$this->load->library('googlemaps');

				$GeoAddress=str_replace(" ","+",$this->input->post('address'));
				$CityDateArr=$this->product_model->get_all_details(CITY,array('id'=>$this->input->post('city')));

				$geocode=file_get_contents('http://maps.google.com/maps/api/geocode/json?address='.$GeoAddress.',+'.$CityDateArr->row()->name.',+'.$this->input->post('post_code').',+moroco&sensor=false');
					
				$output= json_decode($geocode);
					
				$lat = $output->results[0]->geometry->location->lat;
				$long = $output->results[0]->geometry->location->lng;
				if($lat =='' || $long =='' ){
					$lat ='32.2133861';
					$long ='-5.4588187';
				}
					
					
				$inputArr1 = array(
							'product_id' =>$product_id,
							'country' => $this->input->post('country'),
							'state' => $this->input->post('state'),
							'city' => $this->input->post('city'),
							'post_code' => $this->input->post('post_code'),
							'apt'	=>	$this->input->post('apt'),
							'address'=> $this->input->post('address'),
							'latitude'=> $this->input->post('latitude'),
							'longitude'=> $this->input->post('longitude')
				);

				$this->product_model->simple_insert(PRODUCT_ADDRESS,$inputArr1);


				$inputArr2=array();
				$inputArr2 = array(
							'product_id' =>$product_id,
							'feature' => $this->input->post('feature'),
							'google_map' => $this->input->post('google_map'),
							'add_feature' => $this->input->post('add_feature'),
							'rentals_policy' => $this->input->post('rentals_policy'),
							'trams_condition' => $this->input->post('trams_condition'),
							'confirm_email' => $this->input->post('confirm_email'),
							'order_email' => $this->input->post('order_email'),
							'invoice_template'=> $this->input->post('invoice_template')
				);


				$this->product_model->simple_insert(PRODUCT_FEATURES,$inputArr2);

				$inputArr3=array();
				$inputArr3 = array(
							'product_id' =>$product_id,
							'dateto' => $this->input->post('dateto'),
							'datefrom' => $this->input->post('datefrom'),
							'price' => $this->input->post('price'),
				);
				$this->product_model->simple_insert(PRODUCT_BOOKING,$inputArr3);

				$DateArr=$this->GetDays($this->input->post('datefrom'), $this->input->post('dateto'));
				$dateDispalyRowCount=0;
				if(!empty($DateArr)){
					$dateArrVAl .='{';
					foreach($DateArr as $dateDispalyRow){
							
						if($dateDispalyRowCount==0){

							$dateArrVAl .='"'.$dateDispalyRow.'":{"available":"1","bind":0,"info":"","notes":"","price":"'.$price.'","promo":"","status":"available"}';
						}else{
							$dateArrVAl .=',"'.$dateDispalyRow.'":{"available":"1","bind":0,"info":"","notes":"","price":"'.$price.'","promo":"","status":"available"}';
						}
						$dateDispalyRowCount=$dateDispalyRowCount+1;
					}
					$dateArrVAl .='}';
				}
				$inputArr4=array();
				$inputArr4 = array(
							'id' =>$product_id,
							'data' => trim($dateArrVAl)
				);
				$this->product_model->simple_insert(SCHEDULE,$inputArr4);
			}else {
				$condition = array('id'=>$product_id);

				/*if($this->input->post('prd_id')!=0) {
				 $condition =array('id'=>'182');*/
				$this->product_model->commonInsertUpdate(PRODUCT,'update',$excludeArr,$dataArr,$condition);
				/*}*/

				/*$Attr_name_str = $Attr_val_str = '';
				 $Attr_name_arr = $this->input->post('product_attribute_name');
				 $Attr_val_arr = $this->input->post('product_attribute_val');
				 if (is_array($Attr_name_arr) && count($Attr_name_arr)>0){
					for($k=0;$k<sizeof($Attr_name_arr);$k++){
					$dataSubArr = '';
					$dataSubArr = array('product_id'=> $product_id,'attr_id'=>$Attr_name_arr[$k],'attr_price'=>$Attr_val_arr[$k]);
					//echo '<pre>'; print_r($dataSubArr);
					$this->product_model->add_subproduct_insert($dataSubArr);
					}
					}*/
				$condition1 = array('product_id'=>$product_id);
				$inputArr1 = array(
							'product_id' =>$product_id,
							'country' => $this->input->post('country'),
							'state' => $this->input->post('state'),
							'city' => $this->input->post('city'),
							'post_code' => $this->input->post('post_code'),
							'apt' => $this->input->post('apt'),
							'address'=> $this->input->post('address'),
							'latitude'=> $this->input->post('latitude'),
							'longitude'=> $this->input->post('longitude')
				);
				$this->product_model->update_details(PRODUCT_ADDRESS,$inputArr1,$condition1);

				$inputArr2=array();
				$inputArr2 = array(
							'product_id' =>$product_id,
							'feature' => $this->input->post('feature'),
							'google_map' => $this->input->post('google_map'),
							'add_feature' => $this->input->post('add_feature'),
							'rentals_policy' => $this->input->post('rentals_policy'),
							'trams_condition' => $this->input->post('trams_condition'),
							'confirm_email' => $this->input->post('confirm_email'),
							'order_email' => $this->input->post('order_email'),
							'invoice_template'=> $this->input->post('invoice_template')
				);

				$this->product_model->update_details(PRODUCT_FEATURES,$inputArr2,$condition1);


				$DateUpdateCheck = $this->product_model->get_all_details(PRODUCT_BOOKING,array('product_id'=>$product_id,'dateto'=>$this->input->post('dateto'),'datefrom'=>$this->input->post('datefrom')));
				if($DateUpdateCheck->num_rows() == '1'){}else{


					$DateArr=$this->GetDays($this->input->post('datefrom'), $this->input->post('dateto'));
					$dateDispalyRowCount=0;
					if(!empty($DateArr)){
						$dateArrVAl .='{';
						foreach($DateArr as $dateDispalyRow){

							if($dateDispalyRowCount==0){
									
								$dateArrVAl .='"'.$dateDispalyRow.'":{"available":"1","bind":0,"info":"","notes":"","price":"'.$price.'","promo":"","status":"available"}';
							}else{
								$dateArrVAl .=',"'.$dateDispalyRow.'":{"available":"1","bind":0,"info":"","notes":"","price":"'.$price.'","promo":"","status":"available"}';
							}
							$dateDispalyRowCount=$dateDispalyRowCount+1;
						}
						$dateArrVAl .='}';
					}
					$inputArr4=array();
					$inputArr4 = array(
								'id' =>$product_id,
								'data' => trim($dateArrVAl)
					);
					$this->product_model->update_details(SCHEDULE,$inputArr4,array('id'=>$product_id));
				}

				$inputArr3=array();
				$inputArr3 = array(
							'dateto' => $this->input->post('dateto'),
							'datefrom' => $this->input->post('datefrom'),
							'price' => $this->input->post('price'),
				);
				$this->product_model->update_details(PRODUCT_BOOKING,$inputArr3,$condition1);

				$this->setErrorMessage('success','Rental updated successfully');
				$this->update_price_range_in_table('edit',$price_range,$product_id,$old_product_details);
			}

			//Update the list table
			if (is_array($list_val_arr)){
				foreach ($list_val_arr as $list_val_row){
					$list_val_details = $this->product_model->get_all_details(LIST_VALUES,array('id'=>$list_val_row));
					if ($list_val_details->num_rows()==1){
						$product_count = $list_val_details->row()->product_count;
						$products_in_this_list = $list_val_details->row()->products;
						$products_in_this_list_arr = explode(',', $products_in_this_list);
						if (!in_array($product_id, $products_in_this_list_arr)){
							array_push($products_in_this_list_arr, $product_id);
							$product_count++;
							$list_update_values = array(
								'products'=>implode(',', $products_in_this_list_arr),
								'product_count'=>$product_count
							);
							$list_update_condition = array('id'=>$list_val_row);
							$this->product_model->update_details(LIST_VALUES,$list_update_values,$list_update_condition);
						}
					}
				}
			}








			//upload image the table
			foreach($logoDetails as $fileVal)
			{
				@copy('./images/product/'.$fileVal['file_name'],'./images/product/thumb/'.$fileVal['file_name']);
					
				if (!$this->imageResizeWithSpace(300, 200, $fileVal['file_name'], './images/product/thumb/'))
				{

					$error = array('error' => $this->upload->display_errors());
				}
				else
				{
					$sliderUploadedData = array($this->upload->data());


				}
				$imagePriority = $this->input->post('imgPriority');
				$filePRoductUploadData = array('product_id'=>$product_id,'imgtitle'=>$imgtitle[$setPriority],'product_image'=>$fileVal['file_name'],'imgPriority'=>	$imagePriority[$setPriority]);

				$this->product_model->simple_insert(PRODUCT_PHOTOS,$filePRoductUploadData);
				$setPriority = $setPriority + 1;
			}



			//Update user table count
			if ($this->checkLogin('U') != ''){
				$user_details = $this->product_model->get_all_details(USERS,array('id'=>$this->checkLogin('U')));
				if ($user_details->num_rows()==1){
					$prod_count = $user_details->row()->products;
					$prod_count++;
					$this->product_model->update_details(USERS,array('products'=>$prod_count),array('id'=>$this->checkLogin('U')));
				}
			}
			redirect('admin/product/display_product_list');
		}
	}


	/**
	 *
	 * Update the products_count and products in list_values table, when edit or delete products
	 * @param Integer $product_id
	 * @param Array $list_val_arr
	 * @param Array $old_product_details
	 */
	public function update_old_list_values($product_id,$list_val_arr,$old_product_details=''){
		if ($old_product_details == '' || count($old_product_details)==0){
			$old_product_details = $this->product_model->get_all_details(PRODUCT,array('id'=>$product_id));
		}
		$old_product_list_values = array_filter(explode(',', $old_product_details->row()->list_value));
		if (count($old_product_list_values)>0){
			if (!is_array($list_val_arr)){
				$list_val_arr = array();
			}
			foreach ($old_product_list_values as $old_product_list_values_row){
				if (!in_array($old_product_list_values_row, $list_val_arr)){
					$list_val_details = $this->product_model->get_all_details(LIST_VALUES,array('id'=>$old_product_list_values_row));
					if ($list_val_details->num_rows()==1){
						$product_count = $list_val_details->row()->product_count;
						$products_in_this_list = $list_val_details->row()->products;
						$products_in_this_list_arr = array_filter(explode(',', $products_in_this_list));
						if (in_array($product_id, $products_in_this_list_arr)){
							if (($key = array_search($product_id, $products_in_this_list_arr))!==false){
								unset($products_in_this_list_arr[$key]);
							}
							$product_count--;
							$list_update_values = array(
								'products'=>implode(',', $products_in_this_list_arr),
								'product_count'=>$product_count
							);
							$list_update_condition = array('id'=>$old_product_list_values_row);
							$this->product_model->update_details(LIST_VALUES,$list_update_values,$list_update_condition);
						}
					}
				}
			}
		}

		if ($old_product_details != '' && count($old_product_details)>0 && $old_product_details->num_rows()==1){

			/*** Delete product id from lists which was created by users ***/

			$user_created_lists = $this->product_model->get_user_created_lists($old_product_details->row()->seller_product_id);
			if ($user_created_lists->num_rows()>0){
				foreach ($user_created_lists->result() as $user_created_lists_row){
					$list_product_ids = array_filter(explode(',', $user_created_lists_row->product_id));
					if (($key=array_search($old_product_details->row()->seller_product_id,$list_product_ids )) !== false){
						unset($list_product_ids[$key]);
						$update_ids = array('product_id'=>implode(',', $list_product_ids));
						$this->product_model->update_details(LISTS_DETAILS,$update_ids,array('id'=>$user_created_lists_row->id));
					}
				}
			}

			/*** Delete product id from product likes table and decrease the user likes count ***/

			$like_list = $this->product_model->get_like_user_full_details($old_product_details->row()->seller_product_id);
			if ($like_list->num_rows()>0){
				foreach ($like_list->result() as $like_list_row){
					$likes_count = $like_list_row->likes;
					$likes_count--;
					if ($likes_count<0)$likes_count=0;
					$this->product_model->update_details(USERS,array('likes'=>$likes_count),array('id'=>$like_list_row->id));
				}
				$this->product_model->commonDelete(PRODUCT_LIKES,array('product_id'=>$old_product_details->row()->seller_product_id));
			}

			/*** Delete product id from activity, notification and product comment tables ***/

			$this->product_model->commonDelete(USER_ACTIVITY,array('activity_id'=>$old_product_details->row()->seller_product_id));
			$this->product_model->commonDelete(NOTIFICATIONS,array('activity_id'=>$old_product_details->row()->seller_product_id));
			$this->product_model->commonDelete(PRODUCT_COMMENTS,array('product_id'=>$old_product_details->row()->seller_product_id));

		}
	}

	public function ChangeFeaturedProducts(){
		$ingIDD = $this->input->post('imgId');
		$FtrId = $this->input->post('FtrId');
		$currentPage = $this->input->post('cpage');
		$dataArr = array('featured' => $FtrId);
		$condition = array('id' => $ingIDD);
		$this->product_model->update_details(PRODUCT,$dataArr,$condition);
		echo $result=$FtrId;
	}

	public function update_price_range_in_table($mode='',$price_range='',$product_id='0',$old_product_details=''){
		$list_values = $this->product_model->get_all_details(LIST_VALUES,array('list_value'=>$price_range));
		if ($list_values->num_rows() == 1){
			$products = explode(',', $list_values->row()->products);
			$product_count = $list_values->row()->product_count;
			if ($mode == 'add'){
				if (!in_array($product_id, $products)){
					array_push($products, $product_id);
					$product_count++;
				}
			}else if ($mode == 'edit'){
				$old_price_range = '';
				if ($old_product_details!='' && count($old_product_details)>0 && $old_product_details->num_rows()==1){
					$old_price_range = $old_product_details->row()->price_range;
				}
				if ($old_price_range != '' && $old_price_range != $price_range){
					$old_list_values = $this->product_model->get_all_details(LIST_VALUES,array('list_value'=>$old_price_range));
					if ($old_list_values->num_rows() == 1){
						$old_products = explode(',', $old_list_values->row()->products);
						$old_product_count = $old_list_values->row()->product_count;
						if (in_array($product_id, $old_products)){
							if (($key=array_search($product_id, $old_products)) !== false){
								unset($old_products[$key]);
								$old_product_count--;
								$updateArr = array('products'=>implode(',', $old_products),'product_count'=>$old_product_count);
								$updateCondition = array('list_value'=>$old_price_range);
								$this->product_model->update_details(LIST_VALUES,$updateArr,$updateCondition);
							}
						}
					}
					if (!in_array($product_id, $products)){
						array_push($products, $product_id);
						$product_count++;
					}
				}else if ($old_price_range != '' && $old_price_range == $price_range){
					if (!in_array($product_id, $products)){
						array_push($products, $product_id);
						$product_count++;
					}
				}
			}
			$updateArr = array('products'=>implode(',', $products),'product_count'=>$product_count);
			$updateCondition = array('list_value'=>$price_range);
			$this->product_model->update_details(LIST_VALUES,$updateArr,$updateCondition);
		}
	}

	/**
	 *
	 * Ajax function for delete the product pictures
	 */
	public function editPictureProducts(){
		$ingIDD = $this->input->post('imgId');
		$currentPage = $this->input->post('cpage');
		$id = $this->input->post('val');
		$productImage = explode(',',$this->session->userdata('product_image_'.$ingIDD));
		if(count($productImage) < 2) {
			echo json_encode("No");exit();
		} else {
			$empImg = 0;
			foreach ($productImage as $product) {
				if ($product != ''){
					$empImg++;
				}
			}
			if ($empImg<2){
				echo json_encode("No");exit();
			}
			$this->session->unset_userdata('product_image_'.$ingIDD);
			$resultVar = $this->setPictureProducts($productImage,$this->input->post('position'));
			$insertArrayItems = trim(implode(',',$resultVar)); //need validation here...because the array key changed here

			$this->session->set_userdata(array('product_image_'.$ingIDD => $insertArrayItems));
			$dataArr = array('image' => $insertArrayItems);
			$condition = array('id' => $ingIDD);
			$this->product_model->update_details(PRODUCT,$dataArr,$condition);
			echo json_encode($insertArrayItems);
		}
	}

	/**
	 *
	 * This function loads the edit product form
	 */
	public function edit_product_form(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'Edit Rental';
			$product_id = $this->uri->segment(4,0);

			$condition = array('id' => $product_id);
			$this->data['product_details'] = $this->product_model->view_product1($product_id);
			$this->data['product_accomodate'] = $this->product_model->view_product1($product_id);
			$this->data['userdetails'] =  $this->product_model->get_selected_fields_records('id,firstname,lastname',USERS,'where status="Active" ');
			//print_r($this->data['product_details']->row());
			//die;
			$MembershipDetails = $this->user_model->get_all_details(FANCYYBOX,array('id'=>$product_id));

			if ($this->data['product_details']->num_rows() == 1){
				$this->data['imgDetail'] = $this->product_model->get_images($product_id);
				$this->data['categoryView'] = $this->product_model->get_category_details($this->data['product_details']->row()->category_id);
				$this->data['atrributeValue'] = $this->product_model->view_atrribute_details();
				$this->data['SubPrdVal'] = $this->product_model->view_subproduct_details($product_id);
				$this->data['PrdattrVal'] = $this->product_model->view_product_atrribute_details();


				$this->data['RentalCountry'] = $this->product_model->get_all_details(COUNTRY_LIST,array('status'=>'Active'));
				$this->data['RentalState'] = $this->product_model->get_all_details(STATE_TAX,array('status'=>'Active'));
				$this->data['RentalCity'] =  $this->product_model->get_all_details(CITY,array('status'=>'Active'));

				$this->data['listNameCnt'] = $this->product_model->get_all_details(ATTRIBUTE,array('status'=>'Active'));
				$this->data['listValueCnt'] = $this->product_model->get_all_details(LIST_VALUES,array('status'=>'Active'));
				$list_valueArr=explode(',',$this->data['product_details']->row()->list_value);
				$listIdArr=array();
				/*foreach($this->data['listValueCnt']->result_array() as $listCountryValue){
				 $listIdArr[]=$listCountryValue['list_id'];
				 }

				 if($this->data['listNameCnt']->num_rows() > 0){

				 foreach($this->data['listNameCnt']->result_array() as $listCountryName){

					$this->data['listCountryValue'] .='
					<script language="javascript">
					$(function(){

					$("#selectall'.$listCountryName['id'].'").click(function () {
					$(".cb'.$listCountryName['id'].'").attr("checked", this.checked);
					});

					$(".cb'.$listCountryName['id'].'").click(function(){

					if($(".cb'.$listCountryName['id'].'").length == $(".cb:checked").length) {
					$("#selectall'.$listCountryName['id'].'").attr("checked", "checked");
					} else {
					$("#selectall'.$listCountryName['id'].'").removeAttr("checked");
					}

					});
					});
					</script>


					<br /><span class="cat1"><!-- <input name="list_name[]" class="checkbox" type="checkbox" value="'.$listCountryName['id'].'" tabindex="7"> --><strong>'.ucfirst($listCountryName['attribute_name']).' &nbsp;</strong><input type="checkbox" id="selectall'.$listCountryName['id'].'"/></span><br />';

					foreach($this->data['listValueCnt']->result_array() as $listCountryValue){

					//if(in_array($listCountryName['id'],$listIdArr)){
					if($listCountryValue['list_id']==$listCountryName['id']){

					if (in_array($listCountryValue['id'],$list_valueArr)){
					$checkStr = 'checked="checked"';
					}else {
					$checkStr = '';
					}




					$this->data['listCountryValue'] .='
					<div style="float:left; margin-left:10px;">
					<span>
					<input name="list_value[]" class="checkbox cb'.$listCountryName['id'].'" '.$checkStr.' type="checkbox" value="'.$listCountryValue['id'].'" tabindex="7">
					<label class="choice">'.ucfirst($listCountryValue['list_value']).'</label></span></div>';

					}

					}

					}$this->data['listCountryValue'] .='';
					}*/





				foreach($this->data['listValueCnt']->result_array() as $listCountryValue){
					$listIdArr[]=$listCountryValue['list_id'];
				}

				if($this->data['listNameCnt']->num_rows() > 0){

					foreach($this->data['listNameCnt']->result_array() as $listCountryName){

						$this->data['listCountryValue'] .='
					<script language="javascript">
$(function(){
 
    $("#selectall'.$listCountryName['id'].'").click(function () {
          $(".cb'.$listCountryName['id'].'").attr("checked", this.checked);
    });
 
    $(".cb'.$listCountryName['id'].'").click(function(){
 
        if($(".cb'.$listCountryName['id'].'").length == $(".cb:checked").length) {
            $("#selectall'.$listCountryName['id'].'").attr("checked", "checked");
        } else {
            $("#selectall'.$listCountryName['id'].'").removeAttr("checked");
        }
 
    });
});
</script>
				
					
					<div class="dashboard_price_main">
            
            	<div class="dashboard_price">
            
                    <div class="dashboard_price_left"><h3>'.ucfirst($listCountryName['attribute_name']).'</h3>'.$listCountryName['description'].'<br /><br /><br />Select All<input type="checkbox" id="selectall'.$listCountryName['id'].'"/></div><div class="dashboard_price_right"><ul class="facility_listed">';
							
						foreach($this->data['listValueCnt']->result_array() as $listCountryValue){

							//if(in_array($listCountryName['id'],$listIdArr)){
							if($listCountryValue['list_id']==$listCountryName['id']){

								if (in_array($listCountryValue['id'],$list_valueArr)){
									$checkStr = 'checked="checked"';
								}else {
									$checkStr = '';
								}




								$this->data['listCountryValue'] .='<li><input type="checkbox" name="list_value[]" class="checkbox_check cb'.$listCountryName['id'].'" '.$checkStr.'value="'.$listCountryValue['id'].'"/><span>'.ucfirst($listCountryValue['list_value']).'</span></li>';

							}

						}$this->data['listCountryValue'] .='</ul>
                    
                    
                    </div>
                
                </div> 
                
                
                
            
            </div>';
							
					}
				}
					





				$this->load->library('googlemaps');
				$config['center'] = $this->data['product_details']->row()->latitude.','.$this->data['product_details']->row()->longitude;
				$config['zoom'] = 'auto';
				$this->googlemaps->initialize($config);
				$marker = array();
				$marker['position'] =$this->data['product_details']->row()->latitude.','.$this->data['product_details']->row()->longitude;
				$marker['draggable'] = true;
				$marker['ondragend'] = 'updateDatabase(event.latLng.lat(), event.latLng.lng());';
				$this->googlemaps->add_marker($marker);
				$this->data['map']= $this->googlemaps->create_map();


				//echo '<pre>'; print_r($this->data['SubPrdVal']->result()); die;
				$this->load->view('admin/product/edit_product',$this->data);
			}else {
				redirect('admin');
			}
		}
	}

	/* Ajax update for edit product */
	public function ajaxProductAttributeUpdate(){

		$conditons = array('pid'=>$this->input->post('attId'));
		$dataArr = array('attr_id'=>$this->input->post('attname'),'attr_price'=>$this->input->post('attval'));
		$subproductDetails = $this->product_model->edit_subproduct_update($dataArr,$conditons);
	}

	/**
	 *
	 * This function change the selling product status
	 */
	public function change_product_status(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$mode = $this->uri->segment(4,0);
			$product_id = $this->uri->segment(5,0);
			$status = ($mode == '0')?'UnPublish':'Publish';
			$newdata = array('status' => $status);
			$condition = array('id' => $product_id);
			$this->product_model->update_details(PRODUCT,$newdata,$condition);
			$this->setErrorMessage('success','Rental Status Changed Successfully');
			redirect('admin/product/display_product_list');
		}
	}

	/**
	 *
	 * This function change the affiliate product status
	 */
	public function change_user_product_status(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$mode = $this->uri->segment(4,0);
			$product_id = $this->uri->segment(5,0);
			$status = ($mode == '0')?'UnPublish':'Publish';
			$newdata = array('status' => $status);
			$condition = array('seller_product_id' => $product_id);
			$this->product_model->update_details(USER_PRODUCTS,$newdata,$condition);
			$this->setErrorMessage('success','Rental Status Changed Successfully');
			redirect('admin/product/display_user_product_list');
		}
	}

	/**
	 *
	 * This function loads the product view page
	 */
	public function view_product(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'View Rental';
			$product_id = $this->uri->segment(4,0);
			$condition = array('id' => $product_id);
			//$this->data['product_details'] = $this->product_model->get_all_details(PRODUCT,$condition);
			$this->data['product_details'] = $this->product_model->view_product1($product_id);

			if ($this->data['product_details']->num_rows() == 1){
				$this->data['catList'] = $this->product_model->get_cat_list($this->data['product_details']->row()->category_id);
				$this->data['prd_adrs'] = $this->product_model->get_all_details(PRODUCT_ADDRESS,array('product_id'=>$product_id));
				$this->data['RentalCountry'] = $this->product_model->get_all_details(LOCATIONS,array('id'=>$this->data['prd_adrs']->row()->country));
				$this->data['RentalState'] = $this->product_model->get_all_details(LOCATIONS,array('id'=>$this->data['prd_adrs']->row()->state));
				$this->data['RentalCity'] = $this->product_model->get_all_details(LOCATIONS,array('id'=>$this->data['prd_adrs']->row()->city));
				$this->data['RentalState'] = $this->product_model->get_all_details(STATE_TAX,array('status'=>'Active'));
				$this->data['RentalCity'] =  $this->product_model->get_all_details(CITY,array('status'=>'Active'));
				$this->data['userdetails'] =  $this->product_model->get_selected_fields_records('id,firstname,lastname',USERS,'where status="Active" ');
				$this->data['listNameCnt'] = $this->product_model->get_all_details(ATTRIBUTE,array('status'=>'Active'));
				$this->data['listValueCnt'] = $this->product_model->get_all_details(LIST_VALUES,array('status'=>'Active'));
				$list_valueArr=explode(',',$this->data['product_details']->row()->list_value);
				$listIdArr=array();
				foreach($this->data['listValueCnt']->result_array() as $listCountryValue){
					$listIdArr[]=$listCountryValue['list_id'];
				}
				if($this->data['listNameCnt']->num_rows() > 0){
					foreach($this->data['listNameCnt']->result_array() as $listCountryName){
						$this->data['listCountryValue'] .='<br /><span class="cat1"><!-- <input name="list_name[]" class="checkbox" type="checkbox" value="'.$listCountryName['id'].'" tabindex="7"> --><strong>'.ucfirst($listCountryName['attribute_name']).' &nbsp;</strong></span><br />';
						foreach($this->data['listValueCnt']->result_array() as $listCountryValue){
							if($listCountryValue['list_id']==$listCountryName['id']){
								if (in_array($listCountryValue['id'],$list_valueArr)){
									$checkStr = 'checked="checked"';
								}else {
									$checkStr = '';
								}
								$this->data['listCountryValue'] .='
								<div style="float:left; margin-left:10px;">
								<span>
								<input name="list_value[]" disabled="disabled"  class="checkbox" '.$checkStr.' type="checkbox" value="'.$listCountryValue['id'].'" tabindex="7">
								<label class="choice">'.ucfirst($listCountryValue['list_value']).'</label></span></div>';
							}
						}

					}
				}
				$this->data['imgDetail'] = $this->product_model->get_images($product_id);
				//print_r($this->data['imgDetail']->result());die;
				$this->load->library('googlemaps');
				$config['center'] = $this->data['product_details']->row()->latitude.','.$this->data['product_details']->row()->longitude;
				$config['zoom'] = 'auto';
				$this->googlemaps->initialize($config);
				$marker = array();
				$marker['position'] =$this->data['product_details']->row()->latitude.','.$this->data['product_details']->row()->longitude;
				$marker['draggable'] = true;
				$marker['ondragend'] = 'updateDatabase(event.latLng.lat(), event.latLng.lng());';
				$this->googlemaps->add_marker($marker);
				$this->data['map']= $this->googlemaps->create_map();
				$this->data['getCommonFacilityDetails'] = $this->product_model->getCommonFacilityDetails();
				$this->data['getExtraFacilityDetails'] = $this->product_model->getExtraFacilityDetails();
				$this->data['getSpecialFeatureFacilityDetails'] = $this->product_model->getSpecialFeatureFacilityDetails();
				$this->data['getHomeSafetyFacilityDetails'] = $this->product_model->getHomeSafetyFacilityDetails();
				$this->load->view('admin/product/view_product',$this->data);
			}else {
				redirect('admin');
			}
		}
	}

	/**
	 *
	 * This function delete the selling product record from db
	 */
	public function delete_product(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$product_id = $this->uri->segment(4,0);
			$condition = array('id' => $product_id);
			$old_product_details = $this->product_model->get_all_details(PRODUCT,array('id'=>$product_id));
			$this->update_old_list_values($product_id,array(),$old_product_details);
			$this->update_user_product_count($old_product_details);
			$this->product_model->commonDelete(PRODUCT,$condition);
			$this->product_model->commonDelete(PRODUCT_PHOTOS,array('product_id' => $product_id));
			$this->product_model->commonDelete(PRODUCT_ADDRESS,array('product_id' => $product_id));
			$this->product_model->commonDelete(PRODUCT_BOOKING,array('product_id' => $product_id));
			$this->product_model->commonDelete(SCHEDULE,array('id' => $product_id));

			$this->product_model->commonDelete(SUBPRODUCT,array('product_id' => $product_id));
			$this->setErrorMessage('success','Rental deleted successfully');
			redirect('admin/product/display_product_list');
		}
	}

	/**
	 *
	 * This function delete the affiliate product record from db
	 */
	public function delete_user_product(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$product_id = $this->uri->segment(4,0);
			$condition = array('seller_product_id' => $product_id);
			$old_product_details = $this->product_model->get_all_details(USER_PRODUCTS,array('seller_product_id'=>$product_id));
			$this->update_user_created_lists($product_id);
			$this->update_user_likes($product_id);
			$this->update_user_product_count($old_product_details);
			$this->product_model->commonDelete(USER_PRODUCTS,$condition);
			$this->product_model->commonDelete(USER_ACTIVITY,array('activity_id'=>$product_id));
			$this->product_model->commonDelete(NOTIFICATIONS,array('activity_id'=>$product_id));
			$this->product_model->commonDelete(PRODUCT_COMMENTS,array('product_id'=>$product_id));
			$this->product_model->commonDelete(SUBPRODUCT,array('product_id' => $product_id));
			$this->setErrorMessage('success','Rental deleted successfully');
			redirect('admin/product/display_user_product_list');
		}
	}

	public function update_user_likes($product_id='0'){
		$like_list = $this->product_model->get_like_user_full_details($product_id);
		if ($like_list->num_rows()>0){
			foreach ($like_list->result() as $like_list_row){
				$likes_count = $like_list_row->likes;
				$likes_count--;
				if ($likes_count<0)$likes_count=0;
				$this->product_model->update_details(USERS,array('likes'=>$likes_count),array('id'=>$like_list_row->id));
			}
			$this->product_model->commonDelete(PRODUCT_LIKES,array('product_id'=>$product_id));
		}
	}

	public function update_user_created_lists($pid='0'){
		$user_created_lists = $this->product_model->get_user_created_lists($pid);
		if ($user_created_lists->num_rows()>0){
			foreach ($user_created_lists->result() as $user_created_lists_row){
				$list_product_ids = array_filter(explode(',', $user_created_lists_row->product_id));
				if (($key=array_search($pid,$list_product_ids )) !== false){
					unset($list_product_ids[$key]);
					$update_ids = array('product_id'=>implode(',', $list_product_ids));
					$this->product_model->update_details(LISTS_DETAILS,$update_ids,array('id'=>$user_created_lists_row->id));
				}
			}
		}
	}

	public function update_user_product_count($old_product_details){
		if ($old_product_details!='' && count($old_product_details)>0 && $old_product_details->num_rows()==1){
			if ($old_product_details->row()->user_id > 0){
				$user_details = $this->product_model->get_all_details(USERS,array('id'=>$old_product_details->row()->user_id));
				if ($user_details->num_rows()==1){
					$prod_count = $user_details->row()->products;
					$prod_count--;
					if ($prod_count<0){
						$prod_count = 0;
					}
					$this->product_model->update_details(USERS,array('products'=>$prod_count),array('id'=>$old_product_details->row()->user_id));
				}
			}
		}
	}



	/**
	 *
	 * This function change the affiliate product status, delete the affiliate product record
	 */
	public function change_user_product_status_global(){

		if(count($_POST['checkbox_id']) > 0 &&  $_POST['statusMode'] != ''){
			$data =  $_POST['checkbox_id'];
			if (strtolower($_POST['statusMode']) == 'delete'){
				for ($i=0;$i<count($data);$i++){
					if($data[$i] == 'on'){
						unset($data[$i]);
					}
				}
				foreach ($data as $product_id){
					if ($product_id!=''){
						$old_product_details = $this->product_model->get_all_details(USER_PRODUCTS,array('seller_product_id'=>$product_id));
						$this->update_user_created_lists($product_id);
						$this->update_user_likes($product_id);
						$this->update_user_product_count($old_product_details);
						$this->product_model->commonDelete(USER_ACTIVITY,array('activity_id'=>$product_id));
						$this->product_model->commonDelete(NOTIFICATIONS,array('activity_id'=>$product_id));
						$this->product_model->commonDelete(PRODUCT_COMMENTS,array('product_id'=>$product_id));
						$this->product_model->commonDelete(SUBPRODUCT,array('product_id'=>$product_id));
					}
				}
			}
			$this->product_model->activeInactiveCommon(USER_PRODUCTS,'seller_product_id');
			if (strtolower($_POST['statusMode']) == 'delete'){
				$this->setErrorMessage('success','Rental records deleted successfully');
			}else {
				$this->setErrorMessage('success','Rental records status changed successfully');
			}
			redirect('admin/product/display_user_product_list');
		}
	}

	public function loadListValues(){
		$returnStr['listCnt'] = '<option value="">--Select--</option>';
		$lid = $this->input->post('lid');
		$lvID = $this->input->post('lvID');
		if ($lid != ''){
			$listValues = $this->product_model->get_all_details(LIST_VALUES,array('list_id'=>$lid));
			if ($listValues->num_rows()>0){
				foreach ($listValues->result() as $listRow){
					$selStr = '';
					if ($listRow->id == $lvID){
						$selStr = 'selected="selected"';
					}
					$returnStr['listCnt'] .= '<option '.$selStr.' value="'.$listRow->id.'">'.$listRow->list_value.'</option>';
				}
			}else{
				$returnStr['listCountryCnt'] .= '<option value="">---Select---</option>';
			}
		}
		echo json_encode($returnStr);
	}

	public function loadCountryListValues(){

		$returnStr['listCountryCnt'] = '<select class="chzn-select required state_sel" name="state" tabindex="-1" style="width: 375px;" onchange="javascript:loadStateListValues(this);update_State();" id="state" data-placeholder="Please select the state name"><option value="">---Select---</option>';
		$lid = $this->input->post('lid');
		$lvID = $this->input->post('lvID');
		if ($lid != ''){
			$listValues = $this->product_model->get_all_details(STATE_TAX,array('countryid'=>$lid));
			if ($listValues->num_rows()>0){
				foreach ($listValues->result() as $listRow){
					$selStr = '';
					if ($listRow->id == $lvID){
						$selStr = 'selected="selected"';
					}
					$returnStr['listCountryCnt'] .= '<option '.$selStr.' value="'.$listRow->id.'">'.$listRow->name.'</option>';
				}
			}else{
				///*$returnStr['listCountryCnt'] .= '<option value="">---Select---</option>';*/
			}
		}
		$returnStr['listCountryCnt'] .= '</select>';


		echo json_encode($returnStr);
	}

	public function loadStateListValues(){
		$returnStr['listCountryCnt'] = '<select class="chzn-select required city_sel" name="city" id="city" tabindex="-1" style="width: 375px;" data-placeholder="Please select the city name"><option value="">---Select---</option>';
		$lid = $this->input->post('lid');
		$lvID = $this->input->post('lvID');
		if ($lid != ''){
			$listValues = $this->product_model->get_all_details(CITY,array('stateid'=>$lid));
			if ($listValues->num_rows()>0){
				foreach ($listValues->result() as $listRow){
					$selStr = '';
					if ($listRow->id == $lvID){
						$selStr = 'selected="selected"';
					}
					$returnStr['listCountryCnt'] .= '<option '.$selStr.' value="'.$listRow->id.'">'.$listRow->name.'</option>';
				}
			}else{
				//$returnStr['listCountryCnt'] .= '<option value="">---Select---</option>';
			}
		}
		$returnStr['listCountryCnt'] .= '</select>';


		echo json_encode($returnStr);
	}

	public function changePosition(){
		if ($this->checkLogin('A') != ''){
			$catID = $this->input->post('catID');
			$pos = $this->input->post('pos');
			$this->product_model->update_details(PRODUCT,array('order'=>$pos),array('id'=>$catID));
		}
	}


	/**
	 *
	 * This function loads the contact dashboard
	 */
	public function display_rental_dashboard(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'Properties Dashboard';
			$this->data['ProductList'] = $this->product_model->get_contactAll_details();
			$this->data['TopRenterList'] = $this->product_model->get_contactAllSeller_details();



			$this->load->view('admin/product/display_rental_dashboard',$this->data);
		}
	}

	/**
	 *
	 * This function loads the Calendar view page
	 */
	public function view_calendar(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			$this->data['heading'] = 'View Calendar';
			$user_id = $this->uri->segment(4,0);
			$deal_id = $this->uri->segment(5,0);
			$this->data['ViewList']=array('rental_id'=>$user_id,'price'=>$deal_id);
			//$this->data['ViewList'] = $this->product_model->view_orders($user_id,$deal_id);
			$this->load->view('admin/product/view_calendar',$this->data);
		}
	}

	public function GetDays($sStartDate, $sEndDate){
		// Firstly, format the provided dates.
		// This function works best with YYYY-MM-DD
		// but other date formats will work thanks
		// to strtotime().
		$sStartDate = gmdate("Y-m-d", strtotime($sStartDate));
		$sEndDate = gmdate("Y-m-d", strtotime($sEndDate));

		// Start the variable off with the start date
		$aDays[] = $sStartDate;

		// Set a 'temp' variable, sCurrentDate, with
		// the start date - before beginning the loop
		$sCurrentDate = $sStartDate;

		// While the current date is less than the end date
		while($sCurrentDate < $sEndDate){
			// Add a day to the current date
			$sCurrentDate = gmdate("Y-m-d", strtotime("+1 day", strtotime($sCurrentDate)));

			// Add this new day to the aDays array
			$aDays[] = $sCurrentDate;
		}

		// Once the loop has finished, return the
		// array of days.
		return $aDays;
	}




	/* Export Excel function */
	public function customerExcelExport()
	{
		$sortArr = array('field'=>'id','type'=>'desc');
		$condition = array();
		$UserDetails = $this->product_model->view_product_details('where u.status="Active" or p.user_id=0 group by p.id order by p.created desc');
		$data['getCustomerDetails'] = $UserDetails->result_array();
		//echo '<pre>';print_r($data['getCustomerDetails']);die;
		$this->load->view('admin/product/customerExportExcel',$data);
	}



	/** image upload */


	public function InsertProductImage1($prd_id) {
		
		$prd_id = $this->input->post('prdiii');
		$valid_formats = array("jpg", "png", "gif", "zip", "bmp");
		$max_file_size = 1024*10000; //100 kb
		$path = "server/php/rental/"; // Upload directory
		$count = 0;

		if(isset($_POST) and $_SERVER['REQUEST_METHOD'] == "POST"){
			
			foreach ($_FILES['files']['name'] as $f => $name) {
				if ($_FILES['files']['error'][$f] == 4) {
					continue; // Skip file if any error found
				}
				if ($_FILES['files']['error'][$f] == 0) {
					if ($_FILES['files']['size'][$f] > $max_file_size) {
						$message[] = "$name is too large!.";
                    continue; // Skip large files

					}
					elseif( ! in_array(pathinfo($name, PATHINFO_EXTENSION), $valid_formats) ){
						$message[] = "$name is not a valid format";
						continue; // Skip invalid file formats
					}
					else{ // No error found! Move uploaded files
						if(move_uploaded_file($_FILES["files"]["tmp_name"][$f], $path.$name)) {
							$filename[] =$_FILES["files"]["name"][$f];
							$count++; // Number of successfully uploaded files
						}
					}
				}
			}
		}




		//print_r(count($filename)); die;

		for($i=0;$i<count($filename);$i++) {
			if(!empty($filename[$i])) {
				// print_r($img_name[$i]);
				$filePRoductUploadData = array('product_id'=>$prd_id,'product_image'=>$filename[$i]);
				$this->product_model->simple_insert(PRODUCT_PHOTOS,$filePRoductUploadData);


			}
			else {
				print_r("File is empty");
				$this->setErrorMessage('error','You cannot choose image');


			}

		}
		redirect('admin/product/add_product_form/'.$prd_id);

		return true;
	}







	public function get_sublist_values(){
		$list_value_id = $this->input->post('list_value_id');
		//echo $list_value_id;
		$this->data['result'] = $this->product_model->get_all_details(LIST_SUB_VALUES,array('list_value_id' => $list_value_id));
		//print_r($this->data['result']); die;
		$returnstr['amenities'] = $this->load->view('admin/product/display_li',$this->data,true);
		echo json_encode($returnstr);
	}




}




/* End of file product.php */
/* Location: ./application/controllers/admin/product.php */