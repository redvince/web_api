<?php 
/* Codeigniter Controller Class: api_instructions.php
*  Author: Vincent Redmond
*  Assignment: WE3.0 Server-side Web Development, Digital Skills Academy
*  Student ID: D13126159
*  Date : 2014/05/09
*/
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Api_instructions extends CI_Controller {
	//Index Page for this controller.
	public function index()
	{
		$this->load->view('api_view');
	}
}
/* End of file api_instructions.php */
/* Location: ./application/controllers/api_instructions.php */