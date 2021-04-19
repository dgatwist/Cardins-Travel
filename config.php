<?php

//$servername = "localhost";
//$username = "root";
//$password = "";
//$dbname="travel_db";

//$servername = "remotemysql.com";
//$username = "cLb5xOFkmA";
//$password = "B0QlCVvG8s";
//$dbname="cLb5xOFkmA";

$servername = "us-cdbr-east-03.cleardb.com";
$username = "bc9441adb25ef1";
$password = "2de75689";
$dbname="heroku_6e2cbe413ab67e6";


$conn = mysqli_connect($servername, $username, $password,$dbname);

if (!$conn) 
{
    die("Connection failed: " . mysqli_connect_error());
}

?>
