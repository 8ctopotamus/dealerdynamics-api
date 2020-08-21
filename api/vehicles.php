<?php
// localhost
$dbHost = 'localhost';
$dbUsername = 'root';
$dbPassword = '';
$dbName = 'DDAPI';

// production
// $dbHost = 'localhost';
// $dbUsername = 'root';
// $dbPassword = '???';
// $dbName = 'DDAPI';

$conn = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

if ($conn->connect_error) {
  http_response_code (500);
  die("Unable to connect database: " . $conn->connect_error);
} 

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $inputJSON = file_get_contents('php://input');
  $json = json_decode($inputJSON, TRUE, 512,  JSON_OBJECT_AS_ARRAY);
  $user = $json['user'];
  $vehicle = $json['vehicle'];
  $uuid = $vehicle['uuid'];
  $rooftop_id = $user['rooftop_uuid'];

  if (empty($uuid) || empty($rooftop_id)) {  
    http_response_code (500);
    die('You must provide a Vehicle uuid and a User rooftop_uuid.');
  }

  $validate = function($searchKey) use ($json, $conn) {
    foreach($json as $keys) {
      foreach ($keys as $key => $value) {
        if ($key === $searchKey) {
          return gettype($value) === 'integer'
            ? $value 
            : '"' . $conn->real_escape_string($value) . '"';
        }
      }
    }
    return "null";
  };


  $insertQuery = 'INSERT INTO DDAPI_CARBLY (
    CARBLY_UUID,
    CARBLY_ROOFTOP_UUID,
    CARBLY_VIN,
    CARBLY_MILEAGE,
    CARBLY_YEAR,
    CARBLY_MAKE,
    CARBLY_MODEL,
    CARBLY_SERIES,
    CARBLY_STYLE
  ) VALUES (
    "' . $conn->real_escape_string( $uuid ) . '",
    "'. $conn->real_escape_string($rooftop_id) .'",
    '. $validate('vin') .',
    '. $validate('mileage') .',
    '. $validate('year') .',
    '. $validate('make') .',
    '. $validate('model') .',
    '. $validate('series') .',
    '. $validate('style') .'
  )';

  $result = $conn->query($insertQuery);
  
  if ($result) {
    echo json_encode( [ 'partner_vehicle' => [ 'id' => $conn->insert_id] ] );
    http_response_code (200);
  } else {
    http_response_code (500);
    die();
  }
}
