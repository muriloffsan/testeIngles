<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit;
}
?>

<h2>Bem-vindo à Home!</h2>
<p>Você está logado com sucesso.</p>
<a href="logout.php">Sair</a>
