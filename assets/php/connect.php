<?php 

/**
 * Connect to database
 */
$dbhost = 'localhost';
$dbname = 'netflix';
$dbuser = 'root';
$dbpwd = '';

try{
    $db = new PDO('mysql:host='.$dbhost.';dbname='.$dbname.';charset=utf8', $dbuser, $dbpwd);
}
catch(PDOException $e){
    die("Erreur : ".$e->getMessage());
}

?>