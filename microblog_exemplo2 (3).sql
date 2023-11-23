-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Nov-2023 às 21:28
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `microblog_exemplo2`
--
CREATE DATABASE IF NOT EXISTS `microblog_exemplo2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `microblog_exemplo2`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `texto` text NOT NULL,
  `resumo` text NOT NULL,
  `imagem` varchar(45) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `texto`, `resumo`, `imagem`, `usuario_id`, `data`) VALUES
(1, 'Palmeiras é o maior', 'Palmeiras ', 'palmeiras ', 'felicidade.jpg', 1, '2023-11-23 17:19:40'),
(2, 'Dudu volta de lesão e ganha a bola de ouro', 'Dudu supera Halland e Mbappe na bola de ouro e é o primeiro jogador brasileiro que joga no Brasil a ser vencedor da maior conquista individual, A BOLA DE OURO', 'Dudu ganha bola de ouro', 'ledtv.jpg', 1, '2023-11-23 17:22:54'),
(3, 'Com apenas 17 anos, Endrick é considerado o maior jogador da história do futebol ', 'Endrick com apenas 17 anos hoje alcançou o maoir feito dentro do futebol brasileiro. O jogador do Palmeiras conquistou a decima bola de ouro em sua carreira, superando nada mais nada menos que Lionel Messi. ', 'Endrick ganha sua decima bola de ouro ', 'luminarias.jpg', 6, '2023-11-23 17:27:21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo` enum('admin','editor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `tipo`) VALUES
(1, 'aaaa', 'arthuraugusto@gmail.com', '$2y$10$fvDnZ0AVAdUzOPS/C/zmW.VDWnfbLIyC13YdcxDxpaFnYeE4D//wu', 'admin'),
(2, 'Raphael Veiga', 'raphaelveiga@gmail.com', '$2y$10$Ny1L4HVM3IWvJpm3GvLypekqWEnqW9KAMiWiRLyJ4FNJSse8FI366', 'editor'),
(3, 'bernado silva ', 'berrnadosilva@gmail.com', '$2y$10$QQfIEJrjOiqRFjYWjfYskOvvZ/gwtTosZ/pF3fUMLqF5UfRPPf/G2', 'editor'),
(4, 'Endrick', 'endrickpalmeiras@gmail.com', '$2y$10$H8jdfGufMUlUMh4f5NySKupHUr1eZTRmyTfawOU7fAZ4Mp.NmDUtS', 'admin'),
(5, 'dudu', 'dudupalmeiras@gmail.com', '$2y$10$LKYjmNwwajZP4M86Ffx0wevF58oZXhLb9SvHqUSN5YhxU0IH9Y9Tu', 'admin'),
(6, 'Heitor', 'heitorteixeira@gmail.com', '$2y$10$6OLNoIA5uwVhMHgJNiH.Ve8P8Kc9qCIdp.hHt0Ivc4PuvDL4UFnJO', 'editor');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_noticias_usuarios` (`usuario_id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `fk_noticias_usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
