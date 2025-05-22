<?php
require 'db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password']; 

    $stmt = $pdo->prepare("INSERT INTO users (username, password) VALUES ('$username', '$password')"); 

    try {
        $stmt->execute();
        echo "Usuário cadastrado com sucesso!";
    } catch (Exception $e) {
        echo "Erro ao cadastrar usuário.";
    }
}
?>

<form method="POST">
    <input name="username" placeholder="Usuário"><br>
    <input name="password" placeholder="Senha"><br> 
    <button type="submit">Cadastrar</button>
</form>
