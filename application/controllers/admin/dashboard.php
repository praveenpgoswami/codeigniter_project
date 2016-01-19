<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard extends MY_Controller {

	function __construct(){
        parent::__construct();
		$this->load->helper(array('cookie','date','form'));
		$this->load->library(array('encrypt','form_validation'));
		$this->load->model('dashboard_model');
		//$this->load->model('giftcards_model');
    }


   	public function index(){
		if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			redirect('admin/dashboard/admin_dashboard');
		}
	}

	public function admin_dashboard()
	{
    if ($this->checkLogin('A') == ''){
			redirect('admin');
		}else {
			/* get dashboard values start*/
			$recentUserWhereCondition = array('status'=>'Active','group'=>'User');
			/* Get user count start*/
			$userTableName = USERS;
			$userFieldName = 'id';

			$getTotalUsersCount = $this->dashboard_model->getCountDetails($userTableName,$userFieldName,$recentUserWhereCondition);

			//get total number of pet sitter users
			$where_sitter = array('status'=>'Active','group'=>'User', 'user_role' => 'pet_sitter');
			$totalPetSitter = $this->dashboard_model->getCountDetails($userTableName,$userFieldName,$where_sitter);

			//get total number of pet owner users
			$where_owner = array('status'=>'Active','group'=>'User', 'user_role' => 'pet_owner');
			$totalPetOwner = $this->dashboard_model->getCountDetails($userTableName,$userFieldName,$where_owner);


			//echo $this->db->last_query();die;
			/* Get user count end*/

			/* last 24 hours record start */
			$userWhereCondition = array('status'=>'Active');
			$userWhereCondition1 = array('status'=>'Active');
			 $getTodayUsersCount = $this->dashboard_model->getTodayUsersCount($userTableName,$userFieldName,$userWhereCondition1);
			//echo $this->db->last_query();die;

			/* last 24 hours record start */

			/* last 30 days record start */
			$userWhereCondition1 = array('status'=>'Active');
			$getThisMonthCount = $this->dashboard_model->getThisMonthCount($userTableName,$userFieldName,$userWhereCondition1);
			//echo $getThisMonthCount;die;
			/* last 30 days  record start */


			/* last year record start */
			$userWhereCondition1 = array('status'=>'Active');
			$getLastYearCount = $this->dashboard_model->getLastYearCount($userTableName,$userFieldName,$userWhereCondition1);

			//echo $this->db->last_query();die;
			//echo $getLastYearCount;die;
			//echo $getThisMonthCount;die;
			/* last last year  record start */

			/* get recent users list start*/
			$recentUserWhereCondition = array('status'=>'Active','group'=>'User');
			$userOrderBy = 'desc';
			$userLimit = "3";
			$getRecentUsersList = $this->dashboard_model->getRecentDetails($userTableName,$userFieldName,$userOrderBy,$userLimit,$recentUserWhereCondition);
			//echo "<pre>";print_r($getRecentUsersList);die;


			/* get recent users list end*/

			/* get recent sellers list start*/
			$sellerWhereCondition = array('status'=>'Active','group'=>'Seller');
			$userOrderBy = 'desc';
			$userLimit = "3";
			$getRecentSellerList = $this->dashboard_model->getRecentDetails($userTableName,$userFieldName,$userOrderBy,$userLimit,$sellerWhereCondition);
			//echo "<pre>";print_r($getRecentUsersList);die;


			/* get recent sellers list end*/

			/* get total product count start*/
			$productTableName = PRODUCT;
			$productFieldName = 'id';
			$productWhereCondition = array();
			$getTotalProductCount = $this->dashboard_model->getCountDetails($productTableName,$productFieldName,$productWhereCondition);

			//echo $getTotalProductCount;die;

			$todayproductWhereCondition=array('created'=>date('Y-m-d'));
			$getTodayProductCount = $this->dashboard_model->getCountDetails($productTableName,$productFieldName,$todayproductWhereCondition);
			//echo $getTotalProductCount;die;
			/* get total product count end*/

			/* get total seller count start */
			$sellerWhereCondition = array('group'=>'Seller');
			$getTotalSellerCount = $this->dashboard_model->getCountDetails($userTableName,$userFieldName,$sellerWhereCondition);

			$TodaysellerWhereCondition=array('created'=>date('Y-m-d'),'group'=>'Seller');
			$getTodaySellerCount = $this->dashboard_model->getCountDetails($userTableName,$userFieldName,$TodaysellerWhereCondition);
			/* get total seller count end*/

			/* get total giftcard count start */

			$giftCardTableName = GIFTCARDS;
			$giftCardFieldName = 'id';
			$giftCardWhereCondition = array();

			$getTotalGiftCardCount = $this->dashboard_model->getCountDetails($giftCardTableName,$giftCardFieldName,$giftCardWhereCondition);
			/* get total giftcard count end*/


			/* get total Subscriber count start */

			$subscriberTableName = FANCYYBOX_USES;
			$subscriberFieldName = 'id';
			$subscriberWhereCondition = array();

			$getTotalSubscriberCount = $this->dashboard_model->getCountDetails($subscriberTableName,$subscriberFieldName,$subscriberWhereCondition);
			/* get total Subscriber count end*/

			/* get gift card values start */

			//$this->data['heading'] = 'Gift Cards Dashboard';
			$condition = 'order by `created` desc';
			//$this->data['giftCardsList'] = $this->giftcards_model->get_giftcard_details($condition);
			//$this->load->view('admin/giftcards/display_giftcards_dashboard',$this->data);
		/* get gift card values end */



			/* get dashboard values end*/


			/* get recent orders details start*/


			$getOrderDetails = $this->dashboard_model->getDashboardOrderDetails();

			//echo "<pre>";print_r($getOrderDetails);die;
			/* get recent orders details end*/

			/*Assign dashboard values to view start */
			$data = array(
								'totalUserCounts' => $getTotalUsersCount,
								'todayUserCounts' => $getTodayUsersCount,
								'getRecentUsersList' => $getRecentUsersList,
								'getThisMonthCount' => $getThisMonthCount,
								'getLastYearCount' => $getLastYearCount,
								'getTotalProductCount' => $getTotalProductCount,
								'getTodayProductCount'=>$getTodayProductCount,
								'getTotalSellerCount' => $getTotalSellerCount,
								'getTodaySellerCount' => $getTodaySellerCount,
								'getTotalGiftCardCount' => $getTotalGiftCardCount,
								'getTotalSubscriberCount' => $getTotalSubscriberCount,
								'heading' => 'Dashboard',
								'getOrderDetails' => $getOrderDetails,
								'getRecentSellerList' => $getRecentSellerList,
								'totalPetSitter' => $totalPetSitter,
								'totalPetOwner' => $totalPetOwner,
								'totalUsers' => $totalPetOwner + $totalPetSitter);

			$this->data = array_merge($data,$this->data);

			$heading = array('heading'=>'Dashboard');
			$this->data = array_merge($this->data,$heading);
			//print_r($data);die;
			$this->load->view('admin/adminsettings/dashboard',$this->data);


			/*Assign dashboard values to view end */
		}

	}



}