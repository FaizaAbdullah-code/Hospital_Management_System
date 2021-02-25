<?php

echo $id = $_GET['id'];

//exit();

$con = mysqli_connect('localhost','soluti23_feminbook','feminbook@123','soluti23_feminbook');
$query = "UPDATE posts SET isInactive = 1 WHERE id=$id"; 
 


        $resulte = mysqli_query($con,$query);

        if($resulte){
          echo "<script> alert('Your Post Has Been Deleted ') </script>";
          header('Location: http://admin.feminbook.com/view_product.php');
        }
        else{
          echo "<script> alert('Sorry..!! Something Went Wrong') </script>";
        }
