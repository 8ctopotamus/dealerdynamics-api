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

include 'secrets.php';

$valid_passwords = $dsSecrets;
$valid_users = array_keys($valid_passwords);

$user = $_SERVER['PHP_AUTH_USER'];
$pass = $_SERVER['PHP_AUTH_PW'];

var_dump($user);

$validated = (in_array($user, $valid_users)) && ($pass == $valid_passwords[$user]);

if (!$validated) {
  header('WWW-Authenticate: Basic realm="My Realm"');
  // header('HTTP/1.0 401 Unauthorized');
  http_response_code(401);
  die ("Not authorized");
}

$conn = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

if ($conn->connect_error) {
  http_response_code (500);
  die("Unable to connect database: " . $conn->connect_error);
}

function isEmptyObj( $obj ) {
  return count( (array) $obj ) === 0;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $postData = file_get_contents('php://input');
  $xml = simplexml_load_string($postData);

  $cols = '';
  $vals = '';
  $trade_fields_tracker = [];

  // generate column definitions based on XML
  function buildQuery($array, $parentKey = '') { 
    global $cols, $vals, $trade_fields_tracker;
    foreach ($array as $key => $value) {
      if (!empty($value->children())) {
        buildQuery($value, $key);
      } else {
        $prefix = $parentKey !== '' ? $parentKey . '_' : '';
        $col = $prefix;
        // handle multiple trades
        if (strpos($col, 'Trade') !== false) {
          $tradeField = $parentKey . '_' . $key;
          $trade_fields_tracker[] = $parentKey . '_' . $key;
          if (in_array($tradeField, $trade_fields_tracker)) {
            $fieldCounts = array_count_values($trade_fields_tracker);
            $tradein_count = $fieldCounts[$tradeField];
            $col .= $tradein_count . '_';
          }
        }
        $col .= $key . ', ';
        $cols .= $col;
        $val = empty($value) ? 'null' : '"' . $value . '"';
        $vals .= $val . ', ';
      }
    }
  }
  buildQuery($xml);

  $cols = rtrim($cols, ', ');
  $vals = rtrim($vals, ', ');

  $sql = 'INSERT INTO DDAPI_DS_DEAL (' . $cols . ') VALUES (' . $vals . ');';
  $result = $conn->query($sql);

  if ($result) {
    echo 'Success!';
    http_response_code (200);
  } else {
    echo 'Failed!';
    http_response_code (500);
    die();
  }
}
