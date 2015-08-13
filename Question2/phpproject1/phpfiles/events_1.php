<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
header('Access-Control-Allow-Origin: *');
header('constant-type: application/json');
$con = mysql_connect("127.0.0.1", "root", "");
 
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

$db_selected = mysql_select_db("test",$con);

$return_arr = array();
 
$fetch = mysql_query("SELECT news_id nid,news_content nc,news_date ndate FROM `news` WHERE 1"); 
while ($row = mysql_fetch_array($fetch, MYSQL_ASSOC)) {
    $row_array['news_id'] = $row['nid'];
    //$row_array['news_content'] = $row['nc'];
    $row_array['news_date'] = $row['ndate'];

    array_push($return_arr,$row_array);
}
echo json_encode($return_arr); 
mysql_close($con);
?>