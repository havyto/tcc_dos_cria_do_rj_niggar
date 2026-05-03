-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03-Maio-2026 às 23:20
-- Versão do servidor: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ghost_gamer`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id_genero` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id_genero`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_genero`, `nome`) VALUES
(1, 'Acao'),
(2, 'Misterio'),
(3, 'Terror'),
(4, 'Rpg'),
(5, 'Fps'),
(6, 'Aventura'),
(7, 'Luta'),
(8, 'Ficcao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nome` varchar(110) DEFAULT NULL,
  `email` varchar(110) DEFAULT NULL,
  `nickname` varchar(110) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `clientes`
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
-- Estrutura da tabela `jogo`
--

CREATE TABLE IF NOT EXISTS `jogo` (
  `id_jogo` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `id_genero` int(11) NOT NULL,
  `empresa_email` varchar(110) DEFAULT NULL,
  PRIMARY KEY (`id_jogo`),
  KEY `id_genero` (`id_genero`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
