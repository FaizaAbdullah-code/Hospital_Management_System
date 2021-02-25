<?php 
include'configure.php';

$id=$_GET['rn'];
$query="DELETE from `contact` where id='$id'";

$data=mysqli_query($con,$query);

if($data){
   
    echo '<script type="text/javascript"> alert("Contact Has Been Deleted") </script>';
    header('Location: http://localhost/HospitalSystem/viewcontact.php');
}
else{
    echo "<script> alert('Sorry..!! Something Went Wrong') </script>";
}
?>