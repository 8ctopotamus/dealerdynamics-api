<?php
// production
// $dbHost = 'localhost:3307';
// $dbUsername = 'ics';
// $dbPassword = 'U]p5aSA!11';
// $dbName = 'DDAPI';

// localhost
// $dbHost = 'localhost';
// $dbUsername = 'root';
// $dbPassword = '';
// $dbName = 'ddapi';

// $conn = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

// if ($conn->connect_error) {
//   http_response_code (500);
//   die("Unable to connect database: " . $conn->connect_error);
// }

function isEmptyObj( $obj ) {
  return count( (array) $obj ) === 0;
}

$columns = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $postData = file_get_contents('php://input');
  $xml = simplexml_load_string($postData);


  // generate column definitions based on XML
  function show($array, $parentKey = '') { 
    foreach ($array as $key => $value) {
      if (!empty($value->children())) {
        show($value, $key);
      } else {
        $prefix = $parentKey !== '' ? $parentKey . '_' : '';
        echo $prefix . $key . " VARCHAR(100) NULL, ";
      }
    }
  }
  show($xml);

  // function show($array, $parentKey = '') { 
  //   foreach ($array as $key => $value) {
  //     if (!empty($value->children())) {
  //       show($value, $key);
  //     } else {
  //       $prefix = $parentKey !== '' ? $parentKey . '_' : '';
  //       echo $prefix . $key . ' ' . $value. " VARCHAR(100) NULL, ";
  //     }
  //   }
  // }
  // show($xml);

  // $xml = json_decode(json_encode($xml));
  // foreach($xml as $key => $val) {
  //   // echo $key;
  //   // var_dump($val);    
  //   $colName = false;
  //   if (gettype($val) === 'string') {
  //     $columns .= $key . ' VARCHAR(100) NULL,';
  //   } else if ( !isEmptyObj($val) ) {
  //     foreach($val as $k => $v) {        
  //       $columns .= $key.'_'.$k . ' VARCHAR(100) NULL,';
  //       if ( gettype($v) !== 'string' && !isEmptyObj($v) ) {
  //         // var_dump($v);
  //         foreach($v as $subk => $subv) {
  //           $columns .= $key.'_'.$k.'_'.$subk;
  //         }
  //       }
  //       // var_dump('KEY');
  //       // var_dump($k);
  //       // $value = !isEmptyObj($v) ? $v : null;
  //       // var_dump( $value );

  //     }
  //   }

    
  // }

  // var_dump($columns);

  exit;
  // $inputJSON = file_get_contents('php://input');
  // $json = json_decode($inputJSON, TRUE, 512,  JSON_OBJECT_AS_ARRAY);

  // $insertQuery = 'INSERT INTO DDAPI_OMNIQUE_TCKT (
  //   OM_TCKT_NO,
  //   OM_TCKT_STS,
  //   OM_TCKT_TYPE,
  //   OM_TCKT_VC,
  //   OM_TCKT_VP,
  //   OM_TCKT_COID,
  //   OM_TCKT_SHNO
  // ) VALUES (
  //   '. $json["TicketNumber"] .',
  //   "'. $conn->real_escape_string($json["TicketStatusChangedType"]) .'",
  //   "'. $conn->real_escape_string($json["Type"]) .'",
  //   "'. $conn->real_escape_string($json["VendorCode"]) .'",
  //   "'. $conn->real_escape_string($json["VendorPassword"]) .'",
  //   '. $json["CompanyId"] .',
  //   '. $json["ShopNumber"] .'
  // )';

  // $result = $conn->query($insertQuery);

  // if ($result) {
  //   echo 'Success!';
  //   http_response_code (200);
  // } else {
  //   echo 'Failed!';
  //   http_response_code (500);
  //   die();
  // }
}
