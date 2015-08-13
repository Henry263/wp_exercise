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
 
$fetch = mysql_query("SELECT event_id eid,event_content econtent,event_place eplace,event_from_date efrom,event_to_date eto FROM `events` WHERE 1"); 
while ($row = mysql_fetch_array($fetch, MYSQL_ASSOC)) {
    $row_array['event_id'] = $row['eid'];
    $row_array['event_content'] = $row['econtent'];
    $row_array['event_place'] = $row['eplace'];
    $row_array['event_from_date'] = $row['efrom'];
    $row_array['event_to_date'] = $row['eto'];
    
    array_push($return_arr,$row_array);
}
echo json_encode($return_arr); 
mysql_close($con);
?>