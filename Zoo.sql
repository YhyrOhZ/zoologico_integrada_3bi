-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/10/2024 às 07:49
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `test`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alimentação dos animais`
--

CREATE TABLE `alimentação dos animais` (
  `Id_alimen` int(255) NOT NULL,
  `Nome_da_comida` varchar(255) NOT NULL,
  `Tipo_da_comida` varchar(255) NOT NULL,
  `Quantidade` int(2) NOT NULL,
  `Cronograma` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alimentação dos animais`
--

INSERT INTO `alimentação dos animais` (`Id_alimen`, `Nome_da_comida`, `Tipo_da_comida`, `Quantidade`, `Cronograma`) VALUES
(4124584, 'C/ Carnivoros', 'Carnes Vermelhas e Brancas ', 99, 'ás 10:00/ 15:00/ 20:00 \r\nalgumas alterações para alguns animais'),
(4242427, 'C/ insetívoros ', 'Insetos', 80, 'observação!!!!\r\ndigestão de animais longas, observação para saber quando alimentar '),
(4242453, 'C/ Herbívoros ', 'Vegetais/Frutas', 99, 'ás 10:00/ 15:00/ 20:00 \r\nalgumas alterações para alguns animais'),
(8845219, 'C/ Pequenos Carnivoros ', 'Canes vermelhas e Branca de animais pequenos', 99, 'observação!!!!\r\ndigestão de animais longas, observação para saber quando alimentar ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `anfibios`
--

CREATE TABLE `anfibios` (
  `id_anfibios` int(3) NOT NULL,
  `nome_anfibios` varchar(255) NOT NULL,
  `quantidade_anfibios` int(3) NOT NULL,
  `id_animal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `anfibios`
--

INSERT INTO `anfibios` (`id_anfibios`, `nome_anfibios`, `quantidade_anfibios`, `id_animal`) VALUES
(1, 'Ra_de_olhos_vermelhos', 4, 0),
(2, 'Ra_dourada_venenosa', 4, 0),
(3, 'ra_touro_americana', 4, 0),
(4, 'ra_leopardo', 4, 0),
(5, 'ra_da_costa_do_pacífico', 4, 0),
(6, 'sapo_do_rio_colorado', 4, 0),
(7, 'sapo_comum', 6, 0),
(8, 'ra_leopardo_do_norte', 4, 0),
(9, 'ra_pickerel', 4, 0),
(10, 'axolote', 15, 0),
(11, 'salamandra_tigre', 12, 0),
(12, 'salamandra_pintada', 6, 0),
(13, 'sapo_mudpuppy', 4, 0),
(14, 'salamandra_escorregadia', 2, 0),
(15, 'ra_do_coro_boreal', 6, 0),
(16, 'ra_pintadacda_colúmbia', 4, 0),
(17, 'ra_do_pantanal', 4, 0),
(18, 'ra_verde', 4, 0),
(19, 'sapo_de_chifre', 2, 0),
(20, 'salamandra_de_pintas', 2, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animais`
--

CREATE TABLE `animais` (
  `id_animais` int(2) NOT NULL,
  `classe` varchar(255) NOT NULL,
  `zona` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `animais`
--

INSERT INTO `animais` (`id_animais`, `classe`, `zona`) VALUES
(1, 'anfibios', 'amarelo'),
(2, 'reptil', 'amarelo'),
(3, 'insetos_e_aracnideos', 'roxo'),
(4, 'mamiferos', 'rosa'),
(5, 'aves', 'azul');

-- --------------------------------------------------------

--
-- Estrutura para tabela `aves`
--

CREATE TABLE `aves` (
  `id_aves` int(255) NOT NULL,
  `nome_aves` varchar(255) NOT NULL,
  `quantidade_aves` int(2) NOT NULL,
  `id_animal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aves`
--

INSERT INTO `aves` (`id_aves`, `nome_aves`, `quantidade_aves`, `id_animal`) VALUES
(1, 'aguia', 6, 0),
(2, 'falcao ', 2, 0),
(3, 'pinguim', 10, 0),
(4, 'canario', 4, 0),
(5, 'papagaio', 8, 0),
(6, 'flamingo', 8, 0),
(7, 'coruja', 5, 0),
(8, 'pato', 4, 0),
(9, 'galo', 1, 0),
(10, 'andorinha', 2, 0),
(11, 'beija_flor', 10, 0),
(12, 'pavao', 8, 0),
(13, 'gaivota', 9, 0),
(14, 'periquito', 5, 0),
(15, 'pica_pau', 4, 0),
(16, 'codorna', 3, 0),
(17, 'tico_tico', 1, 0),
(18, 'sabia', 7, 0),
(19, 'gaviao', 9, 0),
(20, 'monarca', 4, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionários`
--

CREATE TABLE `funcionários` (
  `id_funcionários` int(255) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Função` varchar(255) NOT NULL,
  `Renda` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionários`
--

INSERT INTO `funcionários` (`id_funcionários`, `Nome`, `Função`, `Renda`) VALUES
(2, 'João Silva', 'Veterinário', '5000.00'),
(3, 'Maria Rodrigues', 'Zootecnista', '4500.00'),
(4, 'Pedro Oliveira', 'Tratador de Animais', '3500.00'),
(5, 'Ana Souza', 'Bióloga', '6000.00'),
(6, 'Luís Fernandes', 'Engenheiro de Sistemas', '7000.00'),
(7, 'Carlos Alberto', 'Tratador de Animais', '3200.00'),
(8, 'Patrícia Mendes', 'Zootecnista', '4200.00'),
(9, 'Ricardo Gomes', 'Veterinário', '4800.00'),
(10, 'Sandra Costa', 'Bióloga', '5800.00'),
(11, 'Mário Jorge', 'Engenheiro de Sistemas', '6800.00'),
(12, 'Fernanda Silva', 'Tratador de Animais', '3000.00'),
(13, 'Leonardo Lima', 'Zootecnista', '4000.00'),
(14, 'André Luís', 'Veterinário', '4600.00'),
(15, 'Cláudia Santos', 'Bióloga', '5600.00'),
(16, 'Rafael Oliveira', 'Engenheiro de Sistemas', '6600.00'),
(17, 'Gabriela Martins', 'Tratador de Animais', '2900.00'),
(18, 'Juliana Pereira', 'Zootecnista', '3900.00'),
(19, 'Eduardo Costa', 'Veterinário', '4400.00'),
(20, 'Débora Souza', 'Bióloga', '5400.00'),
(21, 'Marcelo Henrique', 'Engenheiro de Sistemas', '6400.00'),
(22, 'Alessandra Rodrigues', 'Tratador de Animais', '2800.00'),
(23, 'Thiago Almeida', 'Zootecnista', '3800.00'),
(24, 'Luisa Fernandes', 'Veterinária', '4300.00'),
(25, 'Rômulo Gomes', 'Bióloga', '5300.00'),
(26, 'Cristiano Oliveira', 'Engenheiro de Sistemas', '6300.00'),
(27, 'Beatriz Silva', 'Tratador de Animais', '2700.00'),
(28, 'Vinicius Lima', 'Zootecnista', '3700.00'),
(29, 'Larissa Costa', 'Veterinária', '4200.00'),
(30, 'Gustavo Souza', 'Bióloga', '5200.00'),
(31, 'Felipe Henrique', 'Engenheiro de Sistemas', '6200.00'),
(32, 'Camila Martins', 'Tratador de Animais', '2600.00'),
(33, 'Bruno Pereira', 'Zootecnista', '3600.00'),
(34, 'Isabela Santos', 'Veterinária', '4100.00'),
(35, 'Hugo Oliveira', 'Bióloga', '5100.00'),
(36, 'Matheus Almeida', 'Engenheiro de Sistemas', '6100.00'),
(37, 'Jéssica Rodrigues', 'Tratador de Animais', '2500.00'),
(38, 'Lucas Lima', 'Zootecnista', '3500.00'),
(39, 'Aline Fernandes', 'Veterinária', '4000.00'),
(40, 'Rafaela Gomes', 'Bióloga', '5000.00'),
(41, 'Caio Henrique', 'Engenheiro de Sistemas', '6000.00'),
(42, 'Luana Costa', 'Bióloga', '4900.00'),
(43, 'Raul Lima', 'Engenheiro de Sistemas', '5900.00'),
(44, 'Marcos Pereira', 'Veterinário', '4400.00'),
(45, 'Juliana Silva', 'Tratador de Animais', '2900.00'),
(46, 'Leonardo Costa', 'Zootecnista', '3900.00'),
(47, 'Eduarda Souza', 'Bióloga', '4800.00'),
(48, 'Luis Felipe Oliveira', 'Engenheiro de Sistemas', '5800.00'),
(49, 'Mariana Martins', 'Tratador de Animais', '2800.00'),
(50, 'Gabriel Pereira', 'Zootecnista', '3800.00'),
(51, 'Ana Paula Santos', 'Veterinária', '4300.00'),
(52, 'Ricardo Gomes', 'Bióloga', '4700.00'),
(53, 'Marcelo Lima', 'Engenheiro de Sistemas', '5700.00'),
(54, 'Beatriz Rodrigues', 'Tratador de Animais', '2700.00'),
(55, 'Vinicius Costa', 'Zootecnista', '3700.00'),
(56, 'Larissa Fernandes', 'Veterinária', '4200.00'),
(57, 'Gustavo Souza', 'Bióloga', '4600.00'),
(58, 'Felipe Almeida', 'Engenheiro de Sistemas', '5600.00'),
(59, 'Camila Silva', 'Tratador de Animais', '2600.00'),
(60, 'Bruno Lima', 'Zootecnista', '3600.00'),
(61, 'Isabela Oliveira', 'Veterinária', '4100.00'),
(62, 'Hugo Gomes', 'Bióloga', '4500.00'),
(63, 'Matheus Pereira', 'Engenheiro de Sistemas', '5500.00'),
(64, 'Jéssica Costa', 'Tratador de Animais', '2500.00'),
(65, 'Lucas Rodrigues', 'Zootecnista', '3500.00'),
(66, 'Aline Santos', 'Veterinária', '4000.00'),
(67, 'Rafaela Lima', 'Bióloga', '4400.00'),
(68, 'Caio Almeida', 'Engenheiro de Sistemas', '5400.00'),
(69, 'Gabriel Costa', 'Tratador de Animais', '2400.00'),
(70, 'Leticia Pereira', 'Zootecnista', '3400.00'),
(71, 'Emanuel Oliveira', 'Veterinário', '3900.00'),
(72, 'Lorena Gomes', 'Bióloga', '4300.00'),
(73, 'Marcelo Pereira', 'Engenheiro de Sistemas', '5300.00'),
(74, 'Ana Clara Lima', 'Tratador de Animais', '2300.00'),
(75, 'Thiago Rodrigues', 'Zootecnista', '3300.00'),
(76, 'Luana Costa', 'Veterinária', '3800.00'),
(77, 'Raul Lima', 'Bióloga', '4200.00'),
(78, 'Marcos Pereira', 'Engenheiro de Sistemas', '5200.00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ingresso`
--

CREATE TABLE `ingresso` (
  `Id_ingresso` int(255) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Preço` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `ingresso`
--

INSERT INTO `ingresso` (`Id_ingresso`, `Nome`, `Preço`) VALUES
(12345, 'Combo Carnivoro (um hamburguer, batata frita e uma bebida)', 35),
(56789, 'Combo herbívoros (Salada, batata frita e uma bebida)', 26),
(98765, 'Combo Carnivoro (um hamburguer, batata frita e uma bebida)', 35),
(54321, 'Combo herbívoros (Salada, batata frita e uma bebida)', 25),
(14725, 'Combo Carnivoro (um hamburguer, batata frita e uma bebida)', 36),
(58369, 'Combo herbívoros (um hamburguer de soja, batata frita e uma bebida)', 26),
(96385, 'Combo Carnivoro (um hamburguer, batata frita e uma bebida)', 36),
(52741, 'Combo herbívoros (um hamburguer de soja, batata frita e uma bebida)', 25);

-- --------------------------------------------------------

--
-- Estrutura para tabela `insetos/aracnídeos`
--

CREATE TABLE `insetos/aracnídeos` (
  `id_Insetos/aracnídeos` int(255) NOT NULL,
  `Nome_animais` varchar(255) NOT NULL,
  `Quantidades_de_Animais` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `insetos/aracnídeos`
--

INSERT INTO `insetos/aracnídeos` (`id_Insetos/aracnídeos`, `Nome_animais`, `Quantidades_de_Animais`) VALUES
(1, 'barata', 4),
(2, 'formiga_de_fogo', 50),
(3, 'abelha', 25),
(4, 'vespa', 10),
(5, 'grilo', 23),
(6, 'lagarta ', 2),
(7, 'louva_a_deus', 6),
(8, 'borrachudo', 4),
(9, 'libélula', 2),
(10, 'aranha_preguitadora', 2),
(11, 'tarântula', 2),
(12, 'barata_verde', 1),
(13, 'formiga_de_elefante', 1),
(14, 'percevejo', 2),
(15, 'vaga_lume', 10),
(16, 'pulga', 1),
(17, 'taturana', 3),
(18, 'gafanhoto', 5),
(19, 'bicho_pau', 2),
(20, 'cigarra', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lanchonetes`
--

CREATE TABLE `lanchonetes` (
  `id_Lan` int(255) NOT NULL,
  `Nome_Lan` varchar(255) NOT NULL,
  `Quantidade_de_Lan` int(2) NOT NULL,
  `Horário de Atividade` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `lanchonetes`
--

INSERT INTO `lanchonetes` (`id_Lan`, `Nome_Lan`, `Quantidade_de_Lan`, `Horário de Atividade`) VALUES
(1, 'Lanchonete Central', 1, '8:30 - 18:30'),
(2, 'Fast Snack', 2, '12:00 - 15:30'),
(3, 'Doce Sabor', 2, '14:00-15:00'),
(4, 'Delícias Naturais', 3, '13:45 - 16:45'),
(5, 'Burger Express', 2, '16:00 - 19:30'),
(6, 'Pizzaria do Parque', 2, '18:00 - 20:00'),
(7, 'Café da Praça', 4, '07:30 - 08:30'),
(8, 'Cantinho da Coxinha', 4, '15:00 - 16:00'),
(9, 'Sucos Tropical	', 3, '09:30 - 10:30'),
(10, 'Lanches & Refrescos', 2, '17:00 - 18:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mamiferos`
--

CREATE TABLE `mamiferos` (
  `id_mamiferos` int(255) NOT NULL,
  `nome_mamiferos` varchar(255) NOT NULL,
  `quantidade_mamiferos` int(3) NOT NULL,
  `id_animal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `mamiferos`
--

INSERT INTO `mamiferos` (`id_mamiferos`, `nome_mamiferos`, `quantidade_mamiferos`, `id_animal`) VALUES
(1, 'leao', 2, 0),
(2, 'tifre', 1, 0),
(3, 'elefante', 4, 0),
(4, 'girafa', 4, 0),
(5, 'urso', 4, 0),
(6, 'rato', 2, 0),
(7, 'canguru', 6, 0),
(8, 'golfinho', 7, 0),
(9, 'cavalo', 12, 0),
(10, 'chimpanze', 15, 0),
(11, 'lobo', 5, 0),
(12, 'coelho', 5, 0),
(13, 'bicho_preguica', 3, 0),
(14, 'morcego', 1, 0),
(15, 'zebra', 2, 0),
(16, 'raposa', 4, 0),
(17, 'macaco', 9, 0),
(18, 'armadillo', 6, 0),
(19, 'hipopotamo', 5, 0),
(20, 'porco_espinho', 3, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `reptil`
--

CREATE TABLE `reptil` (
  `id_reptil` int(255) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Quantidade` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `zona amarela`
--

CREATE TABLE `zona amarela` (
  `id_amarelo` int(255) NOT NULL,
  `Habitats` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `zona azul`
--

CREATE TABLE `zona azul` (
  `id_azul` int(255) NOT NULL,
  `Habitats` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `zona rosa`
--

CREATE TABLE `zona rosa` (
  `id_rosa` int(255) NOT NULL,
  `Habitats` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `zona roxa`
--

CREATE TABLE `zona roxa` (
  `id_roxo` int(255) NOT NULL,
  `Habitats` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alimentação dos animais`
--
ALTER TABLE `alimentação dos animais`
  ADD PRIMARY KEY (`Id_alimen`);

--
-- Índices de tabela `anfibios`
--
ALTER TABLE `anfibios`
  ADD PRIMARY KEY (`id_anfibios`);

--
-- Índices de tabela `animais`
--
ALTER TABLE `animais`
  ADD PRIMARY KEY (`id_animais`);

--
-- Índices de tabela `aves`
--
ALTER TABLE `aves`
  ADD PRIMARY KEY (`id_aves`);

--
-- Índices de tabela `funcionários`
--
ALTER TABLE `funcionários`
  ADD PRIMARY KEY (`id_funcionários`);

--
-- Índices de tabela `insetos/aracnídeos`
--
ALTER TABLE `insetos/aracnídeos`
  ADD PRIMARY KEY (`id_Insetos/aracnídeos`);

--
-- Índices de tabela `lanchonetes`
--
ALTER TABLE `lanchonetes`
  ADD PRIMARY KEY (`id_Lan`);

--
-- Índices de tabela `mamiferos`
--
ALTER TABLE `mamiferos`
  ADD PRIMARY KEY (`id_mamiferos`);

--
-- Índices de tabela `reptil`
--
ALTER TABLE `reptil`
  ADD PRIMARY KEY (`id_reptil`);

--
-- Índices de tabela `zona amarela`
--
ALTER TABLE `zona amarela`
  ADD PRIMARY KEY (`id_amarelo`);

--
-- Índices de tabela `zona azul`
--
ALTER TABLE `zona azul`
  ADD PRIMARY KEY (`id_azul`);

--
-- Índices de tabela `zona rosa`
--
ALTER TABLE `zona rosa`
  ADD PRIMARY KEY (`id_rosa`);

--
-- Índices de tabela `zona roxa`
--
ALTER TABLE `zona roxa`
  ADD PRIMARY KEY (`id_roxo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alimentação dos animais`
--
ALTER TABLE `alimentação dos animais`
  MODIFY `Id_alimen` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8845220;

--
-- AUTO_INCREMENT de tabela `anfibios`
--
ALTER TABLE `anfibios`
  MODIFY `id_anfibios` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `animais`
--
ALTER TABLE `animais`
  MODIFY `id_animais` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `aves`
--
ALTER TABLE `aves`
  MODIFY `id_aves` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `funcionários`
--
ALTER TABLE `funcionários`
  MODIFY `id_funcionários` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de tabela `insetos/aracnídeos`
--
ALTER TABLE `insetos/aracnídeos`
  MODIFY `id_Insetos/aracnídeos` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `lanchonetes`
--
ALTER TABLE `lanchonetes`
  MODIFY `id_Lan` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `mamiferos`
--
ALTER TABLE `mamiferos`
  MODIFY `id_mamiferos` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `reptil`
--
ALTER TABLE `reptil`
  MODIFY `id_reptil` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `zona amarela`
--
ALTER TABLE `zona amarela`
  MODIFY `id_amarelo` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `zona azul`
--
ALTER TABLE `zona azul`
  MODIFY `id_azul` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `zona rosa`
--
ALTER TABLE `zona rosa`
  MODIFY `id_rosa` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `zona roxa`
--
ALTER TABLE `zona roxa`
  MODIFY `id_roxo` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
