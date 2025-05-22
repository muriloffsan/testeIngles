-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Maio-2025 às 15:14
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_login`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `preco`) VALUES
(1, 'oculos de sol', 'um ótimo oculos para viajar', '250.00'),
(2, 'Tenis de corrida', 'Feito para corredores natos', '1400.00'),
(3, 'Celular J7 PRIME', 'Aparelho Multi-Função de primeira linha', '2500.00'),
(4, 'Mouse', 'Mouse com alto desempenho', '1200.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(5, 'matheus', 'muriloff.santan@gmail.com', '$2y$10$flWuJq2ejTLAqfR6iXSgRe.PMK7XzSs32Ic2OSawSgSVmZYtm9GhG'),
(6, 'Murilo', 'muriloff.santana@gmail.com', '$2y$10$GX4rTBN2WVDjrWG17qDz3O7vRwAS7n8N5zV8GGlU8hSLjGXC/fK.q'),
(7, 'fernanda', 'fernanda.santana@gmail.com', '$2y$10$FC1ajBjdjvTngWu7LZQvXubn42mjSLn.y30894mNUrBF9t5BYzS7G'),
(8, 'bruna', 'bruna.una@gmail.com', '$2y$10$iTOZFFISQIrZnrqZTMl4OObl9yqo14IUX4g0Iuf9vypjIDCoHPl.G'),
(9, 'lucas', 'lucas.santana@gmail.com', '$2y$10$.bm/ys62bNMbqDmHftfQOufiEAk3RpyanCS3ZklOM8yOSQeA83Loq'),
(10, 'matheus', 'murilof.santana@gmail.com', '$2y$10$aoQdZjJPNhCLoSGf6sM4aOOE/5qT57TAWHxJP/pX4/g.JHQjA0Btq');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
