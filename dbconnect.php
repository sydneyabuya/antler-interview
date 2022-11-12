<?php

$dbserver="sql112.epizy.com";
$dbuser="epiz_32982649";
$password="pPjS3NBB29$q";
$dbname="epiz_32982649_sydney";

$link=mysqli_connect($dbserver,$dbuser,$password,$dbname);

if ($link) {
  echo "Connected successfully";
}
else{
	echo "Connection failed" .mysqli_connect_error();
}