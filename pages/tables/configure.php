
<?php 
$con = mysqli_connect("localhost", "root", "");
//Selecting Database
$db = mysqli_select_db($con, "userpass");



if (!$con) {
 die("Connection failed: " . mysqli_connect_error());
}

?>