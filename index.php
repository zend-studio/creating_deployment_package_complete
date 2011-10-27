<?php
include_once 'services/EmployeeService.php';
$x = new EmployeeService();
$arr = $x->getEmployees();

$output = "<table border=1 align=center><th>First Name</th><th>Last Name</th><th>Image</th>";
foreach ($arr as $value) {
	$output .= "<tr>";
	$firstname = $value->firstname;
	$lastname = $value->lastname;
	$image = $value->photofile;
	$output .= "<td>$firstname</td><td>$lastname</td><td align=center><img height='40%' width='40%' src='photos/$image'/></td>";
	$output .= "</tr>";
}
$output .= "</table>";
echo $output;

?>
