<?php
require 'db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = trim($_POST['username']);
    $password = $_POST['password']; 

    if (!empty($username) && !empty($password)) {
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

        $stmt = $pdo->prepare("INSERT INTO users (username, password) VALUES (:username, :password)");

        try {
            $stmt->execute([
                ':username' => $username,
                ':password' => $hashedPassword
            ]);
            echo "Usuário cadastrado com sucesso!";
        } catch (Exception $e) {
            echo "Erro ao cadastrar usuário: " . $e->getMessage();
        }
    } else {
        echo "Preencha todos os campos.";
    }
}
?>

<form method="POST">
    <input name="username" placeholder="Usuário" required><br>
    <input name="password" type="password" placeholder="Senha" required><br> 
    <button type="submit">Cadastrar</button>
</form>
<br>
<a href="login.php">
    <button type="button">Voltar ao Login</button>
</a>
