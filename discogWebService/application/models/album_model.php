<?php 
/* Codeigniter Model Class: album_model.php
*  Author: Vincent Redmond
*  Assignment: WE3.0 Server-side Web Development, Digital Skills Academy
*  Student ID: D13126159
*  Date : 2014/05/09
*/
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Album_model extends CI_Model {

	function __construct()
	{
		parent::__construct();
	}
	//function to query albums table in discography database
	public function get_album_data($album_name)
	{
		if ($album_name == 'all')
		{
			//query to get all albums info from database
			$query = $this->db->get('albums');
		}
		else
		{
			//query to get album info specific to parameter passed
			$query = $this->db->get_where('albums', array('albumName'=>$album_name));
		}
		//returns result as object 
		return $query->result();
	}
	//function to query albums and tracks tables
	//gets all columns in results as custom library classes decide what columns to process
	public function get_tracklist_data($album_name)
	{
		//gets tracklist data for all albums
		if ($album_name == 'all')
		{
			$this->db->select('*');
			$this->db->from('albums');
			//joins tables on album name
			$this->db->join('tracks', 'albums.albumName = tracks.trackAlbumName');
			$query = $this->db->get();
		}
		else
		{
			//gets tracklist data for album passed as parameter
			$this->db->select('*');
			$this->db->from('albums');
			//joins tables on album name
			$this->db->join('tracks', 'albums.albumName = tracks.trackAlbumName');
			$this->db->where('albumName', $album_name);
			$query = $this->db->get();
		}
		//returns result as array
		return $query->result_array();
	}
	//function to query albums and tracks tables
	public function get_album_data_detailed($album_name)
	{
		//calls function from it's own class to get all columns in results
		//custom library classes decide what columns to process
		return $this->get_tracklist_data($album_name);
	}
}
/* End of file album_model.php */
/* Location: ./application/models/album_model.php */