-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 18-Set-2022 às 22:49
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `crud_vendas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `id_empresa` int(20) NOT NULL AUTO_INCREMENT,
  `cod_empresa` int(6) NOT NULL,
  `email_empresa` varchar(50) NOT NULL,
  `nome_empresa` varchar(100) NOT NULL,
  `numero_empresa` varchar(13) DEFAULT NULL,
  `cnpj` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`,`cod_empresa`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `cod_empresa`, `email_empresa`, `nome_empresa`, `numero_empresa`, `cnpj`) VALUES
(1, 123456, 'empresa@gmail.com', 'empresa', NULL, '12345678901234'),
(13, 112966, 'emrer@gfgf.com', 'empresa', NULL, NULL),
(25, 189794, 'lpsolution@outlook.com', 'LPSolution', '85987734479', NULL),
(26, 627840, 'polishop@outlook.com', 'polishop', NULL, '12345678901222'),
(27, 400399, 'lucas@dsds.com.br', 'lucas enterprise', NULL, NULL),
(28, 855239, 'empresa1@dfdf.cdd', 'empresa1', NULL, NULL),
(29, 497506, 'isa@hotmail.com', 'isabelle empresa', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_nota`
--

DROP TABLE IF EXISTS `itens_nota`;
CREATE TABLE IF NOT EXISTS `itens_nota` (
  `eNota` int(6) NOT NULL,
  `item` int(250) NOT NULL AUTO_INCREMENT,
  `cod_empresa` varchar(6) NOT NULL,
  `quantidade` decimal(6,0) NOT NULL,
  `descricao` varchar(30) NOT NULL,
  `vr_unit` decimal(10,2) NOT NULL,
  PRIMARY KEY (`eNota`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `itens_nota`
--

INSERT INTO `itens_nota` (`eNota`, `item`, `cod_empresa`, `quantidade`, `descricao`, `vr_unit`) VALUES
(951236, 1, '', '2', 'teste10', '20.00'),
(759777, 1, '', '3', 'coca cola', '32.00'),
(111555, 1, '', '3', 'pepsi', '32.00'),
(895477, 1, '', '3', 'pepsi', '74.00'),
(444666, 1, '', '1', 'frango', '19.00'),
(224466, 2, '', '6', 'biscoito', '38.00'),
(759777, 2, '', '1', 'teste10', '5.00'),
(151860, 1, '', '2', 'arroz', '9.00'),
(741852, 1, '', '1', 'iphone', '3000.00'),
(455566, 1, '', '3', 'iphone', '2000.00'),
(741852, 2, '', '1', 'motorola', '2000.00'),
(444666, 2, '', '5', 'ovo', '5.00'),
(555666, 2, '', '5', 'biscoito', '10.00'),
(777111, 1, '', '5', 'biscoito', '38.00'),
(785258, 1, '', '5', 'biscoito', '38.00'),
(111112, 1, '', '1', 'bolsa', '200.00'),
(111111, 2, '', '2', 'sapato', '200.00'),
(111111, 1, '', '1', 'tenis', '100.00'),
(111112, 2, '', '2', 'tenis', '490.00'),
(111112, 3, '', '1', 'bolsa', '200.00'),
(111112, 4, '', '2', 'tenis', '490.00'),
(111122, 1, '', '2', 'testes', '20.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota`
--

DROP TABLE IF EXISTS `nota`;
CREATE TABLE IF NOT EXISTS `nota` (
  `eNota` int(6) NOT NULL,
  `cod_empresa` varchar(6) NOT NULL,
  `dataVenda` date NOT NULL,
  `formaPagamento` varchar(20) NOT NULL,
  `observacao` varchar(100) DEFAULT NULL,
  `qntd_produtos` int(20) NOT NULL,
  PRIMARY KEY (`eNota`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `nota`
--

INSERT INTO `nota` (`eNota`, `cod_empresa`, `dataVenda`, `formaPagamento`, `observacao`, `qntd_produtos`) VALUES
(151860, '', '2022-07-31', 'pix', 'TESTETESTE', 0),
(741852, '', '2022-08-01', 'pix', '', 0),
(444666, '', '2022-07-31', 'pix', 'frango', 0),
(455566, '', '2022-08-01', 'crédito', 'TESTE FINAL', 0),
(951236, '', '2022-07-31', 'pix', '', 0),
(895477, '', '2022-07-31', 'crédito', 'teste5', 0),
(111555, '', '2022-07-31', 'crédito', 'chave: 08912089331', 0),
(759777, '', '2022-07-30', 'crédito', 'TESTEEEEE', 0),
(555666, '', '2022-08-19', 'fiado', 'pagar dia 17 de agosto', 0),
(111228, '', '2022-08-19', 'fiado', 'pagar dia 17 de agosto', 0),
(224466, '', '2022-08-27', 'fiado', 'pagar dia 17 de agosto', 0),
(777111, '', '2022-08-28', 'fiado', 'pagar dia 17 de agosto', 0),
(785258, '', '2022-09-04', 'fiado', 'pagar dia 17 de agosto', 0),
(588564, '', '2022-09-08', 'pix', 'blabal', 2),
(111111, '', '2022-09-08', 'pix', 'blabal', 2),
(222555, '', '2022-09-09', 'pix', 'blabal', 2),
(778521, '', '2022-09-09', 'pix', 'blabal', 2),
(111112, '', '2022-09-09', 'pix', 'teste', 2),
(111122, '', '2022-09-09', 'pix', 'teste', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cod_empresa` varchar(6) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET latin1 NOT NULL,
  `data_nascimento` date NOT NULL,
  `numero_celular` varchar(13) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) CHARACTER SET latin1 NOT NULL,
  `permissoes` text,
  PRIMARY KEY (`id`, `cod_empresa`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `cod_empresa`, `cpf`, `nome`, `data_nascimento`, `numero_celular`, `email`, `senha`, `permissoes`) VALUES
(5, '', '', 'Larisse', '0000-00-00', NULL, '', '6562c5c1f33db6e05a082a88cddab5ea', NULL),
(4, '', '', 'Lucas', '0000-00-00', NULL, '', '81dc9bdb52d04dc20036dbd8313ed055', NULL),
(6, '', '', 'Penha', '0000-00-00', NULL, '', '01cfcd4f6b8770febfb40cb906715822', NULL),
(7, '', '', 'Isabelle', '0000-00-00', NULL, '', 'a53c8cd09fb02ba13e56ba08309e70dc', NULL),
(8, '', '', 'Lucas Penha', '0000-00-00', NULL, '', '698dc19d489c4e4db73e28a713eab07b', NULL),
(9, '', '', 'Silva Rodrigues', '0000-00-00', NULL, '', 'aa1bf4646de67fd9086cf6c79007026c', NULL),
(10, '', '', 'Jucelino', '0000-00-00', NULL, '', '827ccb0eea8a706c4c34a16891f84e7b', NULL),
(11, '189794', '08912089331', 'lucas penha rodriguees', '2003-08-12', '85987734479', 'lucasrds17@outlook.com', '01101100', 'ADMIN'),
(16, '400399', '12345678901', 'luciano serra rodrigues', '1971-05-28', '85987734479', 'luciano@gmail.com', '12345678', NULL),
(17, '855239', '08912089332', 'lucas penha rodriguees', '2003-08-12', '85987734479', 'lucas@htotmaicom.com', '01101100', 'ADMIN'),
(14, '627840', '06694223390', 'isabelle penha rodrigues', '1996-05-08', '85987991830', 'isabelle@outlook.com', '08051996', 'ADMIN');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
