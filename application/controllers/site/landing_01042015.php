<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 
 * Landing page functions
 * @author Teamtweaks
 *
 */

class Landing extends MY_Controller {
	function __construct(){
        parent::__construct();
		$this->load->helper(array('cookie','date','form','email','text'));
		$this->load->library(array('encrypt','form_validation'));		
		$this->load->library( 'jquery_stars' );
		$this->load->model(array('product_model','city_model','admin_model','cms_model','landing_model','slider_model'));
		
		if($_SESSION['sMainCategories'] == ''){
			$sortArr1 = array('field'=>'cat_position','type'=>'asc');
			$sortArr = array($sortArr1);
			$_SESSION['sMainCategories'] = $this->product_model->get_all_details(CATEGORY,array('rootID'=>'0','status'=>'Active'),$sortArr);
		}
		$this->data['mainCategories'] = $_SESSION['sMainCategories'];
		
		if($_SESSION['sColorLists'] == ''){
			$_SESSION['sColorLists'] = $this->product_model->get_all_details(LIST_VALUES,array('list_id'=>'1'));
		}
		$this->data['mainColorLists'] = $_SESSION['sColorLists'];
		
		$this->data['loginCheck'] = $this->checkLogin('U');
//		echo $this->session->userdata('fc_session_user_id');die;
		$this->data['likedProducts'] = array();
	 	if ($this->data['loginCheck'] != ''){
	 		$this->data['likedProducts'] = $this->product_model->get_all_details(PRODUCT_LIKES,array('user_id'=>$this->checkLogin('U')));
	 	}
    }
    
    /**
     * 
     * 
     */
	 	/*Autocomplete  Start */
	 function home_search_auto(){
	 
		if (isset($_GET['term'])){
			 $q = strtolower($_GET['term']); 
			$autovalue = $this->landing_model->get_city_details($q);
			$row_set = array();
			$state_arr = array();
			foreach ($autovalue as $row){
				if (!in_array($row['State'],$state_arr)){
					$row_set[] = array(
						'label' => htmlentities(stripslashes(ucwords(ucfirst($row['State']).','.strtoupper($row['country_name']).''))).'',
						'value' => ucfirst($row['State']).','.$row['country_code']
					);
					$state_arr[] = $row['State'];
				}
				$row_set[] = array(
					'label' => htmlentities(stripslashes(ucwords($row['name'].','.ucfirst($row['State']).','.strtoupper($row['country_name']).''))).'',
					'value' => htmlentities(stripslashes(ucwords(strtolower($row['name'])))).''.' ,'.ucfirst($row['State']).','.$row['country_code']
				);
      
      		}
     			 echo json_encode($row_set);
		}
		
	}
		/*Autocomplete  End */
   	public function index(){
	
	//echo $this->session->userdata('currency_s');die;
	 	$this->data['heading'] = '';
	 	$this->data['totalProducts'] = $this->product_model->get_total_records(PRODUCT);
		
		$this->data['CityDetails'] = $this->city_model->Featured_city();
		
		$this->data['CityCountDetails'] = $this->city_model->CityCountDisplay('neighborhoods,count(neighborhoods) as CityCountVal','neighborhoods',NEIGHBORHOOD);
		$this->data['SliderList'] = $this->slider_model->get_slider_details('WHERE status="Active"');
		
		
		$this->data['sliderList'] = $this->slider_model->get_all_details(SLIDER,$condition);
		//echo $this->data['sliderList']->row()->image;die;
		$condition=array('id'=>1);
		$this->data['listDetail'] = $this->city_model->get_all_details(LISTINGS,$condition);
		$roombedVal=json_decode($this->data['listDetail']->row()->rooms_bed);
		$accommodates = $roombedVal->accommodates;
		$this->data['accommodates'] = explode(',', $accommodates);
		$condition = array('id'=>'1');
		$enableRslt = $this->slider_model->get_all_details(ADMIN_SETTINGS,$condition);
		$this->data['adminList'] = $enableRslt->row();
		$this->load->view('site/landing/landing',$this->data);
	}
	
	public function ajax_load_more(){
		$pageloaded = $this->input->post('group_no');
		$limit = 39;
		$start = $limit*$pageloaded;
		$productDetails = $this->product_model->view_product_details(" where p.status='Publish' and p.quantity > 0 and u.group='Seller' and u.status='Active' or p.status='Publish' and p.quantity > 0 and p.user_id=0 order by p.created desc limit ".$start.','.$limit);
		$resultVal = '';
		if ($productDetails->num_rows()>0){
			$productArr = $productDetails->result_array();
			for ($i=0;$i<count($productArr);$i=$i+3){
	          	if (isset($productArr[$i]['id'])){
	          		$imgArr = explode(',', $productArr[$i]['image']);
	          		$img = 'dummyProductImage.jpg';
	          		foreach ($imgArr as $imgVal){
	          			if ($imgVal != ''){
							$img = $imgVal;
							break;
	          			}
	          		}
	          		$fancyClass = 'fancy';
	          		$fancyText = LIKE_BUTTON;
	          		if (count($this->data['likedProducts'])>0 && $this->data['likedProducts']->num_rows()>0){
	          			foreach ($this->data['likedProducts']->result() as $likeProRow){
	          				if ($likeProRow->product_id == $productArr[$i]['seller_product_id']){
	          					$fancyClass = 'fancyd';$fancyText = LIKED_BUTTON;break;
	          				}
	          			}
	          		}
	          		$resultVal .= '<li class="big clear" tid="'.$productArr[$i]['seller_product_id'].'" tuserid="'.$productArr[$i]['user_id'].'">
              <div class="figure-item">
                <!-- span class="pre"></span -->
                <a href="';
	          		if ($productArr[$i]['user_id'] != '0'){
	          			$resultVal .= base_url().'user/'.$productArr[$i]['user_name'];
	          		}else {
	          			$resultVal .= base_url().'user/administrator';
	          		}
	          		$resultVal.='" class="vcard">';
                	if ($productArr[$i]['image'] == ''){
                	$resultVal .= '<img src="images/users/user-thumb1.png">';
                	}else {
                	$resultVal .= '<img src="images/users/'.$productArr[$i]['image'].'">';
                	}
                $resultVal .= '</a>
                <a href="things/'.$productArr[$i]['id'].'/'.url_title($productArr[$i]['product_name'],'-').'" class="figure-img"> 
                	<span class="figure grid" style="background-size:cover;" data-ori-url="images/product/'.$img.'" data-310-url="images/product/'.$img.'"><em class="back"></em></span>
                	<span class="figure classic"> <em class="back"></em> 
                		<img src="images/product/'.$img.'" data-width="640" data-height="640"> 
                	</span> 
                	<span class="figure vertical"> <em class="back"></em> 
                		<img src="images/product/'.$img.'" data-width="310" data-height="310"> 
                	</span> 
                	<span class="figcaption">'.$productArr[$i]['product_name'].'</span> 
                </a> 
                <em class="figure-detail"> 
                	<span class="price">'.$this->data['currencySymbol'].' '.$productArr[$i]['sale_price'].' <small>'.$this->data['currencyType'].'</small></span> 
                	<span class="username"><em><i> by </i><a href="';
                	if ($productArr[$i]['user_id'] != '0'){
                		$resultVal .= base_url().'user/'.$productArr[$i]['user_name'];
                	}else {
                		$resultVal .= base_url().'user/administrator';
                	}
	          	$resultVal .= '">';
	          	if ($productArr[$i]['user_id'] != '0'){
	          		$resultVal .= $productArr[$i]['full_name'];
	          	}else {
	          		$resultVal .= 'administrator';
	          	}
	          	$resultVal .= '</a> + '.$productArr[$i]['likes'].'</em></span> 
                </em>
                <ul class="function">
                  <li class="list"><a href="#">Add to List</a></li>
                  <li class="cmt"><a href="#">Comment</a></li>
                  <li class="share">
                    <button type="button" ';
	          	if ($this->data['loginCheck']==''){
	          		$resultVal .= 'require_login="true"';
	          	}
	          	$resultVal .= ' data-timage="images/product/'.$img.'" class="btn-share" tname="'.$productArr[$i]['product_name'].'"  username="';
	          	 if ($productArr[$i]['user_id'] != '0'){
	          	 	$resultVal .= $productArr[$i]['full_name'];
	          	 }else {
	          	 	$resultVal .= 'administrator';
	          	 }
	          	$resultVal .= '"><i class="ic-share"></i></button>
                  </li>
                  <li class="view-cmt"><a href="#">5 comments</a></li>
                </ul>
                <a href="#" item_img_url="images/product/'.$img.'" tid="'.$productArr[$i]['seller_product_id'].'" class="button '.$fancyClass.'" ';
	          	if ($this->data['loginCheck']==''){$resultVal .= 'require_login="true"'; }
	          	$resultVal .= '><span><i></i></span> '.$fancyText.'</a> </div>
            </li>';
	          	}
          	if (isset($productArr[$i+1]['id'])){
          		$imgArr = explode(',', $productArr[$i+1]['image']);
          		$img = 'dummyProductImage.jpg';
          		foreach ($imgArr as $imgVal){
          			if ($imgVal != ''){
						$img = $imgVal;
						break;
          			}
          		}
          		$fancyClass = 'fancy';
          		$fancyText = LIKE_BUTTON;
          		if (count($this->data['likedProducts'])>0 && $this->data['likedProducts']->num_rows()>0){
          			foreach ($this->data['likedProducts']->result() as $likeProRow){
          				if ($likeProRow->product_id == $productArr[$i+1]['seller_product_id']){
          					$fancyClass = 'fancyd';$fancyText = LIKED_BUTTON;break;
          				}
          			}
          		}
          		$resultVal .= '<li  class="mid clear" tid="'.$productArr[$i+1]['seller_product_id'].'" tuserid="'.$productArr[$i+1]['user_id'].'">
              <div class="figure-item">
                <!-- span class="pre"></span -->
                <a href="';
          		if ($productArr[$i+1]['user_id'] != '0'){$resultVal .= 'user/'.$productArr[$i+1]['user_name'];}else {$resultVal .= base_url().'user/administrator';}
          		$resultVal .= '" class="vcard">';
                	if ($productArr[$i+1]['image'] == ''){
                	$resultVal .= '<img src="images/users/user-thumb1.png">';
	                }else {
	                $resultVal .= '<img src="images/users/'.$productArr[$i+1]['image'].'">';
	                }
                $resultVal .= '</a> 
                <a href="things/'.$productArr[$i+1]['id'].'/'.url_title($productArr[$i+1]['product_name'],'-').'" class="figure-img"> 
                	<span class="figure grid" style="background-size:cover;" data-ori-url="images/product/'.$img.'" data-310-url="images/product/'.$img.'"><em class="back"></em></span> 
                	<span class="figure classic"> <em class="back"></em> 
                		<img src="images/product/'.$img.'" data-width="310" data-height="310"> 
                	</span> 
                	<span class="figure vertical"> <em class="back"></em> 
                		<img src="images/product/'.$img.'" data-width="310" data-height="310"> 
                	</span> 
                	<span class="figcaption">'.$productArr[$i+1]['product_name'].'</span> 
                </a> 
                <em class="figure-detail"> 
                	<span class="price">'.$this->data['currencySymbol'].' '.$productArr[$i+1]['sale_price'].' <small>'.$this->data['currencyType'].'</small></span> 
                	<span class="username"><em><i> by </i><a href="';
                if ($productArr[$i+1]['user_id'] != '0'){$resultVal .= base_url().'user/'.$productArr[$i+1]['user_name'];}else {$resultVal .= base_url().'user/administrator';}
                $resultVal .= '">';
                if ($productArr[$i+1]['user_id'] != '0'){$resultVal .= $productArr[$i+1]['full_name'];}else {$resultVal .= 'administrator';}
                $resultVal .= '</a> + '.$productArr[$i+1]['likes'].'</em></span> 
                </em>
                <ul class="function">
                  <li class="list"><a href="#">Add to List</a></li>
                  <li class="cmt"><a href="#">Comment</a></li>
                  <li class="share">
                    <button type="button" ';
                if ($this->data['loginCheck']==''){$resultVal .= 'require_login="true"';}
                $resultVal .= ' data-timage="images/product/'.$img.'" class="btn-share"  tname="'.$productArr[$i+1]['product_name'].'"  username="';
                if ($productArr[$i+1]['user_id'] != '0'){$resultVal .= $productArr[$i+1]['full_name'];}else {$resultVal .= 'administrator';}
                $resultVal .= '"><i class="ic-share"></i></button>
                  </li>
                  <li class="view-cmt"><a href="#">5 comments</a></li>
                </ul>
                <a href="#" item_img_url="images/product/'.$img.'" tid="'.$productArr[$i+1]['seller_product_id'].'" class="button '.$fancyClass.'" ';
                if ($this->data['loginCheck']==''){$resultVal .= 'require_login="true"';}
                $resultVal .= '><span><i></i></span> '.$fancyText.'</a> </div>
            </li>';
          	}
          	if (isset($productArr[$i+2]['id'])){
          		$imgArr = explode(',', $productArr[$i+2]['image']);
          		$img = 'dummyProductImage.jpg';
          		foreach ($imgArr as $imgVal){
          			if ($imgVal != ''){
						$img = $imgVal;
						break;
          			}
          		}
          		$fancyClass = 'fancy';
          		$fancyText = LIKE_BUTTON;
          		if (count($this->data['likedProducts'])>0 && $this->data['likedProducts']->num_rows()>0){
          			foreach ($this->data['likedProducts']->result() as $likeProRow){
          				if ($likeProRow->product_id == $productArr[$i+2]['seller_product_id']){
          					$fancyClass = 'fancyd';$fancyText = LIKED_BUTTON;break;
          				}
          			}
          		}
          		$resultVal .= '<li  class="mid "  tid="'.$productArr[$i+2]['seller_product_id'].'" tuserid="'.$productArr[$i+2]['user_id'].'">
              <div class="figure-item">
                <!-- span class="pre"></span -->
                <a href="things/'.$productArr[$i+2]['id'].'/'.url_title($productArr[$i+2]['product_name'],'-').'" class="figure-img"> 
                	<span class="figure grid" style="background-size:cover;" data-ori-url="images/product/'.$img.'" data-310-url="images/product/'.$img.'"><em class="back"></em></span> 
                	<span class="figure classic"> <em class="back"></em> 
                		<img src="images/product/'.$img.'" data-width="310" data-height="310"> 
                	</span> 
                	<span class="figure vertical"> <em class="back"></em> 
                		<img src="images/product/'.$img.'" data-width="310" data-height="310"> 
                	</span> 
                	<span class="figcaption">'.$productArr[$i+2]['product_name'].'</span> 
                </a> 
                <em class="figure-detail"> 
                	<span class="price">'.$this->data['currencySymbol'].' '.$productArr[$i+2]['sale_price'].' <small>'.$this->data['currencyType'].'</small></span> 
                	<span class="username"><em><i> by </i><a href="';
          		if ($productArr[$i+2]['user_id'] != '0'){$resultVal .= base_url().'user/'.$productArr[$i+2]['user_name'];}else {$resultVal .= base_url().'user/administrator';}
  	    		$resultVal .= '">';
          		if ($productArr[$i+2]['user_id'] != '0'){$resultVal .= $productArr[$i+2]['full_name'];}else {$resultVal .= 'administrator';}
          		$resultVal .= '</a> + '.$productArr[$i+2]['likes'].'</em></span> 
                </em>
                <ul class="function">
                  <li class="list"><a href="#">Add to List</a></li>
                  <li class="cmt"><a href="#">Comment</a></li>
                  <li class="share">
                    <button type="button" ';
          		if ($this->data['loginCheck']==''){$resultVal .= 'require_login="true"';}
          		$resultVal .= ' data-timage="images/product/'.$img.'" class="btn-share" tname="'.$productArr[$i+2]['product_name'].'"  username="';
          		if ($productArr[$i+2]['user_id'] != '0'){$resultVal .= $productArr[$i+2]['full_name'];}else {$resultVal .= 'administrator';}
          		$resultVal .= '"><i class="ic-share"></i></button>
                  </li>
                  <li class="view-cmt"><a href="#">5 comments</a></li>
                </ul>
                <a href="#" item_img_url="images/product/'.$img.'" tid="'.$productArr[$i+2]['seller_product_id'].'" class="button '.$fancyClass.'" ';
          		if ($this->data['loginCheck']==''){$resultVal .= 'require_login="true"'; }
          		$resultVal .= '><span><i></i></span> '.$fancyText.'</a> </div>
            </li>';
				}
			}
		}
		
		echo $resultVal;
	}
	
	public function display_cms_trips($product_id,$reviewer_id)
	{
		$product_id = $this->input->post('product_id');
		$reviewer_id = $this->input->post('reviewer_id');
		$this->data['reviewData'] = $this->product_model->get_trip_review($product_id,$reviewer_id);
		
		$data = $this->load->view('site/cms/rating',$this->data);
		if($this->data['reviewData']->num_rows>0)
		{
			$res['count']='1';
			//$a = $this->data['reviewData']->row()->accuracy;
			$res['data']=$data;
		}
		else {
			$res['count']='0';
		}
		echo json_encode($res);
	}
	
	public function display_product_detail($seourl)
	{
		
		$where1 = array('p.status'=>'Publish','p.id'=>$seourl);	
		$where_or = array('p.status'=>'Publish') ;
		$where2 = array('p.status'=>'Publish','p.id'=>$seourl);
		$this->load->model('admin_model');
		$this->data['admin_settings'] = $result = $this->admin_model->getAdminSettings();
		$this->data['productDetails'] = $this->product_model->view_product_details_site_one($where1,$where_or,$where2);
		
		if($this->data['productDetails']->row()->id==''){
		$this->setErrorMessage('error','List details not available');
		redirect(base_url());
		}
		
		$this->data['productImages'] = $this->product_model->get_images($this->data['productDetails']->row()->id);
		
		$this->data['reviewData'] = $this->product_model->get_review($this->data['productDetails']->row()->id);
		
		if($this->checkLogin('U') != '')
		{
		$this->data['user_reviewData'] = $this->product_model->get_review($this->data['productDetails']->row()->id,$this->checkLogin('U'));
		$this->data['reviewData'] = $this->product_model->get_review_other($this->data['productDetails']->row()->id,$this->checkLogin('U'));
		}

		$this->data['reviewTotal'] = $this->product_model->get_review_tot($this->data['productDetails']->row()->id);
				
	
		$product_id = $this->data['productDetails']->row()->id;
		$this->data['product_details'] = $this->product_model->view_product1($product_id);
		
		$this->data['RatePackage']='';
		
		$this->data['heading'] = $this->data['productDetails']->row()->meta_title;
		if ($this->data['productDetails']->row()->meta_title != ''){
			$this->data['meta_title'] = $this->data['productDetails']->row()->meta_title;
		}
		if ($this->data['productDetails']->row()->meta_keyword != ''){
	    	$this->data['meta_keyword'] = $this->data['productDetails']->row()->meta_keyword;
		}
		if ($this->data['productDetails']->row()->meta_description != ''){
	    	$this->data['meta_description'] = $this->data['productDetails']->row()->meta_description;
		}
		
		//------------------------------------------------cat list
				$this->data['listDetail'] = $this->product_model->get_all_details(PRODUCT,array('status'=>'Active'));
		        $this->data['listNameCnt'] = $this->product_model->get_all_details(ATTRIBUTE,array('status'=>'Active'));
				$this->data['listValueCnt'] = $this->product_model->get_all_details(LIST_VALUES,array('status'=>'Active'));
				$this->data['listItems'] = $this->product_model->get_all_details(ATTRIBUTE,array('status'=>'Active'));
				$this->data['SublistDetail'] = $this->product_model->get_all_details(LIST_SUB_VALUES,$contition);
				$rental_category_subcategory=$this->product_model->amenities_main_sub_category($this->data['product_details']->row()->list_name);
			    $this->data['subcategory']=$rental_category_subcategory;
				//echo "<pre>"; print_r($test->result_array()); die;
				//$this->data['subcategory']=$rental_category_subcategory['subcategory'];
                $listIdArr=array();
				foreach($this->data['listValueCnt']->result_array() as $listCountryValue){
				$listIdArr[]=$listCountryValue['list_id'];
				}
				
				
			
			//var_dump($this->data['listCountryValue']);die;
			
			$this->data['CalendarBooking'] = $this->product_model->get_all_details(CALENDARBOOKING,array('PropId'=>$this->data['productDetails']->row()->id));
		
		
		if($this->data['CalendarBooking']->num_rows() > 0){
			foreach($this->data['CalendarBooking']->result()  as $CRow){
			$DisableCalDate .='"'.$CRow->the_date.'",';
			}
			$this->data['CalendarBookingDate']='['.$DisableCalDate.']';
		}else{
			$this->data['CalendarBookingDate']='["2013-09-11"]';
		}
			
			//print_r($this->data['CalendarBookingDate']);die;
			
			$this->data['ChkWishlist']='0';
			
			if($this->checkLogin('U') > 0 ){
			$this->data['getWishList'] = $this->product_model->ChkWishlistProduct($this->data['productDetails']->row()->id,$this->checkLogin('U'));
			$this->data['ChkWishlist']=$this->data['getWishList']->num_rows();
			}
		//echo $this->data['productDetails']->row()->id;
		//echo $this->data['productDetails']->row()->city;
		$cityId = $this->data['productDetails']->row()->city;
		$newWhere = ' where ';
		if($cityId != '')$newWhere .= 'c.id = '.$cityId.' and ';
		$newWhere .= 'p.id <> '.$this->data['productDetails']->row()->id.' and  p.status="Publish" group by p.id order by p.id  DESC';
		$this->data['DistanceQryArr'] = $this->product_model->view_product_details_distance_list($this->data['productDetails']->row()->latitude,$this->data['productDetails']->row()->longitude,$newWhere);
		//echo $this->data['productDetails']->row()->city;die;
		//echo $this->db->last_query();die;
		$this->data['ConfigBooking'] = $this->product_model->get_all_details(BOOKINGCONFIG,array('cal_url'=>base_url()));
		
		if($this->data['ConfigBooking']->num_rows()==''){
			$this->product_model->update_details(BOOKINGCONFIG,array('cal_url'=>base_url()),array());
		}
		
		$this->data['CalendarBooking'] = $this->product_model->get_all_details(CALENDARBOOKING,array('PropId'=>$this->data['productDetails']->row()->id));
		
		
		if($this->data['CalendarBooking']->num_rows() > 0){
			foreach($this->data['CalendarBooking']->result()  as $CRow){
			$DisableCalDate .='"'.$CRow->the_date.'",';
			}
			$this->data['CalendarBookingDate']='['.$DisableCalDate.']';
		}else{
			$this->data['CalendarBookingDate']='["2013-09-11"]';
		}
		$service_tax_query='SELECT * FROM '.COMMISSION.' WHERE commission_type="Guest Booking" AND status="Active"';
		$this->data['service_tax']=$this->product_model->ExecuteQuery($service_tax_query);

		$this->data['ProductDealPrice']=$this->product_model->get_all_details(PRODUCT_DEALPRICE,array('product_id'=>$seourl));
		$this->load->view('site/rentals/product_detailCopy',$this->data);

		
	}
	
	
	function fbLogin()
	{
		$rUrl = $this->input->post('rUrl');
		$userdata = array('rUrl'=>$rUrl);
		$this->session->set_userdata($userdata);
	}
	
}

/* End of file landing.php */
/* Location: ./application/controllers/site/landing.php */