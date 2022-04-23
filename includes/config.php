<?php
ob_start();
session_start();

date_default_timezone_set("Asia/Kolkata");

try {
    $con = new PDO("mysql:dbname=clipshare;host=127.0.0.1:3308", "root", "");
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
}
catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>