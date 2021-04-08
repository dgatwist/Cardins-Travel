<?php
error_reporting(0);

function convertCurrency($amount, $from, $to)
{
  $conv_id = "{$from}_{$to}";
  $string = file_get_contents("https://free.currconv.com/api/v7/convert?q=$conv_id&compact=ultra&apiKey=439a91a019ab3112b6c3");
  $json_a = json_decode($string, true);

 if(!empty($string))
 {
 	$result= $amount * round($json_a[$conv_id], 4);
 }
 else
 {
 	$result= $amount * 0.852;
 }

  return $result;
}

?>