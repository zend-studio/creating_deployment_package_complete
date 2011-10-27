<?php
/*
 * This file is used for Converting User entered Params and some built in environmanet 
 * paramaters to Local php parameters, that can be used by all script files
 */

ini_set ( "display_errros", 1 );
ini_set ( "error_reporting", E_ALL );

set_include_path ( get_include_path () . PATH_SEPARATOR . dirname ( __FILE__ ) );

// get the env vars
$baseUrl = getenv ( "ZS_BASE_URL" );
if (! $baseUrl) {
	echo ("ZS_BASE_URL env var undefined");
	exit ( 1 );
}
$appLocation = getenv ( "ZS_APPLICATION_BASE_DIR" );
if (! $appLocation) {
	echo ("ZS_APPLICATION_BASE_DIR env var undefined");
	exit ( 1 );
}
$dbHost = getenv ( "ZS_DB_HOST" );
if (! $dbHost) {
	echo ("ZS_DB_HOST env var undefined");
	exit ( 1 );
}
$dbUsername = getenv ( "ZS_DB_USERNAME" );
if (! $dbUsername) {
	echo ("ZS_DB_USERNAME env var undefined");
	exit ( 1 );
}
$dbPassword = getenv ( "ZS_DB_PASSWORD" );
if (! $dbPassword) {
	echo ("ZS_DB_PASSWORD env var undefined");
	exit ( 1 );
}

$dbName = getenv ( "ZS_DB_NAME" );
if (! $dbName) {
	echo ("ZS_DB_NAME env var undefined");
	exit ( 1 );
}

$dbTable = getenv ( "ZS_DB_TABLE" );
if (! $dbName) {
	echo ("ZS_DB_TABLE env var undefined");
	exit ( 1 );
}
	
	
	