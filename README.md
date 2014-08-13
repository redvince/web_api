web_api
=======

Server-side Web API - CodeIgniter.

Models written for the assignment:
	/application/models/artist_model.php
	/application/models/album_model.php

Views  written for the assignment:
	/application/views/api_view.php
	/application/views/artist_view.php
	/application/views/album_view.php

Controllers written for the assignment:
	/application/controllers/api_instructions.php
	/application/controllers/artist.php
	/application/controllers/album.php

Libraries written for the assignment:
	/application/libraries/Artist_lib.php
	/application/libraries/Album_lib.php

Hypertext Access File:
	discogWebService/.htaccess

Database SQL file:
	discogWebService/discography.sql

default_controller is set to api_instructions which will load Discography Web API usage Instructions.
So just visit "http://localhost/discogWebService/" (Case Sensitive) for controller, endpoint and database documentation.

I followed CodeIgniter’s PHP style guide for the assignment but reverted to camel case in parts of my 
custom library files as I had previously written my Mobile Web App in that style. Only two URI's are necessary 
to "hook up" with my Mobile Web App, the rest (lol), are for demonstration purposes.
