<?php

// localhost
$dbHost = 'localhost';
$dbUsername = 'root';
$dbPassword = '';
$dbName = 'DDAPI';

// production
// $dbHost = 'localhost:3307';
// $dbUsername = '???';
// $dbPassword = '???';
// $dbName = 'DDAPI';

$conn = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

if ($conn->connect_error) {
  http_response_code (500);
  die("Unable to connect database: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
  $code = $_GET['code'];
  $state = $_GET['state'];
  if (empty($code) || empty($state)) {
    die('Missing code and/or state parameters');
  }
  $sql = 'INSERT INTO DDAPI_CARFAX_AUTH_CALLBACK (state, code) VALUES ("'.$state.'", "'.$code.'");';
  $result = $conn->query($sql);
  if ($result) {
    echo 'Success!';
    http_response_code (200);
  } else {
    echo 'Failed!';
    http_response_code (500);
  }
  $conn->close();
  die();
}