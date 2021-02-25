<?php 
include'configure.php';

$id=$_GET['rn'];
$query="DELETE from `members` where id='$id'";

$data=mysqli_query($con,$query);

if($data){
   
    echo '<script type="text/javascript"> alert("Your Post Has Been Deleted") </script>';
    header('Location: http://localhost/HospitalSystem/view_cat.php');
}
else{
    echo "<script> alert('Sorry..!! Something Went Wrong') </script>";
}
?>