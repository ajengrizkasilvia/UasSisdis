<?php
    $server = "localhost";
    $user = "root";
    $pass = "";
    $dbname = "uassisdis";

    $connect = mysqli_connect($server, $user, $pass, $dbname);
    if ($connect) {
    
    } else {
    die("Connection Failed: " .mysqli_connect_error());
    }
?>