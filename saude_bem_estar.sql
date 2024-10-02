-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/10/2024 às 02:25
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
-- Banco de dados: `saude_bem_estar`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `horario` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `agenda`
--

INSERT INTO `agenda` (`id`, `data`, `horario`) VALUES
(5, '2024-10-01', '09:00:00'),
(6, '2024-10-01', '10:00:00'),
(7, '2024-10-02', '11:00:00'),
(8, '2024-10-02', '14:00:00'),
(9, '2024-10-03', '15:00:00'),
(10, '2024-10-03', '16:00:00'),
(11, '2024-10-04', '08:00:00'),
(12, '2024-10-04', '09:30:00'),
(13, '2024-10-05', '10:30:00'),
(14, '2024-10-05', '13:00:00'),
(15, '2024-10-06', '14:30:00'),
(16, '2024-10-06', '16:00:00'),
(17, '2024-10-07', '09:15:00'),
(18, '2024-10-07', '11:45:00'),
(19, '2024-10-08', '12:00:00'),
(20, '2024-10-08', '13:30:00'),
(21, '2024-10-09', '09:00:00'),
(22, '2024-10-09', '10:00:00'),
(23, '2024-10-10', '11:00:00'),
(24, '2024-10-10', '14:00:00'),
(25, '2024-10-11', '15:00:00'),
(26, '2024-10-11', '16:00:00'),
(27, '2024-10-12', '08:00:00'),
(28, '2024-10-12', '09:30:00'),
(29, '2024-10-13', '10:30:00'),
(30, '2024-10-13', '13:00:00'),
(31, '2024-10-14', '14:30:00'),
(32, '2024-10-14', '16:00:00'),
(33, '2024-10-15', '09:15:00'),
(34, '2024-10-15', '11:45:00'),
(35, '2024-10-16', '12:00:00'),
(36, '2024-10-16', '13:30:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `alergia`
--

CREATE TABLE `alergia` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alergia`
--

INSERT INTO `alergia` (`id`, `descricao`, `usuario_id`) VALUES
(23, 'Alergia a amendoim', 7),
(24, 'Alergia a pólen', 8),
(25, 'Alergia a lactose', 9),
(26, 'Alergia a penicilina', 10),
(27, 'Alergia a sulfa', 11),
(28, 'Alergia a ácaros', 12),
(29, 'Alergia a glúten', 13),
(30, 'Alergia a frutos do mar', 14),
(31, 'Alergia a latex', 15),
(32, 'Alergia a fármacos', 16),
(33, 'Alergia a mofo', 17),
(34, 'Alergia a veneno de inseto', 18),
(35, 'Alergia a medicamentos anti-inflamatórios', 19),
(36, 'Alergia a caspa de animal', 20),
(37, 'Alergia a corantes', 21),
(38, 'Alergia a frutas tropicais', 22),
(39, 'Alergia a aditivos alimentares', 23),
(40, 'Alergia a poeira', 24),
(41, 'Alergia a cebola', 25),
(42, 'Alergia a erva doce', 26),
(44, 'Alergia a pimenta', 28),
(45, 'Alergia a insetos', 29),
(46, 'Alergia a ovo', 30),
(47, 'Alergia a soja', 31);

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta_exame`
--

CREATE TABLE `consulta_exame` (
  `consulta_medica_id` int(11) NOT NULL,
  `exame_medico_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `consulta_exame`
--

INSERT INTO `consulta_exame` (`consulta_medica_id`, `exame_medico_id`) VALUES
(65, 1),
(66, 2),
(67, 3),
(68, 4),
(70, 6),
(71, 7),
(72, 8),
(73, 9),
(74, 10),
(75, 11);

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta_medica`
--

CREATE TABLE `consulta_medica` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `profissional_saude_id` int(11) DEFAULT NULL,
  `agenda_id` int(11) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `consulta_medica`
--

INSERT INTO `consulta_medica` (`id`, `usuario_id`, `profissional_saude_id`, `agenda_id`, `descricao`) VALUES
(65, 7, 5, 5, 'Consulta de rotina com o pediatra'),
(66, 8, 6, 6, 'Consulta para alergias com o clínico geral'),
(67, 9, 7, 7, 'Consulta pediátrica com o cardiologista'),
(68, 10, 8, 8, 'Avaliação dermatológica com a dermatologista'),
(70, 12, 10, 10, 'Consulta ginecológica com a ginecologista'),
(71, 13, 11, 11, 'Consulta oftalmológica com o oftalmologista'),
(72, 14, 12, 12, 'Avaliação endócrina com a endocrinologista'),
(73, 15, 13, 13, 'Consulta neurológica com o neurologista'),
(74, 16, 14, 14, 'Consulta geriátrica com a geriatra'),
(75, 17, 15, 15, 'Consulta urológica com o urologista'),
(76, 18, 16, 16, 'Avaliação pulmonar com a pneumologista'),
(77, 19, 17, 17, 'Consulta gastroenterológica com o gastroenterologista'),
(78, 20, 18, 18, 'Consulta otorrinolaringológica com a otorrinolaringologista'),
(79, 21, 19, 19, 'Consulta oncológica com o oncologista'),
(80, 22, 20, 20, 'Avaliação nutricional com a nutricionista'),
(81, 23, 21, 21, 'Consulta fisioterapêutica com o fisioterapeuta'),
(82, 24, 22, 22, 'Consulta psicológica com a psicóloga'),
(83, 25, 23, 23, 'Avaliação anestésica com o anestesiologista'),
(84, 26, 24, 24, 'Consulta reumatológica com a reumatologista'),
(85, 27, 25, 25, 'Consulta pediátrica com o pediatra');

--
-- Acionadores `consulta_medica`
--
DELIMITER $$
CREATE TRIGGER `log_atualizacao_consulta_medica` AFTER UPDATE ON `consulta_medica` FOR EACH ROW BEGIN
    INSERT INTO log_consulta_medica (consulta_id, usuario_id, profissional_saude_id, descricao, operacao)
    VALUES (NEW.id, NEW.usuario_id, NEW.profissional_saude_id, NEW.descricao, 'Atualização');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `log_insercao_consulta_medica` AFTER INSERT ON `consulta_medica` FOR EACH ROW BEGIN
    INSERT INTO log_consulta_medica (consulta_id, usuario_id, profissional_saude_id, descricao, operacao)
    VALUES (NEW.id, NEW.usuario_id, NEW.profissional_saude_id, NEW.descricao, 'Inserção');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`id`, `usuario_id`, `rua`, `cidade`, `estado`) VALUES
(1, 7, 'Rua A', 'São Paulo', 'SP'),
(2, 8, 'Rua B', 'Rio de Janeiro', 'RJ'),
(3, 9, 'Rua C', 'Belo Horizonte', 'MG'),
(4, 10, 'Rua D', 'Curitiba', 'PR'),
(5, 11, 'Rua E', 'Brasília', 'DF'),
(6, 12, 'Rua F', 'Salvador', 'BA'),
(7, 13, 'Rua G', 'Fortaleza', 'CE'),
(8, 14, 'Rua H', 'Porto Alegre', 'RS'),
(9, 15, 'Rua I', 'Manaus', 'AM'),
(10, 16, 'Rua J', 'Recife', 'PE'),
(11, 17, 'Rua Berlim', 'Belém', 'PA'),
(12, 18, 'Rua L', 'Goiânia', 'GO'),
(13, 19, 'Rua M', 'Campinas', 'SP'),
(14, 20, 'Rua N', 'Florianópolis', 'SC'),
(15, 21, 'Rua O', 'Natal', 'RN'),
(16, 22, 'Rua P', 'Maceió', 'AL'),
(17, 23, 'Rua Q', 'São Luís', 'MA'),
(18, 24, 'Rua R', 'João Pessoa', 'PB'),
(19, 25, 'Rua S', 'Aracaju', 'SE'),
(20, 26, 'Rua T', 'Teresina', 'PI'),
(21, 27, 'Rua U', 'Boa Vista', 'RR'),
(22, 28, 'Rua Manzao', 'Macapá', 'AP'),
(23, 29, 'Rua W', 'Palmas', 'TO'),
(24, 30, 'Rua X', 'Vitória', 'ES'),
(25, 31, 'Rua Y', 'Cuiabá', 'MT');

-- --------------------------------------------------------

--
-- Estrutura para tabela `exame_medico`
--

CREATE TABLE `exame_medico` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `resultado` text DEFAULT NULL,
  `consulta_medica_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `exame_medico`
--

INSERT INTO `exame_medico` (`id`, `descricao`, `resultado`, `consulta_medica_id`) VALUES
(1, 'Hemograma', 'Normal', 65),
(2, 'Teste alérgico', 'Leve reação', 66),
(3, 'Ecocardiograma', 'Sem anormalidades', 67),
(4, 'Dermatoscopia', 'Sem alterações', 68),
(5, 'Exame de sangue', 'Normal', 69),
(6, 'Papanicolau', 'Normal', 70),
(7, 'Teste de visão', 'Sem correção necessária', 71),
(8, 'Teste de glicose', 'Normal', 72),
(9, 'Tomografia', 'Sem anormalidades', 73),
(10, 'Exame físico', 'Normal', 74),
(11, 'Ultrassonografia', 'Normal', 75),
(13, 'Endoscopia', 'Sem alterações', 77),
(14, 'Audiometria', 'Normal', 78),
(15, 'Exame de sangue', 'Normal', 79),
(16, 'Avaliação nutricional', 'Normal', 80),
(17, 'Exame físico', 'Normal', 81),
(18, 'Avaliação psicológica', 'Normal', 82),
(19, 'Exame anestésico', 'Apropriado', 83),
(20, 'Exame físico', 'Normal', 84),
(21, 'Avaliação pediátrica', 'Normal', 85),
(22, 'Teste respiratório', 'Catarro extremo', 76),
(23, 'Teste respiratório', 'Catarro ', 76);

-- --------------------------------------------------------

--
-- Estrutura para tabela `historico_vacinacao`
--

CREATE TABLE `historico_vacinacao` (
  `id` int(11) NOT NULL,
  `vacina` varchar(255) NOT NULL,
  `data_aplicacao` varchar(10) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `historico_vacinacao`
--

INSERT INTO `historico_vacinacao` (`id`, `vacina`, `data_aplicacao`, `usuario_id`) VALUES
(1, 'Vacina BCG', '2023-01-15', 7),
(2, 'Vacina Hepatite B', '2023-02-10', 7),
(3, 'Vacina DTPa', '2023-03-05', 8),
(4, 'Vacina MMR', '2023-03-20', 9),
(5, 'Vacina Gripe', '2023-04-15', 10),
(6, 'Vacina HPV', '2023-05-10', 11),
(7, 'Vacina Meninó', '2023-06-01', 12),
(8, 'Vacina Tetravalente', '2023-07-20', 13),
(9, 'Vacina COVID-19', '2023-08-30', 14),
(10, 'Vacina Influenza', '2023-09-15', 15),
(11, 'Vacina Hepatite A', '2023-10-10', 16),
(12, 'Vacina Febre Amarela', '2023-11-01', 17),
(13, 'Vacina Pneumocócica', '2023-11-20', 18),
(14, 'Vacina Varicela', '2023-12-05', 19),
(15, 'Vacina Meningocócica', '2024-01-10', 20),
(16, 'Vacina Tetravalente', '2024-02-15', 21),
(17, 'Vacina COVID-19', '2024-03-20', 22),
(18, 'Vacina DTPa', '2024-04-25', 23),
(19, 'Vacina Gripe', '2024-05-30', 24),
(20, 'Vacina HPV', '2024-06-17', 25),
(21, 'Vacina Hepatite B', '2024-07-20', 26),
(22, 'Vacina Meningocócica', '2024-08-25', 27),
(23, 'Vacina COVID-19', '2024-09-10', 28),
(24, 'Vacina Varicela', '2024-10-05', 29),
(25, 'Vacina Pneumocócica', '2024-11-15', 30),
(26, 'Vacina DTPa', '2024-12-20', 31);

-- --------------------------------------------------------

--
-- Estrutura para tabela `log_consulta_medica`
--

CREATE TABLE `log_consulta_medica` (
  `id` int(11) NOT NULL,
  `consulta_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `profissional_saude_id` int(11) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data_hora` timestamp NOT NULL DEFAULT current_timestamp(),
  `operacao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `log_consulta_medica`
--

INSERT INTO `log_consulta_medica` (`id`, `consulta_id`, `usuario_id`, `profissional_saude_id`, `descricao`, `data_hora`, `operacao`) VALUES
(1, 65, 7, 5, 'Consulta de rotina com o pediatra', '2024-09-30 02:25:17', 'Inserção'),
(2, 66, 8, 6, 'Consulta para alergias com o clínico geral', '2024-09-30 02:25:17', 'Inserção'),
(3, 67, 9, 7, 'Consulta pediátrica com o cardiologista', '2024-09-30 02:25:17', 'Inserção'),
(4, 68, 10, 8, 'Avaliação dermatológica com a dermatologista', '2024-09-30 02:25:17', 'Inserção'),
(5, 69, 11, 9, 'Exame de sangue com o ortopedista', '2024-09-30 02:25:17', 'Inserção'),
(6, 70, 12, 10, 'Consulta ginecológica com a ginecologista', '2024-09-30 02:25:17', 'Inserção'),
(7, 71, 13, 11, 'Consulta oftalmológica com o oftalmologista', '2024-09-30 02:25:17', 'Inserção'),
(8, 72, 14, 12, 'Avaliação endócrina com a endocrinologista', '2024-09-30 02:25:17', 'Inserção'),
(9, 73, 15, 13, 'Consulta neurológica com o neurologista', '2024-09-30 02:25:17', 'Inserção'),
(10, 74, 16, 14, 'Consulta geriátrica com a geriatra', '2024-09-30 02:25:17', 'Inserção'),
(11, 75, 17, 15, 'Consulta urológica com o urologista', '2024-09-30 02:25:17', 'Inserção'),
(12, 76, 18, 16, 'Avaliação pulmonar com a pneumologista', '2024-09-30 02:25:17', 'Inserção'),
(13, 77, 19, 17, 'Consulta gastroenterológica com o gastroenterologista', '2024-09-30 02:25:17', 'Inserção'),
(14, 78, 20, 18, 'Consulta otorrinolaringológica com a otorrinolaringologista', '2024-09-30 02:25:17', 'Inserção'),
(15, 79, 21, 19, 'Consulta oncológica com o oncologista', '2024-09-30 02:25:17', 'Inserção'),
(16, 80, 22, 20, 'Avaliação nutricional com a nutricionista', '2024-09-30 02:25:17', 'Inserção'),
(17, 81, 23, 21, 'Consulta fisioterapêutica com o fisioterapeuta', '2024-09-30 02:25:17', 'Inserção'),
(18, 82, 24, 22, 'Consulta psicológica com a psicóloga', '2024-09-30 02:25:17', 'Inserção'),
(19, 83, 25, 23, 'Avaliação anestésica com o anestesiologista', '2024-09-30 02:25:17', 'Inserção'),
(20, 84, 26, 24, 'Consulta reumatológica com a reumatologista', '2024-09-30 02:25:17', 'Inserção'),
(21, 85, 27, 25, 'Consulta pediátrica com o pediatra', '2024-09-30 02:25:17', 'Inserção'),
(22, 69, 11, 9, 'Exame de sangue com o ortopedista no 2° andar', '2024-09-30 02:39:44', 'Atualização');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medicamento`
--

CREATE TABLE `medicamento` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `dosagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medicamento`
--

INSERT INTO `medicamento` (`id`, `nome`, `dosagem`) VALUES
(6, 'Paracetamol', '500mg'),
(7, 'Ibuprofeno', '400mg'),
(8, 'Amoxicilina', '250mg'),
(9, 'Dipirona', '1g'),
(10, 'Cetirizina', '10mg'),
(11, 'Losartana', '50mg'),
(12, 'Simvastatina', '20mg'),
(13, 'Metformina', '850mg'),
(14, 'Omeprazol', '20mg'),
(15, 'AAS', '100mg'),
(16, 'Lorazepam', '1mg'),
(17, 'Ranitidina', '150mg'),
(19, 'Sertralina', '50mg'),
(20, 'Alprazolam', '1mg'),
(21, 'Venlafaxina', '75mg'),
(22, 'Dexametasona', '1mg'),
(23, 'Salmeterol', '50mcg'),
(24, 'Salbutamol', '100mcg'),
(25, 'Citalopram', '20mg'),
(26, 'Bromoprida', '10mg'),
(27, 'Atoclavina', '40mg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `profissional_saude`
--

CREATE TABLE `profissional_saude` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `especialidade` varchar(255) DEFAULT NULL,
  `crm` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `profissional_saude`
--

INSERT INTO `profissional_saude` (`id`, `nome`, `especialidade`, `crm`, `telefone`) VALUES
(5, 'Dr. João da Silva', 'Pediatra', 'CRM12345', '31987654321'),
(6, 'Dra. Maria Oliveira', 'Clínico Geral', 'CRM67890', '31998765432'),
(7, 'Dr. Carlos Pereira', 'Cardiologista', 'CRM11111', '31912345678'),
(8, 'Dra. Ana Costa', 'Dermatologista', 'CRM22222', '31923456789'),
(9, 'Dr. Ricardo Santos', 'Ortopedista', 'CRM33333', '31934567890'),
(10, 'Dra. Fernanda Lima', 'Ginecologista', 'CRM44445', '31945678901'),
(11, 'Dr. Rafael Almeida', 'Oftalmologista', 'CRM55555', '31956789012'),
(12, 'Dra. Paula Sousa', 'Endocrinologista', 'CRM66666', '31967890123'),
(13, 'Dr. Marcos Ferreira', 'Neurologista', 'CRM77777', '31978901234'),
(14, 'Dra. Luiza Martins', 'Geriatra', 'CRM88888', '31989012345'),
(15, 'Dr. André Mendes', 'Urologista', 'CRM99999', '31990123456'),
(16, 'Dra. Tânia Almeida', 'Pneumologista', 'CRM10101', '31901234567'),
(17, 'Dr. Jorge Almeida', 'Gastroenterologista', 'CRM12121', '31912345679'),
(18, 'Dra. Beatriz Ferreira', 'Otorrinolaringologista', 'CRM14141', '31923456780'),
(19, 'Dr. Vinícius Ribeiro', 'Oncologista', 'CRM16161', '31934567891'),
(20, 'Dra. Camila Rocha', 'Nutricionista', 'CRM18181', '31945678902'),
(21, 'Dr. Pedro Lopes', 'Fisioterapeuta', 'CRM20202', '31956789013'),
(22, 'Dra. Juliana Martins', 'Psicóloga', 'CRM22222', '31967890124'),
(23, 'Dr. Felipe Costa', 'Anestesiologista', 'CRM24242', '31978901235'),
(24, 'Dra. Roberta Alves', 'Reumatologista', 'CRM26262', '31989012346'),
(25, 'Dr. Samuel Lima', 'Pediatra', 'CRM28282', '31990123457');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `senha`, `email`) VALUES
(7, 'Lucas Pereira', 'senha123', 'lucas@example.com'),
(8, 'Mariana Lima', 'senha123', 'mariana@example.com'),
(9, 'Thiago Silva', 'senha123', 'thiago@example.com'),
(10, 'Julia Costa', 'senha123', 'julia@example.com'),
(11, 'Ricardo Santos', 'senha123', 'ricardo@example.com'),
(12, 'Fernanda Almeida', 'senha123', 'fernanda@example.com'),
(13, 'Bruno Oliveira', 'senha123', 'bruno@example.com'),
(14, 'Carla Sousa', 'senha123', 'carla@example.com'),
(15, 'Gabriel Rocha', 'senha123', 'gabriel@example.com'),
(16, 'Ana Beatriz', 'senha123', 'ana@example.com'),
(17, 'Paulo Henrique', 'senha123', 'paulo@example.com'),
(18, 'Roberta Lima', 'senha123', 'roberta@example.com'),
(19, 'Marcelo Dias', 'senha123', 'marcelo@example.com'),
(20, 'Renata Martins', 'senha123', 'renata@example.com'),
(21, 'Eduardo Ferreira', 'senha123', 'eduardo@example.com'),
(22, 'Patrícia Mendes', 'senha123', 'patricia@example.com'),
(23, 'Natalia Santos', 'senha123', 'natalia@example.com'),
(24, 'Fábio Almeida', 'senha123', 'fabio@example.com'),
(25, 'Juliana Mendes', 'senha123', 'juliana@example.com'),
(26, 'Rafael Lima', 'senha123', 'rafael@example.com'),
(27, 'Diana Soares', 'senha123', 'diana@example.com'),
(28, 'Sérgio Oliveira', 'senha123', 'sergio@example.com'),
(29, 'Thiago Ramos', 'senha123', 'thiago.ramos@example.com'),
(30, 'Fabiana Costa', 'senha123', 'fabiana@example.com'),
(31, 'Larissa Martins', 'senha123', 'larissa@example.com'),
(32, 'Julio Ferreira', 'senha123', 'julio@example.com'),
(33, 'Gustavo Santos', 'senha123', 'gustavo@example.com'),
(34, 'Luana Almeida', 'senha123', 'luana@example.com'),
(35, 'Mateus Silva', 'senha123', 'mateus@example.com'),
(36, 'Mirella Mendes', 'senha123', 'mirella@example.com'),
(37, 'Leonardo Costa', 'senha123', 'leonardo@example.com'),
(38, 'Jéssica Lima', 'senha123', 'jessica@example.com'),
(39, 'Tatiane Ferreira', 'senha123', 'tatiane@example.com'),
(40, 'Felipe Dias', 'senha123', 'felipe@example.com'),
(41, 'Aline Souza', 'senha123', 'aline@example.com'),
(42, 'Patrícia Nascimento', 'senha123', 'patricia.nascimento@example.com'),
(43, 'Vinícius Moreira', 'senha123', 'vinicius@example.com'),
(44, 'Mário Carvalho', 'senha123', 'mario@example.com'),
(46, 'Eduarda Lima', 'senha123', 'eduarda@example.com'),
(47, 'Alexandre Costa', 'senha123', 'alexandre@example.com'),
(48, 'Gabriela Soares', 'senha123', 'gabriela@example.com'),
(49, 'Priscila Almeida', 'senha123', 'priscila@example.com'),
(50, 'Carlos Eduardo', 'senha123', 'carlos@example.com'),
(51, 'Vitor Hugo', 'senha123', 'vitor@example.com'),
(52, 'Isabela Andrade', 'senha123', 'isabela@example.com'),
(53, 'Raul Pereira', 'senha123', 'raul@example.com'),
(54, 'Renan Lima', 'senha123', 'renan@example.com'),
(55, 'Felicity Brown', 'senha123', 'felicity@example.com'),
(56, 'Leonor White', 'senha123', 'leonor@example.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `alergia`
--
ALTER TABLE `alergia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Índices de tabela `consulta_exame`
--
ALTER TABLE `consulta_exame`
  ADD PRIMARY KEY (`consulta_medica_id`,`exame_medico_id`),
  ADD KEY `fk_exame` (`exame_medico_id`);

--
-- Índices de tabela `consulta_medica`
--
ALTER TABLE `consulta_medica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profissional_saude_id` (`profissional_saude_id`),
  ADD KEY `agenda_id` (`agenda_id`),
  ADD KEY `consulta_medica_ibfk_1` (`usuario_id`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_id` (`usuario_id`);

--
-- Índices de tabela `exame_medico`
--
ALTER TABLE `exame_medico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consulta_medica_id` (`consulta_medica_id`);

--
-- Índices de tabela `historico_vacinacao`
--
ALTER TABLE `historico_vacinacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Índices de tabela `log_consulta_medica`
--
ALTER TABLE `log_consulta_medica`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `medicamento`
--
ALTER TABLE `medicamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `profissional_saude`
--
ALTER TABLE `profissional_saude`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `alergia`
--
ALTER TABLE `alergia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `consulta_medica`
--
ALTER TABLE `consulta_medica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `exame_medico`
--
ALTER TABLE `exame_medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `historico_vacinacao`
--
ALTER TABLE `historico_vacinacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `log_consulta_medica`
--
ALTER TABLE `log_consulta_medica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `medicamento`
--
ALTER TABLE `medicamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `profissional_saude`
--
ALTER TABLE `profissional_saude`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `alergia`
--
ALTER TABLE `alergia`
  ADD CONSTRAINT `alergia_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `consulta_exame`
--
ALTER TABLE `consulta_exame`
  ADD CONSTRAINT `fk_consulta` FOREIGN KEY (`consulta_medica_id`) REFERENCES `consulta_medica` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_exame` FOREIGN KEY (`exame_medico_id`) REFERENCES `exame_medico` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `consulta_medica`
--
ALTER TABLE `consulta_medica`
  ADD CONSTRAINT `consulta_medica_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consulta_medica_ibfk_2` FOREIGN KEY (`profissional_saude_id`) REFERENCES `profissional_saude` (`id`),
  ADD CONSTRAINT `consulta_medica_ibfk_3` FOREIGN KEY (`agenda_id`) REFERENCES `agenda` (`id`);

--
-- Restrições para tabelas `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `historico_vacinacao`
--
ALTER TABLE `historico_vacinacao`
  ADD CONSTRAINT `historico_vacinacao_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
