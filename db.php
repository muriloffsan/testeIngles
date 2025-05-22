<?php
$host = 'localhost';
$db = 'sistema_login';
$user = 'root';
$pass = ''; 

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_SILENT); 
} catch (PDOException $e) {
    die("Erro na conexão com o banco.");
}
?>

