<?php

defined( 'ABSPATH' ) or die( 'No script kiddies please!' );

// localhost
$dbHost = 'localhost';
$dbUsername = 'root';
$dbPassword = '';
$dbName = 'dealer_dynamics';

// production
// $dbHost = 'localhost';
// $dbUsername = 'snowaywpfmt';
// $dbPassword = 'fd7lxPWWuZheTl9IbPeJ';
// $dbName = 'wp_snowaywpfmt';

$conn = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);
if ($conn->connect_error) {
  http_response_code (500);
  die("Unable to connect database: " . $conn->connect_error);
} 

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $inputJSON = file_get_contents('php://input');
  $vehicle = json_decode($inputJSON, TRUE); //convert JSON into array
  $uuid = $vehicle['uuid'];

  if (empty($uuid)) {  
    http_response_code (500);
    die('You must provide a uuid.');
  }

  $insertQuery = 'INSERT INTO vehicles (
    uuid,
    vin,
    mileage,
    year,
    make,
    model,
    series,
    style
  ) VALUES (
    "' . $uuid . '",
    "' . $vehicle['vin'] . '",
    ' . $vehicle['mileage'] . ',
    ' . $vehicle['year'] . ',
    "' . $vehicle['make'] . '",
    "' . $vehicle['model'] . '",
    "' . $vehicle['series'] . '",
    "' . $vehicle['style'] . '"
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