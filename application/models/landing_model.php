<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 
 * Landing page functions
 * @author Teamtweaks
 *
 */
class Landing_model extends My_Model
{
	public function __construct() 
	{
		parent::__construct();
	}
	function get_city_details($q){
	//$this->db->select('c.name,COUNT(p.id) as Rentals,states_list.name as 
		$this->db->select('c.name,states_list.name as State,country_list.country_code,country_list.name as country_name');
		$this->db->from(CITY.' as c');
		/* $this->db->join(PRODUCT_ADDRESS.' as pa',"pa.city=c.id","LEFT");
		$this->db->join(PRODUCT.' as p',"pa.product_id=p.id and p.status='Publish'","LEFT"); */
		$this->db->join(STATE_TAX.' as states_list',"states_list.id=c.stateid","LEFT");
		$this->db->join(COUNTRY_LIST.' as country_list',"country_list.id=states_list.countryid","LEFT");
		$this->db->like('states_list.name', $q);
		$this->db->or_like('c.name', $q);
		
		$this->db->limit(30);
		//$this->db->group_by('pa.city');
		$this->db->order_by('c.name',asc);
		$this->db->order_by('states_list.name',asc);
		
		$query = $this->db->get();
        //echo $this->db->last_query();  die;
		$autocomplete = $query->result_array();
		return $autocomplete; 
	}
}