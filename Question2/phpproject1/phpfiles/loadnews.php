<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
header('Access-Control-Allow-Origin: *');
header('constant-type: application/json');
$con = mysql_connect("127.0.0.1", "root", "");
//echo "harshiltst2222"."<br/>"; 
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

$db_selected = mysql_select_db("test",$con);

$return_arrar = array();

$fetchdata = mysql_query("SELECT news_id nid,news_content ncontent,news_date ndate FROM `news` WHERE 1"); 
echo $fetchdata;
while ($row = mysql_fetch_array($fetchdata, MYSQL_ASSOC)) {
    $row_array['news_id'] = $row['nid'];
    $row_array['news_content'] = $row['ncontent'];
    $row_array['news_date'] = $row['ndate'];
    
    array_push($return_arrar,$row_array);
}
echo json_encode($return_arrar); 
mysql_close($con);
?>