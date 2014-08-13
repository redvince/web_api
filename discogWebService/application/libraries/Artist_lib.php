<?php 
/* Codeigniter Library Class: Artist_lib.php
*  Author: Vincent Redmond
*  Assignment: WE3.0 Server-side Web Development, Digital Skills Academy
*  Student ID: D13126159
*  Date : 2014/05/09
*/
if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Artist_lib {
	//function to help formatting of serialized array stored in database
	public function format_info($result_array)
	{
		for ($i=0; $i <sizeof($result_array) ; $i++) 
		{ 
			$result_array[$i]["genres"] = unserialize($result_array[$i]['genres']);
		}
		return $result_array;
	}
	//function to help formatting from JOIN results
	public function format_discography($result_array)
	{
		$format_result = array();
		//loop through results
		foreach ($result_array as $row)
		{
			//checks array to avoid multiple results from JOIN
			if (!isset($format_result[$row['artistName']]))
			{
				//creates Standard Defined Class objects
				$artist = new StdClass();
				$album = new StdClass();
				//adds necessary attibutes from results
				$artist->artistName = $row['artistName'];
				$artist->thumbnail = $row['artistThumbnail'];
				$artist->albumCount = $row['albumCount'];
				$album->albumName = $row['albumName'];
				$album->thumbnail = $row['albumThumbnail'];
				$album->year = $row['year'];
				//forces artist object to point to an array of album objects
				$artist->albums = array($album);
				//adds object to format_result array
				$format_result[$row['artistName']] = $artist;
			}
			//album already in format_result array
			else
			{
				//checks if current $row album is stored in format_result array
				if (!in_array($row['albumName'], $format_result[$row['artistName']]->albums))
				{
					$album = new StdClass();
					$album->albumName = $row['albumName'];
					$album->thumbnail = $row['albumThumbnail'];
					$album->year = $row['year'];
					//pushes album object onto array of alums for artist already in format_result array
					array_push($format_result[$row['artistName']]->albums, $album);
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
			if (!isset($format_result[$row['artistName']]))
			{
				$artist = new StdClass();
				$album = new StdClass();
				$artist->artistName = $row['artistName'];
				$artist->thumbnail = $row['artistThumbnail'];
				$artist->bio = $row['bio'];
				//unserialize array of genres stored in database
				$unserialised_genres = unserialize($row['genres']);
				$artist->genres = $unserialised_genres;
				$artist->albumCount = $row['albumCount'];
				$album->albumName = $row['albumName'];
				$album->thumbnail = $row['albumThumbnail'];
				$album->year = $row['year'];
				$album->albumLength = $row['albumLength'];
				$album->trackCount = $row['trackCount'];
				$artist->albums = array($album);

				$format_result[$row['artistName']] = $artist;
			}
			else
			{
				if (!in_array($row['albumName'], $format_result[$row['artistName']]->albums))
				{
					$album = new StdClass();
					$album->albumName = $row['albumName'];
					$album->thumbnail = $row['albumThumbnail'];
					$album->year = $row['year'];
					$album->albumLength = $row['albumLength'];
					$album->trackCount = $row['trackCount'];
					array_push($format_result[$row['artistName']]->albums, $album);
				}
			}
		}
		//actually works both ways
		return $format_result;
	}
}
/* End of file Artist_lib.php */
/* Location: ./application/libraries/Artist_lib.php */