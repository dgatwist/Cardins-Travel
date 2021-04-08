<?php

//$servername = "localhost";
//$username = "root";
//$password = "";
//$dbname="travel_db";

$servername = "remotemysql.com";
$username = "cLb5xOFkmA";
$password = "B0QlCVvG8s";
$dbname="cLb5xOFkmA";


$conn = mysqli_connect($servername, $username, $password,$dbname);

if (!$conn) 
{
    die("Connection failed: " . mysqli_connect_error());
}

?>
