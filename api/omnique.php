<?php
// production
$dbHost = 'localhost:3307';
$dbUsername = 'ics';
$dbPassword = 'U]p5aSA!11';
$dbName = 'DDAPI';

// localhost
// $dbHost = 'localhost';
// $dbUsername = 'root';
// $dbPassword = '';
// $dbName = 'ddapi';

$conn = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

if ($conn->connect_error) {
  http_response_code (500);
  die("Unable to connect database: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $inputJSON = file_get_contents('php://input');
  $json = json_decode($inputJSON, TRUE, 512,  JSON_OBJECT_AS_ARRAY);

  $insertQuery = 'INSERT INTO DDAPI_OMNIQUE_TCKT (
    OM_TCKT_NO,
    OM_TCKT_STS,
    OM_TCKT_TYPE,
    OM_TCKT_VC,
    OM_TCKT_VP,
    OM_TCKT_COID,
    OM_TCKT_SHNO
  ) VALUES (
    '. $json["TicketNumber"] .',
    "'. $conn->real_escape_string($json["TicketStatusChangedType"]) .'",
    "'. $conn->real_escape_string($json["Type"]) .'",
    "'. $conn->real_escape_string($json["VendorCode"]) .'",
    "'. $conn->real_escape_string($json["VendorPassword"]) .'",
    '. $json["CompanyId"] .',
    '. $json["ShopNumber"] .'
  )';

  $result = $conn->query($insertQuery);

  if ($result) {
    echo 'Success!';
    http_response_code (200);
  } else {
    echo 'Failed!';
    http_response_code (500);
    die();
  }
}
