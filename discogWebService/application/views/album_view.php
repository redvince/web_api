<?php 
/* Codeigniter View: album_view.php
*  Author: Vincent Redmond
*  Assignment: WE3.0 Server-side Web Development, Digital Skills Academy
*  Student ID: D13126159
*  Date : 2014/05/09
*/
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//checks boolean to see if default Album Controller Page was accessed and indicates incorrect usage of the API
if ($index == TRUE)
{
	$message = "Incorrect Usage of Web API. Please refer to <a href=\"/discogWebService/api_instructions\">Discography Web API Instructions.</a>";
	show_error($message, 405);
}
else
{
	//echo JSON results passed from Album Controller
	echo $records;
}
/* End of file album_view.php */
/* Location: ./application/views/album_view.php */