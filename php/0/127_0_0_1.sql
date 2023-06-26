-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Maio-2023 às 23:08
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
-- Banco de dados: `livraria`
--
CREATE DATABASE IF NOT EXISTS `livraria` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `livraria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autores`
--

CREATE TABLE `autores` (
  `id_autor` int(11) NOT NULL,
  `nome_autor` varchar(100) DEFAULT NULL,
  `nacionalidade_autor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `autores`
--

INSERT INTO `autores` (`id_autor`, `nome_autor`, `nacionalidade_autor`) VALUES
(1, 'José Saramago', 'Portuguesa'),
(4, 'John Steinbeck', 'Americana'),
(5, 'Gabriel Gracia Marquez', 'Chilena'),
(27, 'Eça de Queirós', 'Portuguesa'),
(49, 'Gabriel Gracia Marquez', 'Chilena');

-- --------------------------------------------------------

--
-- Estrutura da tabela `autores_has_livros`
--

CREATE TABLE `autores_has_livros` (
  `fk_id_autor` int(11) NOT NULL,
  `fk_id_livro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `autores_has_livros`
--

INSERT INTO `autores_has_livros` (`fk_id_autor`, `fk_id_livro`) VALUES
(1, 1),
(27, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `fk_id_compra` int(11) NOT NULL,
  `fk_id_livro` int(11) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `preco_livro_compra` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categorias` int(11) NOT NULL,
  `nome_cateogria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(100) DEFAULT NULL,
  `email_cliente` varchar(45) DEFAULT NULL,
  `morada_cliente` varchar(200) DEFAULT NULL,
  `telefone_cliente` varchar(13) DEFAULT NULL,
  `cc_cliente` varchar(9) DEFAULT NULL,
  `password_cliente` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `compras`
--

CREATE TABLE `compras` (
  `id_compra` int(11) NOT NULL,
  `fk_id_cliente` int(11) NOT NULL,
  `data_compra` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `editoras`
--

CREATE TABLE `editoras` (
  `id_editora` int(11) NOT NULL,
  `nome_editora` varchar(100) DEFAULT NULL,
  `morada_editora` varchar(200) DEFAULT NULL,
  `telefone_editora` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `editoras`
--

INSERT INTO `editoras` (`id_editora`, `nome_editora`, `morada_editora`, `telefone_editora`) VALUES
(1, 'Porto Editora', 'Avenida dos Aliados 57, Porto', '238723443'),
(2, 'Leya', 'Porto', '253465782'),
(3, 'Bertrand', 'Lisboa', '236487209'),
(4, 'Porto Editora', 'Lisboa', '238723443'),
(5, 'Leya', 'Porto', '253465782'),
(6, 'Bertrand', 'Lisboa', '236487209'),
(7, 'Porto Editora', 'Porto', '238723443'),
(8, 'Leya', 'Porto', '253465782'),
(9, 'Bertrand', 'Lisboa', '236487209'),
(10, 'Porto Editora', 'Porto', '238723443'),
(11, 'Leya', 'Porto', '253465782'),
(12, 'Bertrand', 'Lisboa', '236487209'),
(13, 'Porto Editora', 'Porto', '238723443'),
(14, 'Leya', 'Porto', '253465782'),
(15, 'Bertrand', 'Lisboa', '236487209'),
(16, 'Porto Editora', 'Porto', '238723443'),
(17, 'Leya', 'Porto', '253465782'),
(18, 'Bertrand', 'Lisboa', '236487209'),
(19, 'Porto Editora', 'Porto', '238723443'),
(20, 'Leya', 'Porto', '253465782'),
(21, 'Bertrand', 'Lisboa', '236487209'),
(22, 'Porto Editora', 'Porto', '238723443'),
(23, 'Leya', 'Porto', '253465782'),
(24, 'Bertrand', 'Lisboa', '236487209'),
(25, 'Porto Editora', 'Porto', '238723443'),
(26, 'Leya', 'Porto', '253465782'),
(27, 'Bertrand', 'Lisboa', '236487209');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `id_livro` int(11) NOT NULL,
  `fk_id_editora` int(11) NOT NULL,
  `isbn_livro` varchar(13) DEFAULT NULL,
  `titulo_livro` varchar(100) DEFAULT NULL,
  `edicao_livro` varchar(20) DEFAULT NULL,
  `preco_livro` decimal(5,2) DEFAULT NULL,
  `stock_livro` int(11) DEFAULT NULL,
  `capa_livro` varchar(45) DEFAULT NULL,
  `descricao_livro` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id_livro`, `fk_id_editora`, `isbn_livro`, `titulo_livro`, `edicao_livro`, `preco_livro`, `stock_livro`, `capa_livro`, `descricao_livro`) VALUES
(1, 3, 'Qwery123', 'Levantado do Chão', '2ª edição', '12.44', 10, 'levantado.jpg', 'No mundo atual, a estrutura atual da organização desafia a capacidade de equalização dos conhecimentos estratégicos para atingir a excelência.'),
(3, 3, 'Qwery123', 'Asterix', '1ª edição', '11.99', 150, 'asterix.jpg', 'No mundo atual, a estrutura atual da organização desafia a capacidade de equalização dos conhecimentos estratégicos para atingir a excelência.'),
(4, 1, 'Qwery456', 'Moby Dick', '1ª edição', '9.00', 12, 'moby.jpg', 'No mundo atual, a estrutura atual da organização desafia a capacidade de equalização dos conhecimentos estratégicos para atingir a excelência.'),
(5, 3, 'Qwery999', 'Pela essa estrada fora', '1ª edição', '100.00', 0, 'estrada.jpg', 'No mundo atual, a estrutura atual da organização desafia a capacidade de equalização dos conhecimentos estratégicos para atingir a excelência.'),
(6, 2, 'Qwery888', 'Corto Maltese', '1ª edição', '20.00', 10, 'corto.jpg', 'No mundo atual, a estrutura atual da organização desafia a capacidade de equalização dos conhecimentos estratégicos para atingir a excelência.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros_has_categorias`
--

CREATE TABLE `livros_has_categorias` (
  `id_livro` int(11) NOT NULL,
  `id_categorias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id_autor`);

--
-- Índices para tabela `autores_has_livros`
--
ALTER TABLE `autores_has_livros`
  ADD PRIMARY KEY (`fk_id_autor`,`fk_id_livro`),
  ADD KEY `fk_autores_has_livros_livros1_idx` (`fk_id_livro`),
  ADD KEY `fk_autores_has_livros_autores1_idx` (`fk_id_autor`);

--
-- Índices para tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`fk_id_compra`,`fk_id_livro`),
  ADD KEY `fk_compras_has_livros_livros1_idx` (`fk_id_livro`),
  ADD KEY `fk_compras_has_livros_compras1_idx` (`fk_id_compra`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categorias`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `fk_compras_clientes1_idx` (`fk_id_cliente`);

--
-- Índices para tabela `editoras`
--
ALTER TABLE `editoras`
  ADD PRIMARY KEY (`id_editora`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id_livro`),
  ADD KEY `fk_livros_editoras_idx` (`fk_id_editora`);

--
-- Índices para tabela `livros_has_categorias`
--
ALTER TABLE `livros_has_categorias`
  ADD PRIMARY KEY (`id_livro`,`id_categorias`),
  ADD KEY `fk_livros_has_categorias_categorias1_idx` (`id_categorias`),
  ADD KEY `fk_livros_has_categorias_livros1_idx` (`id_livro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autores`
--
ALTER TABLE `autores`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categorias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `editoras`
--
ALTER TABLE `editoras`
  MODIFY `id_editora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `id_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `autores_has_livros`
--
ALTER TABLE `autores_has_livros`
  ADD CONSTRAINT `fk_autores_has_livros_autores1` FOREIGN KEY (`fk_id_autor`) REFERENCES `autores` (`id_autor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_autores_has_livros_livros1` FOREIGN KEY (`fk_id_livro`) REFERENCES `livros` (`id_livro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD CONSTRAINT `fk_compras_has_livros_compras1` FOREIGN KEY (`fk_id_compra`) REFERENCES `compras` (`id_compra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_compras_has_livros_livros1` FOREIGN KEY (`fk_id_livro`) REFERENCES `livros` (`id_livro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `fk_compras_clientes1` FOREIGN KEY (`fk_id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `livros`
--
ALTER TABLE `livros`
  ADD CONSTRAINT `fk_livros_editoras` FOREIGN KEY (`fk_id_editora`) REFERENCES `editoras` (`id_editora`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `livros_has_categorias`
--
ALTER TABLE `livros_has_categorias`
  ADD CONSTRAINT `fk_livros_has_categorias_categorias1` FOREIGN KEY (`id_categorias`) REFERENCES `categorias` (`id_categorias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_livros_has_categorias_livros1` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id_livro`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
