<?php
if (! defined ( 'BASEPATH' ))
	exit ( 'No direct script access allowed' );

/**
 *
 * User related functions
 *
 * @author Teamtweaks
 *        
 */
class Rentals extends MY_Controller {
	function __construct() {
		parent::__construct ();
		$this->load->helper ( array (
				'cookie',
				'date',
				'form',
				'email',
				'text',
				'html' 
		) );
		$this->load->library ( array (
				'encrypt',
				'form_validation' 
		) );
		$this->load->model ( array (
				'product_model',
				'user_model' 
		) );
		$this->load->library ( 'pagination' );
		
		if ($_SESSION ['sMainCategories'] == '') {
			$sortArr1 = array (
					'field' => 'cat_position',
					'type' => 'asc' 
			);
			$sortArr = array (
					$sortArr1 
			);
			$_SESSION ['sMainCategories'] = $this->product_model->get_all_details ( CATEGORY, array (
					'rootID' => '0',
					'status' => 'Active' 
			), $sortArr );
		}
		$this->data ['mainCategories'] = $_SESSION ['sMainCategories'];
		
		if ($_SESSION ['sColorLists'] == '') {
			$_SESSION ['sColorLists'] = $this->product_model->get_all_details ( LIST_VALUES, array (
					'list_id' => '1' 
			) );
		}
		$this->data ['mainColorLists'] = $_SESSION ['sColorLists'];
		
		$this->data ['loginCheck'] = $this->checkLogin ( 'U' );
		$this->data ['likedProducts'] = array ();
		if ($this->data ['loginCheck'] != '') {
			$this->data ['likedProducts'] = $this->product_model->get_all_details ( PRODUCT_LIKES, array (
					'user_id' => $this->checkLogin ( 'U' ) 
			) );
		}
	}
	
	/* Rental Display */
	public function detail_page() {
		// $prdid=147;
		$condition = array (
				'id' => $prdid 
		);
		$this->data ['listDetail'] = $this->product_model->get_all_details ( PRODUCT, $condition );
		// $this->data['imgsource'] = $this->product_model-get_Image_SourcebyID();
		
		$this->load->view ( 'site/rentals/detail-page', $this->data );
	}
	
	/* map view */
	
	
	
	//->backup by selva
	public function mapview() {
		$city = '';
		$this->data ['Product_igggd'] = $this->uri->segment ( 3, 0 );
		$this->data ['statetag'] = $this->uri->segment ( 2, 0 );
		
		$datefrom = $_POST['checkin'];
		$dateto = $_POST['checkout'];
		$guests = $_POST['guests'];
		$room_type = $_POST['room_type'];
		$pricemin = $_POST['pricemin'];
		$pricemax = $_POST['pricemax'];
		$min_bedrooms = $_POST['min_bedrooms'];
		$min_beds = $_POST['min_beds'];
		$min_bedtype = $_POST['min_bedtype'];
		$min_noofbathrooms = $_POST['min_noofbathrooms'];
		$min_min_stay = $_POST['min_min_stay'];
		$listvalue = $_POST['listvalue'];
		$keywords = $_POST['keywords'];
		
		//echo count($listvalue); die;
		
		
		 //print_r($_REQUEST); die;
		$searchResult = explode ( '?', $_SERVER ['REQUEST_URI'] );
		//print_r($searchResult);die;
		$search = '(1=1';
		$search_var = $searchResult [1];
		$search_var = urldecode ( $search_var ); 
		$search_array = explode ( '&', $search_var );
		foreach ( $search_array as $key => $value ) {
					
					$var = explode ( '=', $value );
					
		if ($var [0] == 'city' && $var [1] != '') {
						$CityStr = str_replace ( '+', ' ', $var [1] );
						$CityArr = explode(',',trim($CityStr));
						if (count($CityArr)==3){
							
							$search .= ' and (c.name = "' .trim($CityArr[0]). '") ';
						}else if(count($CityArr)==2) {
							
							$search .= ' and (s.name = "' . trim($CityArr[0]) . '") ';
						}else {
							$search .= ' and (c.name = "' . trim($CityArr[0]) . '") ';
						}
					}
				}
					
		if($datefrom != ''){
		$newDate = date("Y-m-d", strtotime($datefrom));
		$search .= " and p.datefrom > ".$newDate;
		}
		if($dateto != ''){
		$newDate = date("Y-m-d", strtotime($dateto));
		$search .= " and p.dateto < ".$newDate;
		}
		if($guests != ''){
		$search .= " and p.accommodates =".$guests;
		}
		if($pricemax != ''){
		$search .= " and p.price BETWEEN ".$pricemin." and ".$pricemax;
		}
		if($room_type != ''){
		//echo count($room_type); die;
		
		if(count($room_type) == 1) {
		$search .= ' and p.room_type = "'.$room_type[0].'"';
		}elseif(count($room_type) == 2){
		$search .= ' and p.room_type = "'.$room_type[0].'"';
		$search .= ' or p.room_type = "'.$room_type[1].'"';
		}elseif(count($room_type) == 3){
		$search .= ' and p.room_type = "'.$room_type[0].'"';
		$search .= ' or p.room_type = "'.$room_type[1].'"';
		$search .= ' or p.room_type = "'.$room_type[2].'"';
		}
		}
		if($min_bedrooms != ''){
		$search .= " and p.bedrooms =".$min_bedrooms;
		}
		if($min_beds != ''){
		$search .= " and p.beds =".$min_beds;
		}
		if($min_noofbathrooms != ''){
		$search .= ' and p.bathrooms ="'.$min_noofbathrooms.'"';
		}
		if($min_min_stay != ''){
		$search .= " and p.minimum_stay = ".$min_min_stay;
		}
		if($keywords != ''){
		$search .= ' and p.description like "%' . $keywords . '%" ';
		}
		
		$search .= ' ) and';
		
		if($listvalue != ''){
		//$search .= " and p.list_name = ".$listvalue;
		foreach($listvalue as $list) {
		//echo $list;
		$find_in_set_categories .= ' FIND_IN_SET("' . $list . '", p.list_name) and';
		}
		
		}
		if ($find_in_set_categories != '') {
			$find_in_set_categories = substr ( $find_in_set_categories, 0, - 2 );
			$search .= ' ' . $find_in_set_categories . 'nd';
		}
		
		

		$this->data ['heading'] = '';
		
		if (count ( $_GET ) > 0)
			$config ['suffix'] = '?' . http_build_query ( $_GET, '', "&" );
		$this->data ['GetListUrl'] = $config ['first_url'] = base_url () . 'property?' . http_build_query ( $_GET );
		
		$searchPerPage = $this->config->item ( 'site_pagination_per_page' );
		$paginationNo = 0;
		$pageLimitStart = $paginationNo;
		$pageLimitEnd = $pageLimitStart + $searchPerPage;
		$get_ordered_list_count = $this->product_model->view_product_details_sitemapview ( '  where ' . $search . '  p.status="Publish" group by p.id order by p.created desc' );
		$this->config->item ( 'site_pagination_per_page' );
		$config ['prev_link'] = 'Previous';
		$config ['next_link'] = 'Next';
		$config ['num_links'] = 2;
		$config ['base_url'] = base_url () . 'property/';
		$config ['total_rows'] = ($get_ordered_list_count->num_rows ());
		$config ["per_page"] = $searchPerPage;
		$config ["uri_segment"] = 2;
		$this->pagination->initialize ( $config );
		$this->data ['paginationLink'] = $data ['paginationLink'] = $this->pagination->create_links ();
		
		$this->data ['get_ordered_list_count'] = $get_ordered_list_count->num_rows ();
		
		$cat_subcat = $this->product_model->get_cat_subcat ();
		$this->data ['main_cat'] = $cat_subcat ['main_cat'];
		$this->data ['sec_category'] = $cat_subcat ['sec_category'];
		
		$this->data ['productList'] = $this->product_model->view_product_details_sitemapview ( '  where ' . $search . '  p.status="Publish" group by p.id order by p.created desc limit ' . $pageLimitStart . ',' . $searchPerPage );
		 
		//echo $this->db->last_query();die;
		// echo $this->input->get('city');
		 $pieces = explode(",", $this->input->get('city'));
		 // echo $pieces[0];
		if ($this->data ['productList']->num_rows()==0){
			if(count($CityArr)==2) {
				$this->data['city_lat_lng']=$this->product_model->get_all_details(STATE_TAX,array('name'=>$CityArr[0])); 
			}else {
				$this->data['city_lat_lng']=$this->product_model->get_all_details(CITY,array('name'=>$CityArr[0])); 
			}
			
		}
			
		
		//echo '<pre>'; print_r($this->data['city_lat_lng']->result_array()); die;
		 
		if ($this->data ['Product_igggd'] != '' && $this->data ['statetag'] == 'state') {
			
			$this->data ['heading'] = $this->data ['productList']->row ()->statemtitle;
			if ($this->data ['productList']->row ()->statemtitle != '') {
				$this->data ['meta_title'] = $this->data ['productList']->row ()->statemtitle;
			}
			if ($this->data ['productList']->row ()->statemkey != '') {
				$this->data ['meta_keyword'] = $this->data ['productList']->row ()->statemkey;
			}
			if ($this->data ['productList']->row ()->statemdesc != '') {
				$this->data ['meta_description'] = $this->data ['productList']->row ()->statemdesc;
			}
		} else {
			
			$this->data ['heading'] = $this->data ['productList']->row ()->city_name;
			if ($this->data ['productList']->row ()->meta_title != '') {
				$this->data ['meta_title'] = $this->data ['productList']->row ()->meta_title;
			}
			if ($this->data ['productList']->row ()->meta_keyword != '') {
				$this->data ['meta_keyword'] = $this->data ['productList']->row ()->meta_keyword;
			}
			if ($this->data ['productList']->row ()->meta_description != '') {
				$this->data ['meta_description'] = $this->data ['productList']->row ()->meta_description;
			}
		}
		
		$this->data ['product_image'] = $this->product_model->Display_product_image_details ();
		$this->data ['image_count'] = $this->product_model->Display_product_image_details_all ();
		//echo "bjdvbshk".$this->data ['productList']->row ()->CityId;  die;
		if ($this->data ['productList']->row ()->CityId != '') {
			$this->data ['PriceMaxMin'] = $this->product_model->get_PriceMaxMin ( $this->data ['productList']->row ()->CityId );
			//print_r($this->data ['PriceMaxMin']->result()); die;
		}
		
		$this->data ['listDetail'] = $this->product_model->get_all_details(LISTINGS,array('id'=>1));	
		#echo "<pre>"; print_r($this->data ['listDetail']->result()); die;
		
		$this->data ['SearchPriceMaxMin'] = $this->product_model->searchRentalPriceMaxMin ( '  where ' . $search . '  p.status="Publish"' );
        $this->load->view ( 'site/rentals/rental_list1', $this->data );
	}
	
	
	
	

	public function mapview03_01_2015() {
		$city = '';
		$this->data ['Product_igggd'] = $this->uri->segment ( 3, 0 );
		$this->data ['statetag'] = $this->uri->segment ( 2, 0 );
		
		$searchResult = explode ( '?', $_SERVER ['REQUEST_URI'] );
		
		$search = '(1=1';
		
		if (count ( $searchResult ) > 1) {
			$search_var = $searchResult [1];
			$search_var = urldecode ( $search_var );
			$search_array = explode ( '&', $search_var );
			
			if (! empty ( $search_array )) {
				
				$find_in_set_categories = '';
				$find_in_set_subcategories = '';
				$roomtype_count = 0;
				$roomtype_qry = ' and ( ';
				foreach ( $search_array as $key => $value ) {
					
					$var = explode ( '=', $value );
					if ($var [0] == 'p' && $var [1] != '') {
						$search .= ' and p.price_range="' . $var [1] . '" ';
					}
					if ($var [0] == 'city' && $var [1] != '') {
						$CityStr = str_replace ( '+', ' ', $var [1] );
						$CityArr = explode(',',trim($CityStr));
						if (count($CityArr)==3){
							
							$search .= ' and (c.name = "' .trim($CityArr[0]). '") ';
						}else if(count($CityArr)==2) {
							
							$search .= ' and (s.name = "' . trim($CityArr[0]) . '") ';
						}else {
							$search .= ' and (c.name = "' . trim($CityArr[0]) . '") ';
						}
					}
					
					if ($var [0] == 'neighborhood' && $var [1] != '') {
						$search .= ' and p.neighborhood in ("' . $var [1] . '")  ';
					}
					
					if ($var [0] == 'propertyid' && $var [1] != '') {
						$search .= ' and p.id = "' . $var [1] . '"  ';
					}
					
					if ($var [0] == 'datefrom' && $var [1] != '') {
						$search .= ' and b.datefrom < "' . $var [1] . '"  ';
					}
					
					if ($var [0] == 'expiredate' && $var [1] != '') {
						$search .= ' and b.expiredate < "' . $var [1] . '"  ';
					}
					
					if ($var [0] == 'guests' && $var [1] != '') {
						$search .= ' and p.accommodates >= "' . $var [1] . '"  ';
					}
					
					if ($var [0] == 'bedrooms' && $var [1] != '') {
						$search .= ' and p.bedrooms = "' . $var [1] . '"  ';
					}
					
					if ($var [0] == 'beds' && $var [1] != '') {
						$search .= ' and p.beds = "' . $var [1] . '"  ';
					}
					
					if ($var [0] == 'bathrooms' && $var [1] != '') {
						
						$search .= ' and p.bathrooms = "' . $var [1] . '"  ';
					}
					/*custom filter*/
					if ($var [0] == 'bedtype' && $var [1] != '') {						
						$search .= ' and p.bed_type = "' . $var [1] . '"  ';
					}
					if ($var [0] == 'noofbathrooms' && $var [1] != '') {						
						$search .= ' and p.noofbathrooms = "' . $var [1] . '"  ';
					}
					if ($var [0] == 'min_stay' && $var [1] != '') {						
						$search .= ' and p.minimum_stay = "' . $var [1] . '"  ';
					}
					/*custom filter*/
					if ($var [0] == 'minPrice' && $var [1] != '') {
						$minPricess = $var [1] / $this->session->userdata ( 'currency_r' );
						$search .= ' and p.price >= "' . $minPricess . '"  ';
					}
					
					if ($var [0] == 'maxPrice' && $var [1] != '') {
						$minPricemm = $var [1] / $this->session->userdata ( 'currency_r' );
						$search .= ' and p.price <= "' . $minPricemm . '"  ';
					}
					if ($var [0] == 'keywords' && $var [1] != '') {
						$search .= ' and p.description like "%' . $var [1] . '%" ';
					}
					
					if ($var [0] == 'type1' && $var [1] != '') {
						if ($roomtype_count > 0) {
							$roomtype_qry .= ' or ';
						}
						$roomtype_qry .= ' p.room_type ="entire home/apt"  ';
						$roomtype_count ++;
					}
					if ($var [0] == 'type2' && $var [1] != '') {
						if ($roomtype_count > 0) {
							$roomtype_qry .= ' or ';
						}
						$roomtype_qry .= ' p.room_type = "private room"  ';
						$roomtype_count ++;
					}
					if ($var [0] == 'type3' && $var [1] != '') {
						if ($roomtype_count > 0) {
							$roomtype_qry .= ' or ';
						}
						$roomtype_qry .= ' p.room_type = "shared room"  ';
						$roomtype_count ++;
					}
					
					if (strpos ( $var [0], 'list_value' ) !== false) {
						// $find_in_set_subcategories .=' FIND_IN_SET("'.substr($var[1],2).'", sub_list) OR';
						$find_in_set_categories .= ' FIND_IN_SET("' . $var [1] . '", list_name) OR';
					}
				}
				$roomtype_qry .= ' ) ';
				
				if ($roomtype_count > 0) {
					$search .= $roomtype_qry;
				}
			}
		}
		// echo $find_in_set_categories;die;
		
		if ($city != 'search' && $city != '' && $this->data ['statetag'] != 'state' && $this->data ['statetag'] != 'rental') {
			$search .= ' and c.seourl = "' . $city . '"  ';
		}
		
		if ($this->data ['Product_igggd'] != '' && $this->data ['statetag'] == 'state' && $this->data ['statetag'] != 'rental') {
			$search .= ' and s.seourl = "' . $this->data ['Product_igggd'] . '"  ';
		}
		if ($this->data ['Product_igggd'] != '' && $this->data ['statetag'] != 'state' && $this->data ['statetag'] == 'rental') {
			$search .= ' and p.product_name like "' . $this->data ['Product_igggd'] . '"  ';
		}
		$search .= ' ) and ';
		
		if ($_GET ['propertyid'] != '') {
			$search = 'p.id = "' . $_GET ['propertyid'] . '" and ';
		}
		
		if ($find_in_set_categories != '') {
			$find_in_set_categories = substr ( $find_in_set_categories, 0, - 2 );
			$search .= '  (' . $find_in_set_categories . ') and';
		}
		if ($find_in_set_subcategories != '') {
			$find_in_set_subcategories = substr ( $find_in_set_subcategories, 0, - 2 );
			$search .= '  (' . $find_in_set_subcategories . ') and';
		}
		
		$this->data ['heading'] = '';
		
		if (count ( $_GET ) > 0)
			$config ['suffix'] = '?' . http_build_query ( $_GET, '', "&" );
		$this->data ['GetListUrl'] = $config ['first_url'] = base_url () . 'property?' . http_build_query ( $_GET );
		
		$searchPerPage = $this->config->item ( 'site_pagination_per_page' );
		$paginationNo = $this->uri->segment ( 2, 0 );
		$pageLimitStart = $paginationNo;
		$pageLimitEnd = $pageLimitStart + $searchPerPage;
		$get_ordered_list_count = $this->product_model->view_product_details_sitemapview ( '  where ' . $search . '  p.status="Publish" group by p.id order by p.created desc' );
		$this->config->item ( 'site_pagination_per_page' );
		$config ['prev_link'] = 'Previous';
		$config ['next_link'] = 'Next';
		$config ['num_links'] = 2;
		$config ['base_url'] = base_url () . 'property/';
		$config ['total_rows'] = ($get_ordered_list_count->num_rows ());
		$config ["per_page"] = $searchPerPage;
		$config ["uri_segment"] = 2;
		$this->pagination->initialize ( $config );
		$this->data ['paginationLink'] = $data ['paginationLink'] = $this->pagination->create_links ();
		
		$this->data ['get_ordered_list_count'] = $get_ordered_list_count->num_rows ();
		
		$cat_subcat = $this->product_model->get_cat_subcat ();
		$this->data ['main_cat'] = $cat_subcat ['main_cat'];
		$this->data ['sec_category'] = $cat_subcat ['sec_category'];
		
		$this->data ['productList'] = $this->product_model->view_product_details_sitemapview ( '  where ' . $search . '  p.status="Publish" group by p.id order by p.created desc limit ' . $pageLimitStart . ',' . $searchPerPage );
		 
		//echo $this->db->last_query();die;
		// echo $this->input->get('city');
		 $pieces = explode(",", $this->input->get('city'));
		// echo $pieces[0];
		if ($this->data ['productList']->num_rows()==0){
			if(count($CityArr)==2) {
				$this->data['city_lat_lng']=$this->product_model->get_all_details(STATE_TAX,array('name'=>$CityArr[0])); 
			}else {
				$this->data['city_lat_lng']=$this->product_model->get_all_details(CITY,array('name'=>$CityArr[0])); 
			}
			
		}
			
		
		//echo '<pre>'; print_r($this->data['city_lat_lng']->result_array()); die;
		 
		if ($this->data ['Product_igggd'] != '' && $this->data ['statetag'] == 'state') {
			
			$this->data ['heading'] = $this->data ['productList']->row ()->statemtitle;
			if ($this->data ['productList']->row ()->statemtitle != '') {
				$this->data ['meta_title'] = $this->data ['productList']->row ()->statemtitle;
			}
			if ($this->data ['productList']->row ()->statemkey != '') {
				$this->data ['meta_keyword'] = $this->data ['productList']->row ()->statemkey;
			}
			if ($this->data ['productList']->row ()->statemdesc != '') {
				$this->data ['meta_description'] = $this->data ['productList']->row ()->statemdesc;
			}
		} else {
			
			$this->data ['heading'] = $this->data ['productList']->row ()->city_name;
			if ($this->data ['productList']->row ()->meta_title != '') {
				$this->data ['meta_title'] = $this->data ['productList']->row ()->meta_title;
			}
			if ($this->data ['productList']->row ()->meta_keyword != '') {
				$this->data ['meta_keyword'] = $this->data ['productList']->row ()->meta_keyword;
			}
			if ($this->data ['productList']->row ()->meta_description != '') {
				$this->data ['meta_description'] = $this->data ['productList']->row ()->meta_description;
			}
		}
		
		$this->data ['product_image'] = $this->product_model->Display_product_image_details ();
		$this->data ['image_count'] = $this->product_model->Display_product_image_details_all ();
		
		if ($this->data ['productList']->row ()->CityId != '') {
			$this->data ['PriceMaxMin'] = $this->product_model->get_PriceMaxMin ( $this->data ['productList']->row ()->CityId );
		}
		
		$this->data ['listDetail'] = $this->product_model->get_all_details(LISTINGS,array('id'=>1));	
		#echo "<pre>"; print_r($this->data ['listDetail']->result()); die;
		
		$this->data ['SearchPriceMaxMin'] = $this->product_model->searchRentalPriceMaxMin ( '  where ' . $search . '  p.status="Publish"' );
        $this->load->view ( 'site/rentals/rental_list1', $this->data );
	}

	
	
	
	
	
	/* map view */
	public function popular_list() {
		
		/*
		 * $this->data['productList'] = $this->product_model->view_product_details_sitemapview(' where p.status="Publish" and p.featured ="Featured" and ( u.status="Active" or p.user_id=0) group by p.id order by p.created desc');
		 *
		 * //echo $this->db->last_query();die;
		 * echo '<pre>';print_r($this->data['productList']->result());
		 * //die;
		 * if($this->data['Product_igggd']!='' && $this->data['statetag']=='state'){
		 *
		 * $this->data['heading'] = $this->data['productList']->row()->statemtitle;
		 * if ($this->data['productList']->row()->statemtitle != ''){
		 * $this->data['meta_title'] = $this->data['productList']->row()->statemtitle;
		 * }
		 * if ($this->data['productList']->row()->statemkey != ''){
		 * $this->data['meta_keyword'] = $this->data['productList']->row()->statemkey;
		 * }
		 * if ($this->data['productList']->row()->statemdesc != ''){
		 * $this->data['meta_description'] = $this->data['productList']->row()->statemdesc;
		 * }
		 *
		 * }else{
		 *
		 * $this->data['heading'] = $this->data['productList']->row()->city_name;
		 * if ($this->data['productList']->row()->meta_title != ''){
		 * $this->data['meta_title'] = $this->data['productList']->row()->meta_title;
		 * }
		 * if ($this->data['productList']->row()->meta_keyword != ''){
		 * $this->data['meta_keyword'] = $this->data['productList']->row()->meta_keyword;
		 * }
		 * if ($this->data['productList']->row()->meta_description != ''){
		 * $this->data['meta_description'] = $this->data['productList']->row()->meta_description;
		 * }
		 * }
		 *
		 * $this->data['product_image'] = $this->product_model->Display_product_image_details();
		 *
		 * $this->data['image_count'] = $this->product_model->Display_product_image_details_all();
		 */
		//$this->data ['product']= $product = $this->product_model->get_review_rating ();
		//echo("<pre>");print_r($this->data ['product']);die;
		$limit = ' 20';
		$limitstart=0;
		
		if($this->input->get('pg') != ''){
			$limitstart = $this->input->get('pg')*20;
		}
	
		$this->data ['product']= $product = $this->product_model->get_review_rating ($limit,$limitstart);
		
		//var_dump($this->data ['product']->result());die;

	$newPage = $this->input->get('pg')+1;
		if ($this->data ['product']->num_rows() == 0){
			$qry_str = '';
			$paginationDisplay  = '';
		}else {
			$qry_str = '?pg='.$newPage;
			$paginationDisplay  = '<a title="'.$newPage.'" class="btn-more" href="'.base_url().'popular/'.$qry_str.'" style="display: none;" >See More Products</a>';
		
		}
		$this->data['paginationDisplay'] = $paginationDisplay;

		$this->data ['wishlist'] = $this->product_model->get_popular_wishlist ();
		
		$this->data ['popular_image'] = array ();
		foreach ( $this->data ['wishlist']->result_array () as $wishlist_image ) {
			
			if ($wishlist_image ['product_id'] != '') {
				$products = explode ( ',', $wishlist_image ['product_id'] );
				
				$this->data ['popular_image1'] [$wishlist_image ['id']] = 'dummyProductImage.jpg';
				
				if (count ( $products ) > 0) {
					foreach ( $products as $prod_id ) {
						
						if ($prod_id != '') {
							$popular_image = $this->product_model->get_popular_wishlistphoto ( $prod_id );
							
							if (($popular_image->num_rows () > 0) && ($popular_image->row ()->product_image != '') && (file_exists ( './server/php/rental/' . $popular_image->row ()->product_image ))) {
								$this->data ['popular_image1'] [$wishlist_image ['id']] = $popular_image->row ()->product_image;
								break;
							}
						}
					}
				}
			}
			
		}
		
		
		$this->load->view ( 'site/rentals/popular_list', $this->data );
	}
	public function browsefriends_list() {
		$this->load->view ( 'site/rentals/browsefriends_list', $this->data );
	}
	public function RentalListDateSearch() {
		echo $ddd = 'ssss'; /*
		                     * die;
		                     * $status = $this->input->post('status');
		                     * $rid = $this->input->post('rid');
		                     * $this->product_model->update_details(PAYMENT,array('received_status'=>$status),array('id'=>$rid));
		                     */
	}
	public function rental_guest_booking() {
	 
	
		$Rental_id = $this->uri->segment ( 2, 0 );
		$dataArr = array (
				'booking_status' => 'Pending' 
		);
		
		//$this->user_model->commonInsertUpdate ( RENTALENQUIRY, 'update', $excludeArr, $dataArr, array ('user_id' => $this->checkLogin ( 'U' ),'id' => $this->session->userdata ( 'EnquiryId' ) ) );
		
		$this->data ['productList'] = $this->product_model->view_product_details_booking ( ' where p.id="' . $Rental_id . '" and rq.id="' . $this->session->userdata ( 'EnquiryId' ) . '" group by p.id order by p.created desc limit 0,1' );
		
		$this->data ['countryList'] = $this->product_model->get_country_list ();
		
		$this->data ['BookingUserDetails'] = $this->product_model->view_user_details_booking ( ' where p.id="' . $Rental_id . '" and rq.id="' . $this->session->userdata ( 'EnquiryId' ) . '" group by p.id order by p.created desc limit 0,1' );
		
		$service_tax_query='SELECT * FROM '.COMMISSION.' WHERE commission_type="Guest Booking" AND status="Active"';
        $this->data['service_tax']=$this->product_model->ExecuteQuery($service_tax_query);
		
		// echo '<pre>';print_r($this->data['productList']->result());die;
		if ($this->data ['productList']->row ()->meta_title != '') {
			$this->data ['meta_title'] = $this->data ['productList']->row ()->meta_title;
		}
		if ($this->data ['productList']->row ()->meta_keyword != '') {
			$this->data ['meta_keyword'] = $this->data ['productList']->row ()->meta_keyword;
		}
		if ($this->data ['productList']->row ()->meta_description != '') {
			$this->data ['meta_description'] = $this->data ['productList']->row ()->meta_description;
		}
		
		$tax_query = 'SELECT * FROM ' . COMMISSION . ' WHERE id=4';
		
		$this->data ['tax'] = $this->product_model->ExecuteQuery ( $tax_query );
		
		$this->load->view ( 'site/rentals/payment1', $this->data );
	}
	public function AddWishListForm() {
		$Rental_id = $this->uri->segment ( 4, 0);
		$this->data ['productList'] = $this->product_model->get_product_details_wishlist($Rental_id );
		$this->data ['WishListCat'] = $this->product_model->get_list_details_wishlist ( $this->data ['loginCheck'] );
		$this->data ['notesAdded'] = $this->product_model->get_notes_added ( $Rental_id, $this->data ['loginCheck'] );
		$this->load->view ( 'site/popup/list', $this->data );
	}
	public function edit_notes()
	{
		$id = $this->input->post ( 'nid' );
		$notes = $this->input->post ( 'notes' );
		
		$this->product_model->update_details (NOTES, array (
				'notes' => $notes
		), array ('id' => $id) );
		
		$res ['result'] = '1';
		echo json_encode ( $res );
	}
	
	public function AddToWishList() {
		$Rental_id = $this->input->post ( 'pid' );
		$notes = $this->input->post ( 'add-notes' );
		$user_id = $this->data ['loginCheck'];
		$note_id = $this->input->post ( 'nid' );
		$wishlist_cat = $this->input->post ( 'wishlist_cat' );
		
		// $wishlist_catStr=implode(',',$wishlist_cat);
		if ($Rental_id != '') {
			$this->product_model->update_wishlist ( $Rental_id, $wishlist_cat );
			
			if ($note_id != '') {
				$this->product_model->update_notes ( array (
						'notes' => $notes 
				), array (
						'id' => $note_id 
				) );
			} else {
				$this->product_model->update_notes ( array (
						'product_id' => $Rental_id,
						'user_id' => $user_id,
						'notes' => $notes 
				));
			}
			
			$this->setErrorMessage ( 'success', 'Wish list added successfully.' );
		}
		echo '<script>window.history.go(-1);</script>';
	}
	public function rentalwishlistcategoryAdd() {
		$wishuser_id = $this->data ['loginCheck'];
		$wishcatname = $this->input->post ( 'list_name' );
		$val = $this->input->post ( 'whocansee' );
		$list_id = $this->input->post ( 'list_id' );
		
		if($val=='0')
		{
		$whocansee = 'Everyone';
		}
		else {
			$whocansee = 'Only me';
		}
	//	$rental_id = $this->input->post ( 'rental_id' );
		if($list_id!='')
		{
			
			$this->data ['WishListCat'] = $this->product_model->get_all_details (LISTS_DETAILS, array (
					'user_id' => $wishuser_id,
					'name' => $wishcatname,
					'id !=' => $list_id
			) );
			if ($this->data ['WishListCat']->num_rows () > 0) {
					$res ['result'] = '1';
			}
			else{
			
			$this->product_model->update_details (LISTS_DETAILS, array (
					'user_id' => $wishuser_id,
					'name' => ucfirst ( $wishcatname ),
					'whocansee' =>  $whocansee
			), array ('id' => $list_id) );
			$res ['result'] = '5';
			}
		}
		
		else{
			
		
		$this->data ['WishListCat'] = $this->product_model->get_all_details ( LISTS_DETAILS, array (
				'user_id' => $wishuser_id,
				'name' => $wishcatname 
		) );
		if ($this->data ['WishListCat']->num_rows () > 0) {
			$res ['result'] = '1';
		} else {
			$res ['result'] = '0';
			$data = $this->product_model->add_wishlist_category ( array (
					'user_id' => $wishuser_id,
					'name' => ucfirst ( $wishcatname ),
					'whocansee' =>  $whocansee
			) );
			
			$res ['wlist'] = '<li><label><input type="checkbox" checked="checked" value="' . $data . '" name="wishlist_cat[]" id="wish_' . $data . '" />' . $wishcatname . '</label></li>';
		}	
			// $this->data['WishListCat'] = $this->product_model->get_list_details_wishlist($this->data['loginCheck']);
			
			// //print_r($this->data['WishListCat']->result()); die;
			
			// if($this->data['WishListCat']->num_rows() > 0){
			
			// $length = $this->data['WishListCat']->num_rows();
			// $in=0;
			
			// foreach($this->data['WishListCat']->result() as $WList){
			// $WishRentalsArr=explode(',',$WList->product_id);
			
			// if ($in == $length)
			// {
			// $res['wlist'] .='<li><label><input type="checkbox" checked="checked" value="'.$WList->id.'" name="wishlist_cat[]" id="wish_'.$WList->id.'"';
			// }
			// else {
			// $res['wlist'] .='<li><label><input type="checkbox" value="'.$WList->id.'" name="wishlist_cat[]" id="wish_'.$WList->id.'"';
			// }
			// if(in_array($rental_id,$WishRentalsArr)){
			// $res['wlist'] .='checked="checked" ';
			// }
			
			// $res['wlist'] .=' />'.$WList->name.'</label></li>';
			// $in++;
			// }
			// }
		}
		echo json_encode ( $res );
	}
	public function edit_inquiry_details($enqid) {
		if ($this->checkLogin ( 'U' ) == '') {
			redirect ( base_url () );
		} else {
			$this->data ['heading'] = 'Edit Inquiry Details';
			$user = $this->product_model->get_all_details ( USERS, array (
					'id' => $this->checkLogin ( 'U' ) 
			) );
			// $this->load->model('contact_model');
			
			$this->data ['InquirieDisplay'] = $this->product_model->get_RentalInQueryDetails ( $enqid );
			// echo '<pre>';print_r($this->data['InquirieDisplay']->result()); die;
			
			// $this->data['ProductDisplay'] = $this->product_model->get_selected_fields_records('product_name,id',PRODUCT,array('status'=>'Publish','id'=>$this->data['InquirieDisplay']->row()->rental_id));
			$this->load->view ( 'site/user/edit_inquiry', $this->data );
		}
	}
	function getDatesFromRange($start, $end) {
		$dates = array (
				$start 
		);
		while ( end ( $dates ) < $end ) {
			$dates [] = date ( 'Y-m-d', strtotime ( end ( $dates ) . ' +1 day' ) );
		}
		
		return $dates;
	}
	public function contact_booking() {
		if ($this->checkLogin ( 'U' ) == '') {
			redirect ( base_url () );
		} else {
			$productId = $this->input->post ( 'rental_id' );
			$arrival = $this->input->post ( 'arrival_date' );
			$depature = $this->input->post ( 'depature_date' );
			$dates = $this->getDatesFromRange ( date ( 'Y-m-d', strtotime ( $arrival ) ), date ( 'Y-m-d', strtotime ( $depature ) ) );
			
			$dateCheck = $this->product_model->get_all_details ( CALENDARBOOKING, array (
					'PropId' => $productId 
			) );
			
			if ($dateCheck->num_rows () > 0) {
				foreach ( $dateCheck->result () as $dateCheckStr ) {
					if (in_array ( $dateCheckStr->the_date, $dates )) {
						
						$this->setErrorMessage ( "success", "Rental date already booked" );
						redirect ( base_url () . "listing-reservation" );
					}
				}
			}
			
			$i = 1;
			$dateMinus1 = count ( $dates ) - 1;
			
			foreach ( $dates as $date ) {
				if ($i <= $dateMinus1) {
					$BookingArr = $this->product_model->get_all_details ( CALENDARBOOKING, array (
							'PropId' => $productId,
							'id_state' => 1,
							'id_item' => 1,
							'the_date' => $date 
					) );
					if ($BookingArr->num_rows () > 0) {
					} else {
						$dataArr = array (
								'PropId' => $productId,
								'id_state' => 1,
								'id_item' => 1,
								'the_date' => $date 
						);
						$this->product_model->simple_insert ( CALENDARBOOKING, $dataArr );
					}
				}
				$i ++;
			}
			
			$this->product_model->update_details ( RENTALENQUIRY, array (
					'booking_status' => 'Booked',
					'checkin' => $arrival,
					'checkout' => $depature 
			), array (
					'id' => $this->input->post ( 'cntId' ) 
			) );
			
			// SCHEDULE calendar
			$DateArr = $this->product_model->get_all_details ( CALENDARBOOKING, array (
					'PropId' => $productId 
			) );
			$dateDispalyRowCount = 0;
			if ($DateArr->num_rows > 0) {
				$dateArrVAl .= '{';
				foreach ( $DateArr->result () as $dateDispalyRow ) {
					
					if ($dateDispalyRowCount == 0) {
						
						$dateArrVAl .= '"' . $dateDispalyRow->the_date . '":{"available":"1","bind":0,"info":"","notes":"","price":"' . $price . '","promo":"","status":"booked"}';
					} else {
						$dateArrVAl .= ',"' . $dateDispalyRow->the_date . '":{"available":"1","bind":0,"info":"","notes":"","price":"' . $price . '","promo":"","status":"booked"}';
					}
					$dateDispalyRowCount = $dateDispalyRowCount + 1;
				}
				$dateArrVAl .= '}';
			}
			
			$inputArr4 = array ();
			$inputArr4 = array (
					'id' => $productId,
					'data' => trim ( $dateArrVAl ) 
			);
			
			$this->product_model->update_details ( SCHEDULE, $inputArr4, array (
					'id' => $productId 
			) );
			
			// End SCHEDULE calendar
			
			$condition = array (
					'id' => $this->input->post ( 'renter_id' ) 
			);
			$condition1 = array (
					'id' => $this->input->post ( 'rental_id' ) 
			);
			$Renter_details = $this->product_model->get_all_details ( USERS, $condition );
			
			$Rental_details = $this->product_model->get_all_details ( PRODUCT, $condition1 );
			$Contact_details = $this->product_model->get_all_details ( RENTALENQUIRY, array (
					'id' => $this->input->post ( 'cntId' ) 
			) );
			$Rental_img = $this->product_model->get_all_details ( PRODUCT_PHOTOS, array (
					'product_id' => $this->input->post ( 'rental_id' ) 
			) );
			$User_details = $this->product_model->get_all_details ( USERS, array (
					'id' => $Contact_details->row ()->user_id 
			) );
			if ($Rental_img->row ()->product_image != '') {
				$rentalImage = base_url () . 'server/php/rental/thumbnail/' . $Rental_img->row ()->product_image;
			} else {
				$rentalImage = base_url () . 'images/product/dummyProductImage.jpg';
			}
			
			// ---------------email to user---------------------------
			$newsid = '1';
			$template_values = $this->product_model->get_newsletter_template_details ( $newsid );
			
			$subject = 'From: ' . $this->config->item ( 'email_title' ) . ' - ' . $template_values ['news_subject'];
			$adminnewstemplateArr = array (
					'email_title' => $this->config->item ( 'email_title' ),
					'logo' => $this->data ['logo'],
					'first_name' => $User_details->row ()->firstname,
					'last_name' => $User_details->row ()->lastname,
					'Guests' => $Contact_details->row ()->NoofGuest,
					'user_email' => $User_details->row ()->email,
					'ph_no' => $Contact_details->row ()->phone_no,
					'Message' => $Contact_details->row ()->Enquiry,
					'Arr_date' => $Contact_details->row ()->checkin,
					'Dep_date' => $Contact_details->row ()->checkout,
					'renter_id' => $this->input->post ( 'renter_id' ),
					'rental_id' => $this->input->post ( 'rental_id' ),
					'renter_fname' => $Renter_details->row ()->firstname,
					'renter_lname' => $Renter_details->row ()->lastname,
					'owner_email' => $Renter_details->row ()->email,
					'owner_phone' => $Renter_details->row ()->phone_no,
					'rental_image' => $rentalImage,
					'rental_name' => $Rental_details->row ()->product_title 
			);
			
			extract ( $adminnewstemplateArr );
			// $ddd =htmlentities($template_values['news_descrip'],null,'UTF-8');
			// $message .= 'Your inquiry for the rental '.$Rental_details->row()->product_name.' is booked';
			// $message .= 'Arrival date: '.$arrival.' Depature date: '.$depature;
			$header .= "Content-Type: text/plain; charset=ISO-8859-1\r\n";
			
			$message .= '<!DOCTYPE HTML>
						<html>
						<head>
						<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
						<meta name="viewport" content="width=device-width"/><body>';
			
			include ('./newsletter/registeration' . $newsid . '.php');
			
			$message .= '</body>
						</html>';
			
			if ($template_values ['sender_name'] == '' && $template_values ['sender_email'] == '') {
				$sender_email = $this->data ['siteContactMail'];
				$sender_name = $this->data ['siteTitle'];
			} else {
				$sender_name = $template_values ['sender_name'];
				$sender_email = $template_values ['sender_email'];
			}
			
			$sender_name = ucfirst ( $Renter_details->row ()->firstname ) . ' ' . ucfirst ( $Renter_details->row ()->lastname );
			$sender_email = $Renter_details->row ()->email;
			// add inbox from mail
			$this->product_model->simple_insert ( INBOX, array (
					'sender_id' => $sender_email,
					'user_id' => $User_details->row ()->email,
					'mailsubject' => $template_values ['news_subject'],
					'description' => stripslashes ( $message ) 
			) );
			
			$email_values = array (
					'mail_type' => 'html',
					'from_mail_id' => $sender_email,
					'mail_name' => $sender_name,
					'to_mail_id' => $User_details->row ()->email,
					'subject_message' => $template_values ['news_subject'],
					'body_messages' => $message 
			);
			
			// echo '<pre>';print_r($email_values);die;
			$email_send_to_common = $this->product_model->common_email_send ( $email_values );
			
			// print_r($email_values); die;
			
			/**
			 * ************************************************************
			 */
			
			$this->setErrorMessage ( "success", "Rental booked" );
			redirect ( base_url () . "listing-reservation" );
		}
	}
	
	
	public function insert_pay() {
		
		/*	//echo '<pre>'; print_r($_POST);die;
		$curTimeVal = date('Y-m-d H:i:s');
		$this->db->where('status', 'Unpaid');
		$this->db->where('DATE_ADD(created,INTERVAL 1 DAY) < ', $curTimeVal , true);
		$this->db->delete(BOOKING); 
		//echo $this->db->last_query();
		
		
		$this->session->unset_userdata('BooingRandomNo');
		//User ID	
		$loginUserId = $this->checkLogin('U');
		
		$userDetail=$this->experience_model->get_all_details(USERS,array('id'=>$loginUserId));
		
		//BOOKING Id
		$BookingID = time();
		
		$paymtdata = array('BooingRandomNo' => $BookingID);
		$this->session->set_userdata($paymtdata);
		$review_date1 = strtotime(date("Y-m-d", strtotime($this->input->post('booking_date'))) . " +15 day");
		$rdate = date('Y-m-d',$review_date1);
		$excludeArr =array('ccno','cmonth','cyear','cvvno','submit','hid','uid','listname');
		$condition=array();
		$dataArr=array('user_id'=>$loginUserId,'bookingId'=>$BookingID,'review_date'=>date('Y-m-d',$review_date1));
		
		$this->experience_model->commonInsertUpdate(BOOKING,'insert',$excludeArr,$dataArr,$condition);
		
		//echo $this->db->last_query();die;
		//$this->setErrorMessage('error','Payment successfully ! Guide will be contact soon');
		
		$APILOGINID = $this->config->item('payment_1');
    	
		//Authorize.net Intergration

			$Auth_Details=unserialize($APILOGINID); 
			$Auth_Setting_Details=unserialize($Auth_Details['settings']);	

			error_reporting(-1);
			define("AUTHORIZENET_API_LOGIN_ID",$Auth_Setting_Details['Login_ID']);    // Add your API LOGIN ID
			define("AUTHORIZENET_TRANSACTION_KEY",$Auth_Setting_Details['Transaction_Key']); // Add your API transaction key
			define("API_MODE",$Auth_Setting_Details['mode']);

				if(API_MODE	=='sandbox'){
					define("AUTHORIZENET_SANDBOX",true);// Set to false to test against production
				}else{
					define("AUTHORIZENET_SANDBOX",false);
				}       
				define("TEST_REQUEST", "FALSE"); 

				require_once './authorize/AuthorizeNet.php';
				
				$transaction = new AuthorizeNetAIM;
				$transaction->setSandbox(AUTHORIZENET_SANDBOX);
				
				$transaction->setFields(
					array(
					'amount' =>  $this->input->post('amount'), 
					'card_num' =>  $this->input->post('ccno'), 
					'exp_date' => $this->input->post('cmonth').'/'.$this->input->post('cyear'),
					'first_name' => $userDetail->row()->full_name,
					'last_name' => '',
					'address' => '',
					'city' => '',
					'state' => '',
					'country' => '',
					'phone' => $this->input->post('mno'),
					'email' =>  $userDetail->row()->email,
					'card_code' => $this->input->post('cvvno'),
					)
				);
				//echo '<pre>'; print_r($transaction);die;
				$response = $transaction->authorizeAndCapture();
		
			if( $response->approved ){
				redirect('order/success/'.$loginUserId.'/'.$BookingID.'/'.$response->transaction_id);
 			}else{		
				//redirect('site/shopcart/cancel?failmsg='.$response->response_reason_text); 
				redirect('order/failure/'.$response->response_reason_text); 
			}
			
			*/
	}
	
		
		
		
}

/*End of file rentals.php */
/* Location: ./application/controllers/site/rentals.php */