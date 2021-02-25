<?php 
$con = mysqli_connect("localhost", "root", "");
//Selecting Database
$db = mysqli_select_db($con, "userpass");



if (!$con) {
 die("Connection failed: " . mysqli_connect_error());
}

?>


<?php
$query="select * from addstore"; 
$result=mysqli_query($con, $query); 
?>




<div>
	<table border="1px" style="width:600px; line-height:40px;  margin-left:400px; "> 
	<tr> 
		<th colspan="4"><h2>Data Record</h2></th> 
		</tr> 
			  <th> Title </th> 
			  <th> Catagory </th> 
			  <th> Location </th> 
			  <th> Image </th> 
			  
		</tr> 
		
		<?php while($rows=mysqli_fetch_assoc($result)) 
		{ 
		?> 
		<tr> <td><?php echo $rows['title']; ?></td> 
		<td><?php echo $rows['catagory']; ?></td> 
		<td><?php echo $rows['location']; ?></td> 
		<td><?php echo $rows['image']; ?></td> 
		</tr> 
	<?php 
               } 
          ?> 
</div>





