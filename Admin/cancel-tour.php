<?php


    include("config.php");

    $enquiry_id = $_GET['enquiry_id'];


   // $result = mysqli_query($conn,"update tour_enquiry set status= 'cancel' where enquiry_id= '$enquiry_id';");

	$result = mysqli_query($conn,"delete from tour_enquiry where enquiry_id= '$enquiry_id';");
	
    header("Location:tour-show.php");

?>

