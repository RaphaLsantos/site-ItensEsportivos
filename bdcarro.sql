-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Jun-2023 às 22:36
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdcarro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_depoimento`
--

CREATE TABLE `tab_depoimento` (
  `id_depoimento` int(11) NOT NULL,
  `tipo` varchar(70) NOT NULL,
  `depoimento` varchar(100) NOT NULL,
  `autor` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_depoimento`
--

INSERT INTO `tab_depoimento` (`id_depoimento`, `tipo`, `depoimento`, `autor`) VALUES
(1, 'Elogio', 'asdasdas', 'Luiciano'),
(2, 'Elogio', 'Carro zuado', 'jão'),
(3, 'Elogio', 'Carros muito velozes', 'Raphael'),
(7, 'Reclamação', 'okpo', 'ppokp');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_email`
--

CREATE TABLE `tab_email` (
  `idEmail` int(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `nome` varchar(70) NOT NULL,
  `assunto` varchar(50) NOT NULL,
  `mensagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_email`
--

INSERT INTO `tab_email` (`idEmail`, `email`, `nome`, `assunto`, `mensagem`) VALUES
(1, 'Aqui', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_galeria`
--

CREATE TABLE `tab_galeria` (
  `idGaleria` int(11) NOT NULL,
  `nomeCarro` varchar(70) NOT NULL,
  `marcaCarro` varchar(80) NOT NULL,
  `valorCarro` varchar(30) NOT NULL,
  `imgCarro` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_user`
--

CREATE TABLE `tab_user` (
  `idUser` int(11) NOT NULL,
  `nomeUser` varchar(70) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `rg` varchar(12) NOT NULL,
  `email` varchar(70) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_user`
--

INSERT INTO `tab_user` (`idUser`, `nomeUser`, `cpf`, `telefone`, `rg`, `email`, `senha`) VALUES
(9, 'raphael', '212312312', '11 98439128', '21354235', 'rapha@gamil.vcom', '123'),
(10, 'raphael', '1', '1111111', '1', '3213@', '2'),
(11, 'dfsggdsg', 'bggj', 'gjg', 'gjgj', 'gjg', 'gjgj'),
(12, 'asdas', 'safaf', '119858585', 'fsaadfas', 'lucxas,deejjf@', '487979797n'),
(13, 'Adrian Lucas', '54545698688', '1198989898', '543532554547', 'lucas@gamil.com', '9548567ds4g');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tab_depoimento`
--
ALTER TABLE `tab_depoimento`
  ADD PRIMARY KEY (`id_depoimento`);

--
-- Índices para tabela `tab_email`
--
ALTER TABLE `tab_email`
  ADD PRIMARY KEY (`idEmail`);

--
-- Índices para tabela `tab_galeria`
--
ALTER TABLE `tab_galeria`
  ADD PRIMARY KEY (`idGaleria`);

--
-- Índices para tabela `tab_user`
--
ALTER TABLE `tab_user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tab_depoimento`
--
ALTER TABLE `tab_depoimento`
  MODIFY `id_depoimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tab_email`
--
ALTER TABLE `tab_email`
  MODIFY `idEmail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tab_galeria`
--
ALTER TABLE `tab_galeria`
  MODIFY `idGaleria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tab_user`
--
ALTER TABLE `tab_user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
