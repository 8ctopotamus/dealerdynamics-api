<?php
// localhost
$dbHost = 'localhost';
$dbUsername = 'root';
$dbPassword = '';
$dbName = 'dealer_dynamics';

// production
// $dbHost = 'localhost';
// $dbUsername = 'root';
// $dbPassword = 'xpsDa9ghh!@%NgZT';
// $dbName = 'dealer_dynamics';

$conn = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

if ($conn->connect_error) {
  http_response_code (500);
  die("Unable to connect database: " . $conn->connect_error);
} 

$sanitizeValues = function ($str, $val) use ($conn) {
  return $str .= gettype($val) === 'integer'
    ? $val . ', '
    : '"' . $conn->real_escape_string($val) . '", ';
};

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $inputJSON = file_get_contents('php://input');
  $vehicle = json_decode($inputJSON, TRUE);

  $uuid = $vehicle['uuid'];
  $carbly_rooftop_uuid = $vehicle['carbly_rooftop_uuid'];

  if (empty($uuid) || empty($carbly_rooftop_uuid)) {  
    http_response_code (500);
    die('You must provide a uuid and a carbly_rooftop_uuid.');
  }

  $cleanData = array_reduce($vehicle, $sanitizeValues, '');

  $insertQuery = 'INSERT INTO vehicles (
    uuid,
    carbly_rooftop_uuid,
    vin,
    mileage,
    year,
    make,
    model,
    series,
    style
  ) VALUES ('. rtrim($cleanData, ', ') .')';

  $result = $conn->query($insertQuery);
  
  if ($result) {
    echo json_encode( [ 'partner_vehicle' => [ 'id' => $conn->insert_id] ] );
    http_response_code (200);
  } else {
    http_response_code (500);
    die();
  }
}