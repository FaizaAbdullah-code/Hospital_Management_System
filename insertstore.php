<?php

 include'configure.php';



$sql = "INSERT INTO addstore (title, catagory, location)
VALUES ('faiza', 'Abdullah', 'karachi')";

if (mysqli_query($conn, $sql)) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>