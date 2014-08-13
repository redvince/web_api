<?php 
/* Codeigniter Library Class: Album_lib.php
*  Author: Vincent Redmond
*  Assignment: WE3.0 Server-side Web Development, Digital Skills Academy
*  Student ID: D13126159
*  Date : 2014/05/09
*/
if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Album_lib {
	//function to help formatting from JOIN results
	public function format_tracklist($result_array)
	{
		$format_result = array();
		//loop through results
		foreach ($result_array as $row)
		{
			//checks array to avoid multiple results from JOIN
			if (!isset($format_result[$row['albumName']]))
			{
				//creates Standard Defined Class objects
				$album = new StdClass();
				$tracklist = new StdClass();
				//adds necessary attibutes from results
				$album->albumName = $row['albumName'];
				$album->thumbnail = $row['albumThumbnail'];
				$album->trackCount = $row['trackCount'];
				$tracklist->trackNumber = $row['trackNumber'];
				$tracklist->trackName = $row['trackName'];
				//forces album object to point to an array of tracklist objects
				$album->tracklist = array($tracklist);
				//adds object to format_result array
				$format_result[$row['albumName']] = $album;
			}
			//album already in format_result array
			else
			{
				//checks if current $row track is stored in format_result array
				if (!in_array($row['trackName'], $format_result[$row['albumName']]->tracklist))
				{
					$tracklist = new StdClass();
					$tracklist->trackNumber = $row['trackNumber'];
					$tracklist->trackName = $row['trackName'];
					//pushes tracklist object onto array of tracklists for album already in format_result array
					array_push($format_result[$row['albumName']]->tracklist, $tracklist);
				}
			}
		}
		//just interested in array values
		return array_values($format_result);
	}
	//function to help formatting from JOIN results
	//same logic as previous function but interested in larger results
	public function format_info_detailed($result_array)
	{
		$format_result = array();
		
		foreach ($result_array as $row)
		{
			if (!isset($format_result[$row['albumName']]))
			{
				$album = new StdClass();
				$tracklist = new StdClass();
				$album->albumName = $row['albumName'];
				$album->artistName = $row['albumArtist'];
				$album->thumbnail = $row['albumThumbnail'];
				$album->year = $row['year'];
				$album->albumLength = $row['albumLength'];
				$album->trackCount = $row['trackCount'];
				$album->trackCount = $row['trackCount'];
				$tracklist->trackNumber = $row['trackNumber'];
				$tracklist->trackName = $row['trackName'];
				$tracklist->trackLength = $row['trackLength'];
				$tracklist->trackUrl = $row['trackUrl'];
				$album->tracklist = array($tracklist);
				$format_result[$row['albumName']] = $album;
			}
			else
			{
				if (!in_array($row['trackName'], $format_result[$row['albumName']]->tracklist))
				{
					$tracklist = new StdClass();
					$tracklist->trackNumber = $row['trackNumber'];
					$tracklist->trackName = $row['trackName'];
					$tracklist->trackLength = $row['trackLength'];
					$tracklist->trackUrl = $row['trackUrl'];
					array_push($format_result[$row['albumName']]->tracklist, $tracklist);
				}
			}
		}
		//actually works both ways
		return $format_result;
	}
}
/* End of file Album_lib.php */
/* Location: ./application/libraries/Album_lib.php */