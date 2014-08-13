<!--
/* Codeigniter View: api_view.php
*  Author: Vincent Redmond
*  Assignment: WE3.0 Server-side Web Development, Digital Skills Academy
*  Student ID: D13126159
*  Date : 2014/05/09
*/
-->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Discography Web API</title>

	<style type="text/css">

	::selection{ background-color: #E13300; color: white; }
	::moz-selection{ background-color: #E13300; color: white; }
	::webkit-selection{ background-color: #E13300; color: white; }

	body {
		background-color: #fff;
		margin: 40px;
		font: 13px/20px normal Helvetica, Arial, sans-serif;
		color: #4F5155;
	}

	a {
		color: #003399;
		background-color: transparent;
		font-weight: normal;
		text-decoration: none
	}

	h1 {
		color: #444;
		background-color: transparent;
		border-bottom: 1px solid #D0D0D0;
		font-size: 19px;
		font-weight: normal;
		margin: 0 0 14px 0;
		padding: 14px 15px 10px 15px;
	}

	code {
		font-family: Consolas, Monaco, Courier New, Courier, monospace;
		font-size: 12px;
		background-color: #f9f9f9;
		border: 1px solid #D0D0D0;
		color: #002166;
		display: block;
		margin: 14px 0 14px 0;
		padding: 12px 10px 12px 10px;
	}

	#body{
		margin: 0 15px 0 15px;
	}
	
	p.footer{
		text-align: right;
		font-size: 11px;
		border-top: 1px solid #D0D0D0;
		line-height: 32px;
		padding: 0 10px 0 10px;
		margin: 20px 0 0 0;
	}
	
	#container{
		margin: 10px;
		border: 1px solid #D0D0D0;
		-webkit-box-shadow: 0 0 8px #D0D0D0;
	}
	</style>
</head>
<body>

<div id="container">
	<h1>Welcome to Discography Web API Instructions.</h1>

	<div id="body">
		<p>This Web API outputs data from the "discography" Database as JSON, the expected data format consumed by the Mobile Web App "Sub Pop Discog".</p>

		<p>Below is a (clickable) list of examples for the different API endpoints.</p></br>

		<h3>Artist Controller</h3>
		<p>All Artist endpoints will function with or without an Artist's name passed as a parameter.</br> 
			If no parameter is passed, it will simply return records, in JSON format, 
			for all Artists stored in the "discography" Database, relative to that controller's function.
		</p>

		<code><a href="artist/get_artist_info">discogWebService/artist/get_artist_info</a></code>
		<code><a href="artist/get_artist_info/Band_of_Horses">discogWebService/artist/get_artist_info/Band_of_Horses</a></code>
		<code><a href="artist/get_artist_discography">discogWebService/artist/get_artist_discography</a></code>
		<code><a href="artist/get_artist_discography/Nirvana">discogWebService/artist/get_artist_discography/Nirvana</a></code>
		<code><a href="artist/get_artist_info_detailed">discogWebService/artist/get_artist_info_detailed</a></code>
		<code><a href="artist/get_artist_info_detailed/The Shins">discogWebService/artist/get_artist_info_detailed/The Shins</a></code>
		</br>

		<h3>Album Controller</h3>
		<p>All Album endpoints will function with or without an Album name passed as a parameter.</br> 
			If no parameter is passed, it will simply return records, in JSON format, 
			for all Albums stored in the "discography" Database, relative to that controller's function.
		</p>

		<code><a href="album/get_album_info">discogWebService/album/get_album_info</a></code>
		<code><a href="album/get_album_info/Nevermind">discogWebService/album/get_album_info/Nevermind</a></code>
		<code><a href="album/get_tracklist">discogWebService/album/get_tracklist</a></code>
		<code><a href="album/get_tracklist/Give UP">discogWebService/album/get_tracklist/Give up</a></code>
		<code><a href="album/get_album_info_detailed">discogWebService/album/get_album_info_detailed</a></code>
		<code><a href="album/get_album_info_detailed/Chutes_Too_Narrow">discogWebService/album/get_album_info_detailed/Chutes_Too_Narrow</a></code>
		</br>

		<h3>Artists and Albums in Database</h3>
		<code><b>Band of Horses :</b> Everything All the Time, Cease to Begin, Infinite Arms, Mirage Rock.</code>
		<code><b>Foals :</b> Antidotes, Total Life Forever, Holy Fire. </code>
		<code><b>Nirvana :</b> Bleach, Nevermind, In Utero.</code>
		<code><b>The Postal Service :</b> Give Up.</code>
		<code><b>The Shins :</b> Oh, Inverted World, Chutes Too Narrow, Wincing The Night Away, Port of Morrow. </code>
	</div>
</div>

</body>
</html>
<!--/* End of file api_view.php */
/* Location: ./application/views/api_view.php */-->