<?php 
/* Codeigniter Controller Class: artist.php
*  Author: Vincent Redmond
*  Assignment: WE3.0 Server-side Web Development, Digital Skills Academy
*  Student ID: D13126159
*  Date : 2014/05/09
*/
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Artist extends CI_Controller {
	//Index Page for Artist Controller, passes boolean to artist_view
	public function index()
	{
		$data['index'] = TRUE;
		$this->load->view('artist_view', $data);
	}
	//get_artist_info page/function for Artist Controller, passes JSON to artist_view
	public function get_artist_info($artist_name = 'all')
	{
		//loads Artist_model
		$this->load->model('Artist_model');
		//loads Artist_lib library I wrote to help process JOIN results
		$this->load->library('Artist_lib');
		//replaces underscores and whitespaces from parameter passed
		$artist_name = str_replace('_', ' ', $artist_name);
		$artist_name = str_replace('%20', ' ', $artist_name);
		//gets data from Artist_model usings model's function
		$result_array = $this->Artist_model->get_artist_data($artist_name);
		//calls function from artist_lib, encodes result as JSON, and stores in $data array to be passed to view
		$data['records'] = json_encode($this->artist_lib->format_info($result_array));
		//if no results in database, shows relevant error message 
		if ($data['records'] == "[]") 
		{	
			$message = 'Discography database does not contain records for "' . $artist_name . '". Please try another artist.';
			show_error($message, 404);
		}
		else
		{
			//passes boolean and results to artist_view
			$data['index'] = FALSE;
			$this->load->view('artist_view', $data);
		}
	}
	//get_artist_discography page/function for Artist Controller, passes JSON to artist_view
	public function get_artist_discography($artist_name = 'all')
	{
		//loads Artist_model
		$this->load->model('Artist_model');
		//loads Artist_lib library I wrote to help process JOIN results
		$this->load->library('Artist_lib');

		$artist_name = str_replace('_', ' ', $artist_name);
		$artist_name = str_replace('%20', ' ', $artist_name);
		//gets data from Artist_model usings model's function
		$result_array = $this->Artist_model->get_artist_discography_data($artist_name);

		$data['records'] = json_encode($this->artist_lib->format_discography($result_array));

		if ($data['records'] == "[]") 
		{	
			$message = 'Discography database does not contain records for "' . $artist_name . '". Please try another artist.';
			show_error($message, 404);
		}
		else
		{
			$data['index'] = FALSE;
			$this->load->view('artist_view', $data);
		}
	}
	//get_artist_info_detailed page/function for Artist Controller, passes JSON to artist_view
	public function get_artist_info_detailed($artist_name = 'all')
	{
		//loads Artist_model
		$this->load->model('Artist_model');
		//loads Artist_lib library I wrote to help process JOIN results
		$this->load->library('Artist_lib');

		$artist_name = str_replace('_', ' ', $artist_name);
		$artist_name = str_replace('%20', ' ', $artist_name);
		//gets data from Artist_model usings model's function
		$result_array = $this->Artist_model->get_artist_data_detailed($artist_name);

		$data['records'] = json_encode($this->artist_lib->format_info_detailed($result_array));

		if ($data['records'] == "[]") 
		{   
			$message = 'Discography database does not contain records for "' . $artist_name . '". Please try another artist.';
			show_error($message, 404);
		}
		else
		{
			$data['index'] = FALSE;
			$this->load->view('artist_view', $data);
		}
	}
}
/* End of file artist.php */
/* Location: ./application/controllers/artist.php */