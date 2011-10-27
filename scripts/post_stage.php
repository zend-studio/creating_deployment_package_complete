<?php
/*
 * Post stage Hook script is used to create 
 * a new configuration file named connection.ini based on user input Parameters
 */
require_once ("deployment_params.inc");

$ini_path=$appLocation . "/services/connection.ini";
$ini_file=fopen ($ini_path,"w");
fwrite($ini_file,"[details]\n");
fwrite($ini_file,"host = " . $dbHost . "\n");
fwrite($ini_file,"user = " . $dbUsername . "\n");
fwrite($ini_file,"pass = " . $dbPassword . "\n");
fwrite($ini_file,"db = " . $dbName . "\n");
fwrite($ini_file,"table = " . $dbTable . "\n");


