<?php

$username = 'root';
$password = '';
$dsn = 'mysql:host=localhost/calender_php_frontend; dbname=bookingcalender';

try {

  $conn = new PDO($dsn, $name, $email, $date, $timeslot);
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch (PDOException $e) {

  echo "Fail to connect to the database ".$e->getMessage();

}

?>
