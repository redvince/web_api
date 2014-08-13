<?php 
/* Codeigniter Controller Class: album.php
*  Author: Vincent Redmond
*  Assignment: WE3.0 Server-side Web Development, Digital Skills Academy
*  Student ID: D13126159
*  Date : 2014/05/09
*/
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Album extends CI_Controller {
	//Index Page for Album Controller, passes boolean to album_view
	public function index()
	{
		$data['index'] = TRUE;
		$this->load->view('album_view', $data);
	}
	//get_album_info page/function for Album Controller, passes JSON to album_view
	public function get_album_info($album_name='all')
	{
		//loads Album_model
		$this->load->model('Album_model');
		//replaces underscores and whitespaces from parameter passed
		$album_name = str_replace('_', ' ', $album_name);
		$album_name = str_replace('%20', ' ', $album_name);
		//calls function from Album_model, encodes result as JSON, and stores in $data array to be passed to view
		$data['records'] = json_encode($this->Album_model->get_album_data($album_name));
		//if no results in database, shows relevant error message 
		if ($data['records'] == "[]") 
		{   
			$message = 'Discography database does not contain records for "' . $album_name . '". Please try another album.';
			show_error($message, 404);
		}
		else
		{
			//passes boolean and results to album_view
			$data['index'] = FALSE;
			$this->load->view('album_view', $data);
		}
	}
	//get_tracklist page/function for Album Controller, passes JSON to album_view
	public function get_tracklist($album_name='all')
	{
		//loads Album_model
		$this->load->model('Album_model');
		//loads Album_lib library I wrote to help process JOIN results
		$this->load->library('Album_lib');

		$album_name = str_replace('_', ' ', $album_name);
		$album_name = str_replace('%20', ' ', $album_name);
		
		//gets data from Album_model usings model's function
		$result_array = $this->Album_model->get_tracklist_data($album_name);
		//calls function from album_lib, encodes result as JSON, and stores in $data array to be passed to view
		$data['records'] = json_encode($this->album_lib->format_tracklist($result_array));

		if ($data['records'] == "[]") 
		{   
			$message = 'Discography database does not contain records for "' . $album_name . '". Please try another album.';
			show_error($message, 404);
		}
		else
		{
			$data['index'] = FALSE;
			$this->load->view('album_view', $data);
		}
	}
	//get_album_info_detailed page/function for Album Controller, passes JSON to album_view
	public function get_album_info_detailed($album_name='all')
	{
		//loads Album_model
		$this->load->model('Album_model');
		//loads Album_lib library I wrote to help process JOIN results
		$this->load->library('Album_lib');

		$album_name = str_replace('_', ' ', $album_name);
		$album_name = str_replace('%20', ' ', $album_name);
		//gets data from Album_model usings model's function
		$result_array = $this->Album_model->get_album_data_detailed($album_name);
		//calls function from album_lib, encodes result as JSON, and stores in $data array to be passed to view
		$data['records'] = json_encode($this->album_lib->format_info_detailed($result_array));

		if ($data['records'] == "[]") 
		{   
			$message = 'Discography database does not contain records for "' . $album_name . '". Please try another album.';
			show_error($message, 404);
		}
		else
		{
			$data['index'] = FALSE;
			$this->load->view('album_view', $data);
		}
	}
}
/* End of file album.php */
/* Location: ./application/controllers/album.php */