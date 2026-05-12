-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/05/2026 às 19:08
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ghost_gamer`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `biblioteca`
--

CREATE TABLE `biblioteca` (
  `id_biblioteca` int(11) NOT NULL,
  `id_jogo` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `DATA_DE_ADIÇÃO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `biblioteca_empresa`
--

CREATE TABLE `biblioteca_empresa` (
  `id_biblioteca_cnpj` int(11) NOT NULL,
  `id_jogo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `cli_nome` varchar(110) DEFAULT NULL,
  `email` varchar(110) DEFAULT NULL,
  `nickname` varchar(110) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `cli_nome`, `email`, `nickname`, `senha`) VALUES
(1, 'Rogério Gomes Ferreira', 'Rogersferreira@gmail.com', 'RogerGigaChad', 'banana12345'),
(2, 'Patrícia Borges Cardoso', 'pbclinda@gmail.com', 'PapaBorges', 'tenis12345'),
(3, 'Tonio Marcelo Rossi', 'rossitoni@gmail.com', 'Rossi', '22334455'),
(4, 'dvecvececec', 'cecececececec@gmail', 'sdadfwefwf', '22002200'),
(5, 'dvecvececec', 'cecececececec@gmail', 'sdadfwefwf', '23/08/2008'),
(6, 'dvecvececec', 'cecececececec@gmail', 'sdadfwefwf', '11112233'),
(7, 'dvecvececec', 'cecececececec@gmail', 'sdadfwefwf', '11112233'),
(8, 'dvecvececec', 'cecececececec@gmail', 'sdadfwefwf', '11112233'),
(9, 'dvecvececec', 'cecececececec@gmail', 'sdadfwefwf', '333333333'),
(10, 'juju', 'cecececececec@gmail', 'sdadfwefwf', '44444444');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cnpj`
--

CREATE TABLE `cnpj` (
  `id_cnpj` int(11) NOT NULL,
  `nome_empresa` varchar(110) DEFAULT NULL,
  `cnpj` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogo`
--

CREATE TABLE `jogo` (
  `id_jogo` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `empresa_email` varchar(110) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `jogo`
--

INSERT INTO `jogo` (`id_jogo`, `titulo`, `empresa_email`, `genero`) VALUES
(1, 'Catapombas', 'LucasberingelaInc@gmail.com', NULL),
(2, 'patutuinhas', 'LucasberingelaInc@gmail.com', ''),
(3, 'adaadsad', 'LucasberingelaInc@gmail.com', ''),
(4, 'gggggg', 'LucasberingelaInc@gmail.com', 'rpg'),
(5, 'Metelon777', 'LucasberingelaInc@gmail.com', 'esporte, luta'),
(6, 'Los Luchadores Pelados', 'LucasberingelaInc@gmail.com', 'acao, esporte, luta');

-- --------------------------------------------------------

--
-- Estrutura para tabela `suporte`
--

CREATE TABLE `suporte` (
  `ID_SUPORTE` int(11) NOT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `DATA_REQUERIMENTO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`id_biblioteca`),
  ADD KEY `id_jogo` (`id_jogo`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Índices de tabela `biblioteca_empresa`
--
ALTER TABLE `biblioteca_empresa`
  ADD PRIMARY KEY (`id_biblioteca_cnpj`),
  ADD KEY `id_jogo` (`id_jogo`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `cnpj`
--
ALTER TABLE `cnpj`
  ADD PRIMARY KEY (`id_cnpj`);

--
-- Índices de tabela `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`id_jogo`);

--
-- Índices de tabela `suporte`
--
ALTER TABLE `suporte`
  ADD PRIMARY KEY (`ID_SUPORTE`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `biblioteca_empresa`
--
ALTER TABLE `biblioteca_empresa`
  MODIFY `id_biblioteca_cnpj` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cnpj`
--
ALTER TABLE `cnpj`
  MODIFY `id_cnpj` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jogo`
--
ALTER TABLE `jogo`
  MODIFY `id_jogo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD CONSTRAINT `biblioteca_ibfk_1` FOREIGN KEY (`id_jogo`) REFERENCES `jogo` (`id_jogo`),
  ADD CONSTRAINT `biblioteca_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);

--
-- Restrições para tabelas `biblioteca_empresa`
--
ALTER TABLE `biblioteca_empresa`
  ADD CONSTRAINT `biblioteca_empresa_ibfk_1` FOREIGN KEY (`id_jogo`) REFERENCES `jogo` (`id_jogo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
