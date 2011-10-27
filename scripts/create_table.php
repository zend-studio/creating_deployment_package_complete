<?php

require_once ("deployment_params.inc");

//replace values in sqlFile File
$filestr = file_get_contents(dirname ( __FILE__ ) . "/deployment_demo_table.sql");
$filestr = str_replace("TABLE_PLACEHOLDER", $dbTable, $filestr);
file_put_contents(dirname ( __FILE__ ) . "/deployment_demo_table.sql", $filestr);

$link = mysql_connect ( $dbHost, $dbUsername, $dbPassword );
mysql_select_db ( $dbName, $link );

$queries = explode ( ";\n", file_get_contents ( dirname ( __FILE__ ) . "/deployment_demo_table.sql" ) );

foreach ( $queries as $id => $query ) {
	
	if ($query != '') {
		
		$result = mysql_query ( $query, $link );
		if (! $result) {
			echo ( "Invalid query [$query]: " . mysql_error () );
			die (1 );
		}
		;
	
	}
}

mysql_close ( $link );

echo "Created sample Table $dbTable at $dbHost " . PHP_EOL;
