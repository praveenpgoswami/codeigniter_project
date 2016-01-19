<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 *
 * This model contains all db functions related to user management
 * @author Teamtweaks
 *
 */
class Advert_model extends My_Model
{
	public function __construct()
	{
		parent::__construct();
	}

	/**
    *
    * Getting Users details
    * @param String $condition
    */
   public function get_advert_details($condition=''){
   		$Query = " select * from ".ADVERT." ".$condition;
   		return $this->ExecuteQuery($Query);
   }
}