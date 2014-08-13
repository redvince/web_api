<?php 
/* Codeigniter Model Class: artist_model.php
*  Author: Vincent Redmond
*  Assignment: WE3.0 Server-side Web Development, Digital Skills Academy
*  Student ID: D13126159
*  Date : 2014/05/09
*/
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Artist_model extends CI_Model {

	function __construct()
	{
		parent::__construct();
	}
	//function to query artists table in discography database
	public function get_artist_data($artist_name)
	{
		if ($artist_name == 'all')
		{
			//query to get all artists info from database
			$query = $this->db->get('artists');
		}
		else
		{
			//query to get artist info specific to parameter passed
			$query = $this->db->get_where('artists', array('artistName'=>$artist_name));
		}
		//returns result as an array
		return $query->result_array();
	}
	//function to query albums and artists tables
	//gets all columns in results as custom library classes decide what columns to process
	public function get_artist_discography_data($artist_name)
	{
		//gets discography for all artists
		if ($artist_name == 'all')
		{
			$this->db->select('*');
			$this->db->from('artists');
			//joins tables on artist name
			$this->db->join('albums', 'artists.artistName = albums.albumArtist');
			$query = $this->db->get();
		}
		else
		{
			//gets discography for artist passed as parameter
			$this->db->select('*');
			$this->db->from('artists');
			//joins tables on artist name
			$this->db->join('albums', 'artists.artistName = albums.albumArtist');
			$this->db->where('artistName', $artist_name);
			$query = $this->db->get();
			return $query->result_array();
		}
		//returns result as an array
		return $query->result_array();
	}

	public function get_artist_data_detailed($artist_name)
	{
		//calls function from it's own class to get all columns in results
		//custom library classes decide what columns to process
		return $this->get_artist_discography_data($artist_name);
	}
}
/* End of file artist_model.php */
/* Location: ./application/models/artist_model.php */