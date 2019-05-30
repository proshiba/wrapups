<?php
$defaultdata = array( "showpassword"=>"no", "bgcolor"=>"#ffffff");
$defaultcookie = "ClVLIh4ASCsCBE8lAxMacFMZV2hdVVotEhhUJQNVAmhSEV4sFxFeaAw%3D";
function xor_encrypt($in) {
   $key = '<censored>';
   $text = $in;
   $outText = '';
   // Iterate through each character
   for($i=0;$i<strlen($text);$i++) {
   $outText .= $text[$i] ^ $key[$i % strlen($key)];
   }
   return $outText;
}
function loadData($def) {
   global $_COOKIE;
   $mydata = $def;
   if(array_key_exists("data", $_COOKIE)) {
       $tempdata = json_decode(xor_encrypt(base64_decode($_COOKIE["data"])), true);
       if(is_array($tempdata) && array_key_exists("showpassword", $tempdata) && array_key_exists("bgcolor", $tempdata)) {
           if (preg_match('/^#(?:[a-f\d]{6})$/i', $tempdata['bgcolor'])) {
               $mydata['showpassword'] = $tempdata['showpassword'];
               $mydata['bgcolor'] = $tempdata['bgcolor'];
           }
       }
   }
   return $mydata;
}
function saveData($d) {
   setcookie("data", base64_encode(xor_encrypt(json_encode($d))));
}
?>
