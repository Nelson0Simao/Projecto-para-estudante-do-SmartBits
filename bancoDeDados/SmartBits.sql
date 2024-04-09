-- Meu script para cria o banco de dado automaticamente

CREATE DATABASE IF NOT EXISTS SmartBits;



-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 09-Abr-2024 às 17:54
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `SmartBits`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `id_administrador` int(11) NOT NULL,
  `nome_administrador` varchar(120) NOT NULL,
  `codigo_acesso` bigint(6) NOT NULL,
  `fk_id_administrador_hierarquia_funcao` int(11) NOT NULL,
  `fk_id_telefone_administrador` int(11) NOT NULL,
  `fk_id_endereco_administrador` int(11) NOT NULL,
  `data_nascimento_administrador` date NOT NULL,
  `bi_administrador` bigint(11) NOT NULL,
  `naturalidade_administrador` varchar(45) NOT NULL,
  `nacionalidade_administrador` varchar(45) NOT NULL,
  `foto_perfil_administrador` varchar(100) DEFAULT NULL,
  `fk_id_sexo_administrador` int(11) NOT NULL,
  `fk_id_pcd_administrador` int(11) NOT NULL,
  `fk_id_tipo_sanguineo_administrador` int(11) DEFAULT NULL,
  `email_administrador` varchar(100) DEFAULT NULL,
  `fk_id_situacao_conta_administrador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`id_administrador`, `nome_administrador`, `codigo_acesso`, `fk_id_administrador_hierarquia_funcao`, `fk_id_telefone_administrador`, `fk_id_endereco_administrador`, `data_nascimento_administrador`, `bi_administrador`, `naturalidade_administrador`, `nacionalidade_administrador`, `foto_perfil_administrador`, `fk_id_sexo_administrador`, `fk_id_pcd_administrador`, `fk_id_tipo_sanguineo_administrador`, `email_administrador`, `fk_id_situacao_conta_administrador`) VALUES
(1, 'Nelson Simão', 1234, 1, 1, 1, '2001-10-09', 73893245723, 'Paulo Afonso', 'Brasileiro', 'foto-vazia.jpg', 1, 1, 1, 'usuariopadrao@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` int(11) NOT NULL,
  `nome_aluno` varchar(100) NOT NULL,
  `bi_aluno` bigint(11) NOT NULL,
  `fk_id_sexo_aluno` int(11) NOT NULL,
  `data_nascimento_aluno` date NOT NULL,
  `naturalidade_aluno` varchar(45) NOT NULL,
  `foto_perfil_aluno` varchar(100) DEFAULT NULL,
  `nacionalidade_aluno` varchar(80) NOT NULL,
  `nome_mae` varchar(120) NOT NULL,
  `nome_pai` varchar(120) NOT NULL,
  `fk_id_tipo_sanguineo_aluno` int(11) NOT NULL,
  `fk_id_aluno_pcd` int(11) NOT NULL,
  `fk_id_endereco_aluno` int(11) NOT NULL,
  `fk_id_telefone_aluno` int(11) NOT NULL,
  `codigo_acesso` bigint(6) NOT NULL,
  `fk_id_aluno_hierarquia_funcao` int(11) NOT NULL,
  `email_aluno` varchar(100) DEFAULT NULL,
  `fk_id_situacao_geral_aluno` int(11) NOT NULL,
  `data_matricula_inicial` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `nome_aluno`, `bi_aluno`, `fk_id_sexo_aluno`, `data_nascimento_aluno`, `naturalidade_aluno`, `foto_perfil_aluno`, `nacionalidade_aluno`, `nome_mae`, `nome_pai`, `fk_id_tipo_sanguineo_aluno`, `fk_id_aluno_pcd`, `fk_id_endereco_aluno`, `fk_id_telefone_aluno`, `codigo_acesso`, `fk_id_aluno_hierarquia_funcao`, `email_aluno`, `fk_id_situacao_geral_aluno`, `data_matricula_inicial`) VALUES
(1, 'Eva Zulina', 22222222222, 2, '2006-01-01', 'Angolana', NULL, 'Angolana', 'Não sei ', 'Não sei', 1, 1, 2, 2, 726296, 4, 'test@test.com', 1, '2024-02-27 17:55:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacoes`
--

CREATE TABLE `avaliacoes` (
  `id_avaliacao` int(11) NOT NULL,
  `descricao_avaliacao` varchar(180) NOT NULL,
  `fk_id_unidade_avaliacao` int(11) NOT NULL,
  `valor_avaliacao` float DEFAULT NULL,
  `data_realizada` datetime NOT NULL DEFAULT current_timestamp(),
  `fk_id_turma_disciplina_avaliacao` int(11) NOT NULL,
  `data_postagem` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aviso_turma`
--

CREATE TABLE `aviso_turma` (
  `id_aviso_turma` int(11) NOT NULL,
  `aviso` text DEFAULT NULL,
  `fk_id_turma_disciplina` int(11) NOT NULL,
  `data_postagem` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cedula_turma`
--

CREATE TABLE `cedula_turma` (
  `id_cedula_turma` int(11) NOT NULL,
  `cedula` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `cedula_turma`
--

INSERT INTO `cedula_turma` (`id_cedula_turma`, `cedula`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E'),
(6, 'F');

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracao`
--

CREATE TABLE `configuracao` (
  `id_configuracao` int(11) NOT NULL,
  `fk_id_controle_unidade` int(11) NOT NULL,
  `fk_id_controle_rematricula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `configuracao`
--

INSERT INTO `configuracao` (`id_configuracao`, `fk_id_controle_unidade`, `fk_id_controle_rematricula`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `controle_rematricula`
--

CREATE TABLE `controle_rematricula` (
  `id_situacao_abertura_rematricula` int(11) NOT NULL,
  `situacao` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `controle_rematricula`
--

INSERT INTO `controle_rematricula` (`id_situacao_abertura_rematricula`, `situacao`) VALUES
(1, 'Aberta'),
(2, 'Fechada');

-- --------------------------------------------------------

--
-- Estrutura da tabela `controle_unidade`
--

CREATE TABLE `controle_unidade` (
  `id_controle_unidade` int(11) NOT NULL,
  `situacao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `controle_unidade`
--

INSERT INTO `controle_unidade` (`id_controle_unidade`, `situacao`) VALUES
(1, 'Somente a Primeira'),
(2, 'Primeira e Segunda'),
(3, 'Todas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL,
  `nome_curso` varchar(45) NOT NULL,
  `sigla` varchar(4) NOT NULL,
  `fk_id_modalidade_curso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`id_curso`, `nome_curso`, `sigla`, `fk_id_modalidade_curso`) VALUES
(1, 'Informatica', 'INFO', 1),
(2, 'Engenharia Informatica', 'I', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id_disciplina` int(11) NOT NULL,
  `nome_disciplina` varchar(80) NOT NULL,
  `fk_id_modalidade_disciplina` int(11) NOT NULL,
  `sigla_disciplina` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`id_disciplina`, `nome_disciplina`, `fk_id_modalidade_disciplina`, `sigla_disciplina`) VALUES
(1, 'Programação', 1, 'P'),
(2, 'Fisica', 1, 'F');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `id_endereco` int(11) NOT NULL,
  `cep` bigint(11) NOT NULL,
  `bairro` varchar(80) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `municipio` varchar(85) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`id_endereco`, `cep`, `bairro`, `endereco`, `uf`, `municipio`) VALUES
(1, 48601340, 'Centro', 'Rua São Jorge n 100', 'BA', 'Paulo Afonso'),
(2, 64207570, 'Planalto de Monteserra The', 'Rua São Benedito', 'PI', 'Parnaíba');

-- --------------------------------------------------------

--
-- Estrutura da tabela `falta_aluno`
--

CREATE TABLE `falta_aluno` (
  `id_falta` int(11) NOT NULL,
  `total_faltas` int(11) NOT NULL,
  `fk_id_turma_disciplina_falta` int(11) NOT NULL,
  `fk_id_unidade_falta` int(11) NOT NULL,
  `fk_id_matricula_falta` int(11) NOT NULL,
  `data_postagem` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hierarquia_funcao`
--

CREATE TABLE `hierarquia_funcao` (
  `id_hierarquia_funcao` int(11) NOT NULL,
  `hierarquia_funcao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `hierarquia_funcao`
--

INSERT INTO `hierarquia_funcao` (`id_hierarquia_funcao`, `hierarquia_funcao`) VALUES
(1, 'Administrador'),
(2, 'Co-administrador'),
(3, 'Docente'),
(4, 'Aluno');

-- --------------------------------------------------------

--
-- Estrutura da tabela `legenda`
--

CREATE TABLE `legenda` (
  `id_legenda` int(11) NOT NULL,
  `legenda` varchar(45) NOT NULL,
  `sigla` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `legenda`
--

INSERT INTO `legenda` (`id_legenda`, `legenda`, `sigla`) VALUES
(1, 'Aprovado', 'AP'),
(2, 'Reprovado', 'RP'),
(3, 'Regime de Progressão Parcial', 'RPP'),
(4, 'Reprovado por Falta', 'RPF'),
(5, 'Recuperação Final', 'RF');

-- --------------------------------------------------------

--
-- Estrutura da tabela `matricula`
--

CREATE TABLE `matricula` (
  `id_matricula` int(11) NOT NULL,
  `data_hora_matricula` timestamp NULL DEFAULT NULL,
  `fk_id_aluno` int(11) NOT NULL,
  `fk_id_turma_matricula` int(11) NOT NULL,
  `fk_id_situacao_aluno` int(11) NOT NULL,
  `fk_id_periodo_letivo_matricula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `matricula`
--

INSERT INTO `matricula` (`id_matricula`, `data_hora_matricula`, `fk_id_aluno`, `fk_id_turma_matricula`, `fk_id_situacao_aluno`, `fk_id_periodo_letivo_matricula`) VALUES
(1, NULL, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `media_disciplina`
--

CREATE TABLE `media_disciplina` (
  `id_media_disciplina` int(11) NOT NULL,
  `fk_id_turma_disciplina` int(11) NOT NULL,
  `fk_id_matricula_media` int(11) NOT NULL,
  `nota_valor` float NOT NULL,
  `fk_id_legenda` int(11) NOT NULL,
  `data_postagem` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `modalidade_curso`
--

CREATE TABLE `modalidade_curso` (
  `id_modalidade_curso` int(11) NOT NULL,
  `modalidade_curso` varchar(60) NOT NULL,
  `modalidade_curso_sigla` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `modalidade_curso`
--

INSERT INTO `modalidade_curso` (`id_modalidade_curso`, `modalidade_curso`, `modalidade_curso_sigla`) VALUES
(1, 'Ensino Médio', 'EM'),
(2, 'Ensino Profissional, médio integrado', 'ET');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modalidade_disciplina`
--

CREATE TABLE `modalidade_disciplina` (
  `id_modalidade_disciplina` int(11) NOT NULL,
  `modalidade_disciplina` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `modalidade_disciplina`
--

INSERT INTO `modalidade_disciplina` (`id_modalidade_disciplina`, `modalidade_disciplina`) VALUES
(1, 'Ensino Técnico'),
(2, 'Ensino Médio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota_avaliacao`
--

CREATE TABLE `nota_avaliacao` (
  `id_nota` int(11) NOT NULL,
  `fk_id_matricula_aluno` int(11) NOT NULL,
  `fk_id_avaliacao` int(11) NOT NULL,
  `valor_nota` float NOT NULL,
  `data_postagem` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `numero_sala_aula`
--

CREATE TABLE `numero_sala_aula` (
  `id_numero_sala_aula` int(11) NOT NULL,
  `numero_sala_aula` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `numero_sala_aula`
--

INSERT INTO `numero_sala_aula` (`id_numero_sala_aula`, `numero_sala_aula`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40);

-- --------------------------------------------------------

--
-- Estrutura da tabela `observacao_aluno`
--

CREATE TABLE `observacao_aluno` (
  `id_observacao` int(11) NOT NULL,
  `fk_id_turma_disciplina_observacao` int(11) NOT NULL,
  `fk_id_unidade` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `fk_id_matricula_observacao` int(11) NOT NULL,
  `data_postagem` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pcd`
--

CREATE TABLE `pcd` (
  `id_pcd` int(11) NOT NULL,
  `pcd` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `pcd`
--

INSERT INTO `pcd` (`id_pcd`, `pcd`) VALUES
(1, 'Não'),
(2, 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `periodo_disponivel`
--

CREATE TABLE `periodo_disponivel` (
  `id_periodo_disponivel` int(11) NOT NULL,
  `ano_letivo` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `periodo_disponivel`
--

INSERT INTO `periodo_disponivel` (`id_periodo_disponivel`, `ano_letivo`) VALUES
(1, '2021'),
(2, '2022'),
(3, '2023'),
(4, '2024'),
(5, '2025'),
(6, '2026'),
(7, '2027'),
(8, '2028'),
(9, '2029'),
(10, '2030'),
(11, '2031'),
(12, '2032'),
(13, '2033'),
(14, '2034'),
(15, '2035'),
(16, '2036'),
(17, '2037'),
(18, '2038'),
(19, '2039'),
(20, '2040'),
(21, '2041'),
(22, '2042'),
(23, '2043'),
(24, '2044'),
(25, '2045'),
(26, '2046'),
(27, '2047'),
(28, '2048'),
(29, '2049'),
(30, '2050');

-- --------------------------------------------------------

--
-- Estrutura da tabela `periodo_letivo`
--

CREATE TABLE `periodo_letivo` (
  `id_ano_letivo` int(11) NOT NULL,
  `fk_id_ano_letivo` int(11) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `fk_id_situacao_periodo_letivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `periodo_letivo`
--

INSERT INTO `periodo_letivo` (`id_ano_letivo`, `fk_id_ano_letivo`, `data_inicio`, `data_fim`, `fk_id_situacao_periodo_letivo`) VALUES
(1, 1, '2021-02-01', '2021-12-01', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `id_professor` int(11) NOT NULL,
  `nome_professor` varchar(100) NOT NULL,
  `data_hora_matricula` datetime NOT NULL DEFAULT current_timestamp(),
  `fk_id_sexo_professor` int(11) NOT NULL,
  `data_nascimento_professor` date NOT NULL,
  `foto_perfil_professor` varchar(100) DEFAULT NULL,
  `bi_professor` bigint(11) NOT NULL,
  `naturalidade_professor` varchar(45) NOT NULL,
  `nacionalidade_professor` varchar(45) NOT NULL,
  `fk_id_tipo_sanguineo_professor` int(11) NOT NULL,
  `fk_id_pcd_professor` int(11) NOT NULL,
  `fk_id_endereco_professor` int(11) NOT NULL,
  `fk_id_telefone_professor` int(11) NOT NULL,
  `codigo_acesso` bigint(6) NOT NULL,
  `fk_id_professor_hierarquia_funcao` int(11) NOT NULL,
  `email_professor` varchar(100) DEFAULT NULL,
  `fk_id_situacao_conta_professor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rematricula`
--

CREATE TABLE `rematricula` (
  `id_rematricula` int(11) NOT NULL,
  `fk_id_rematricula_aluno` int(11) NOT NULL,
  `fk_id_situacao_rematricula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sala`
--

CREATE TABLE `sala` (
  `id_sala` int(11) NOT NULL,
  `fk_id_numero_sala` int(11) NOT NULL,
  `capacidade_alunos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `sala`
--

INSERT INTO `sala` (`id_sala`, `fk_id_numero_sala`, `capacidade_alunos`) VALUES
(1, 1, 30);

-- --------------------------------------------------------

--
-- Estrutura da tabela `serie`
--

CREATE TABLE `serie` (
  `id_serie` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `sigla` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `serie`
--

INSERT INTO `serie` (`id_serie`, `nome`, `sigla`) VALUES
(1, 'Primeira', '1'),
(2, 'Segunda', '2'),
(3, 'Terceira', '3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sexo`
--

CREATE TABLE `sexo` (
  `id_sexo` int(11) NOT NULL,
  `sexo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `sexo`
--

INSERT INTO `sexo` (`id_sexo`, `sexo`) VALUES
(1, 'Masculino'),
(2, 'Feminino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao_aluno_ano_letivo`
--

CREATE TABLE `situacao_aluno_ano_letivo` (
  `id_situacao_aluno` int(11) NOT NULL,
  `situacao_aluno` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `situacao_aluno_ano_letivo`
--

INSERT INTO `situacao_aluno_ano_letivo` (`id_situacao_aluno`, `situacao_aluno`) VALUES
(1, 'Matriculado'),
(2, 'Aprovado'),
(3, 'Reprovado'),
(4, 'Mudou de turma');

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao_conta`
--

CREATE TABLE `situacao_conta` (
  `id_situacao_conta` int(11) NOT NULL,
  `situacao_conta` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `situacao_conta`
--

INSERT INTO `situacao_conta` (`id_situacao_conta`, `situacao_conta`) VALUES
(1, 'Ativa'),
(2, 'Desativada');

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao_geral_aluno`
--

CREATE TABLE `situacao_geral_aluno` (
  `id_situacao_geral` int(11) NOT NULL,
  `situacao_geral` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `situacao_geral_aluno`
--

INSERT INTO `situacao_geral_aluno` (`id_situacao_geral`, `situacao_geral`) VALUES
(1, 'Matriculado'),
(2, 'Desistente'),
(3, 'Concluído');

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao_periodo_letivo`
--

CREATE TABLE `situacao_periodo_letivo` (
  `id_situacao_periodo_letivo` int(11) NOT NULL,
  `situacao_periodo_letivo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `situacao_periodo_letivo`
--

INSERT INTO `situacao_periodo_letivo` (`id_situacao_periodo_letivo`, `situacao_periodo_letivo`) VALUES
(1, 'Ativo'),
(2, 'Finalizado'),
(3, 'Agendado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao_rematricula`
--

CREATE TABLE `situacao_rematricula` (
  `id_situacao_rematricula` int(11) NOT NULL,
  `situacao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `situacao_rematricula`
--

INSERT INTO `situacao_rematricula` (`id_situacao_rematricula`, `situacao`) VALUES
(1, 'Sim'),
(2, 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `id_telefone` int(11) NOT NULL,
  `numero_telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`id_telefone`, `numero_telefone`) VALUES
(1, '75988787643'),
(2, '22 222222222');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_sanguineo`
--

CREATE TABLE `tipo_sanguineo` (
  `id_tipo_sanguineo` int(11) NOT NULL,
  `tipo_sanguineo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tipo_sanguineo`
--

INSERT INTO `tipo_sanguineo` (`id_tipo_sanguineo`, `tipo_sanguineo`) VALUES
(1, 'Não informado'),
(2, 'AB+'),
(3, 'AB-'),
(4, 'A+'),
(5, 'A-'),
(6, 'B+'),
(7, 'B-'),
(8, 'O+'),
(9, 'O-');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `id_turma` int(11) NOT NULL,
  `fk_id_turno` int(11) NOT NULL,
  `fk_id_periodo_letivo` int(11) NOT NULL,
  `fk_id_curso` int(11) NOT NULL,
  `fk_id_serie` int(11) NOT NULL,
  `fk_id_sala` int(11) NOT NULL,
  `fk_id_cedula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`id_turma`, `fk_id_turno`, `fk_id_periodo_letivo`, `fk_id_curso`, `fk_id_serie`, `fk_id_sala`, `fk_id_cedula`) VALUES
(1, 1, 1, 1, 1, 1, 2),
(2, 2, 1, 2, 3, 1, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma_disciplina`
--

CREATE TABLE `turma_disciplina` (
  `id_turma_disciplina` int(11) NOT NULL,
  `fk_id_disciplina` int(11) NOT NULL,
  `fk_id_turma` int(11) NOT NULL,
  `fk_id_professor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turno`
--

CREATE TABLE `turno` (
  `id_turno` int(11) NOT NULL,
  `nome_turno` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `turno`
--

INSERT INTO `turno` (`id_turno`, `nome_turno`) VALUES
(1, 'Matutino'),
(2, 'Vespertino'),
(3, 'Noturno');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade`
--

CREATE TABLE `unidade` (
  `id_unidade` int(11) NOT NULL,
  `unidade` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `unidade`
--

INSERT INTO `unidade` (`id_unidade`, `unidade`) VALUES
(1, '1'),
(2, '2'),
(3, '3');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`),
  ADD KEY `fk_id_administrador_hierarquia_funcao_idx` (`fk_id_administrador_hierarquia_funcao`),
  ADD KEY `fk_id_telefone_administrador_idx` (`fk_id_telefone_administrador`),
  ADD KEY `fk_id_endereco_administrador_idx` (`fk_id_endereco_administrador`),
  ADD KEY `fk_id_pcd_administrador_idx` (`fk_id_pcd_administrador`),
  ADD KEY `fk_id_sexo_administrador_idx` (`fk_id_sexo_administrador`),
  ADD KEY `fk_id_tipo_sanguineo_administrador_idx` (`fk_id_tipo_sanguineo_administrador`),
  ADD KEY `fk_id_situacao_conta_administrador` (`fk_id_situacao_conta_administrador`);

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`),
  ADD KEY `fk_id_tipo_sanguineo_idx` (`fk_id_tipo_sanguineo_aluno`),
  ADD KEY `fk_id_pcd_idx` (`fk_id_aluno_pcd`),
  ADD KEY `fk_id_sexo_aluno_idx` (`fk_id_sexo_aluno`),
  ADD KEY `fk_id_endereco_aluno_idx` (`fk_id_endereco_aluno`),
  ADD KEY `fk_id_telefone_aluno_idx` (`fk_id_telefone_aluno`),
  ADD KEY `fk_id_aluno_hierarquia_funcao_idx` (`fk_id_aluno_hierarquia_funcao`),
  ADD KEY `fk_id_situacao_geral_aluno_idx` (`fk_id_situacao_geral_aluno`);

--
-- Índices para tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD PRIMARY KEY (`id_avaliacao`),
  ADD KEY `id_unidade_idx` (`fk_id_unidade_avaliacao`),
  ADD KEY `id_turma_disciplina_idx` (`fk_id_turma_disciplina_avaliacao`);

--
-- Índices para tabela `aviso_turma`
--
ALTER TABLE `aviso_turma`
  ADD PRIMARY KEY (`id_aviso_turma`),
  ADD KEY `fk_id_turma_disciplina` (`fk_id_turma_disciplina`);

--
-- Índices para tabela `cedula_turma`
--
ALTER TABLE `cedula_turma`
  ADD PRIMARY KEY (`id_cedula_turma`);

--
-- Índices para tabela `configuracao`
--
ALTER TABLE `configuracao`
  ADD PRIMARY KEY (`id_configuracao`),
  ADD KEY `fk_id_controle_unidade_idx` (`fk_id_controle_unidade`),
  ADD KEY `fk_id_rematricula_idx` (`fk_id_controle_rematricula`);

--
-- Índices para tabela `controle_rematricula`
--
ALTER TABLE `controle_rematricula`
  ADD PRIMARY KEY (`id_situacao_abertura_rematricula`);

--
-- Índices para tabela `controle_unidade`
--
ALTER TABLE `controle_unidade`
  ADD PRIMARY KEY (`id_controle_unidade`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`),
  ADD KEY `modalidade` (`fk_id_modalidade_curso`);

--
-- Índices para tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id_disciplina`),
  ADD KEY `fk_id_modalidade_disciplina_idx` (`fk_id_modalidade_disciplina`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id_endereco`);

--
-- Índices para tabela `falta_aluno`
--
ALTER TABLE `falta_aluno`
  ADD PRIMARY KEY (`id_falta`),
  ADD KEY `id_turma_disciplina_idx` (`fk_id_turma_disciplina_falta`),
  ADD KEY `id_unidade_idx` (`fk_id_unidade_falta`),
  ADD KEY `id_matricula_falta_idx` (`fk_id_matricula_falta`);

--
-- Índices para tabela `hierarquia_funcao`
--
ALTER TABLE `hierarquia_funcao`
  ADD PRIMARY KEY (`id_hierarquia_funcao`);

--
-- Índices para tabela `legenda`
--
ALTER TABLE `legenda`
  ADD PRIMARY KEY (`id_legenda`);

--
-- Índices para tabela `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id_matricula`),
  ADD KEY `id_aluno_idx` (`fk_id_aluno`),
  ADD KEY `id_turma_idx` (`fk_id_turma_matricula`),
  ADD KEY `id_situacao_aluno_idx` (`fk_id_situacao_aluno`),
  ADD KEY `fk_id_periodo_letivo_matricula_idx` (`fk_id_periodo_letivo_matricula`);

--
-- Índices para tabela `media_disciplina`
--
ALTER TABLE `media_disciplina`
  ADD PRIMARY KEY (`id_media_disciplina`),
  ADD KEY `id_turma_disciplina_idx` (`fk_id_turma_disciplina`),
  ADD KEY `id_matricula_idx` (`fk_id_matricula_media`),
  ADD KEY `id_legenda_idx` (`fk_id_legenda`);

--
-- Índices para tabela `modalidade_curso`
--
ALTER TABLE `modalidade_curso`
  ADD PRIMARY KEY (`id_modalidade_curso`);

--
-- Índices para tabela `modalidade_disciplina`
--
ALTER TABLE `modalidade_disciplina`
  ADD PRIMARY KEY (`id_modalidade_disciplina`);

--
-- Índices para tabela `nota_avaliacao`
--
ALTER TABLE `nota_avaliacao`
  ADD PRIMARY KEY (`id_nota`),
  ADD KEY `id_avaliacao_idx` (`fk_id_avaliacao`),
  ADD KEY `id_matricula_idx` (`fk_id_matricula_aluno`);

--
-- Índices para tabela `numero_sala_aula`
--
ALTER TABLE `numero_sala_aula`
  ADD PRIMARY KEY (`id_numero_sala_aula`);

--
-- Índices para tabela `observacao_aluno`
--
ALTER TABLE `observacao_aluno`
  ADD PRIMARY KEY (`id_observacao`),
  ADD KEY `id_turma_disciplina_idx` (`fk_id_turma_disciplina_observacao`),
  ADD KEY `id_unidade_idx` (`fk_id_unidade`),
  ADD KEY `id_matricula_idx` (`fk_id_matricula_observacao`);

--
-- Índices para tabela `pcd`
--
ALTER TABLE `pcd`
  ADD PRIMARY KEY (`id_pcd`);

--
-- Índices para tabela `periodo_disponivel`
--
ALTER TABLE `periodo_disponivel`
  ADD PRIMARY KEY (`id_periodo_disponivel`);

--
-- Índices para tabela `periodo_letivo`
--
ALTER TABLE `periodo_letivo`
  ADD PRIMARY KEY (`id_ano_letivo`),
  ADD KEY `fk_id_situacao_periodo_letivo_idx` (`fk_id_situacao_periodo_letivo`),
  ADD KEY `fk_id_ano_letivo_idx` (`fk_id_ano_letivo`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id_professor`),
  ADD KEY `fk_id_pcd_idx` (`fk_id_pcd_professor`),
  ADD KEY `fk_id_sexo_funcionario_idx` (`fk_id_sexo_professor`),
  ADD KEY `fk_id_tipo_sanguineo_professor_idx` (`fk_id_tipo_sanguineo_professor`),
  ADD KEY `fk_id_endereco_professor_idx` (`fk_id_endereco_professor`),
  ADD KEY `fk_id_telefone_professor_idx` (`fk_id_telefone_professor`),
  ADD KEY `fk_id_professor_hierarquia_funcao_idx` (`fk_id_professor_hierarquia_funcao`),
  ADD KEY `fk_id_situacao_conta_professor` (`fk_id_situacao_conta_professor`);

--
-- Índices para tabela `rematricula`
--
ALTER TABLE `rematricula`
  ADD PRIMARY KEY (`id_rematricula`),
  ADD KEY `fk_id_rematricula_aluno_idx` (`fk_id_rematricula_aluno`),
  ADD KEY `fk_id_situacao_rematricula_idx` (`fk_id_situacao_rematricula`);

--
-- Índices para tabela `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`id_sala`),
  ADD KEY `fk_id_numero_sala_idx` (`fk_id_numero_sala`);

--
-- Índices para tabela `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`id_serie`);

--
-- Índices para tabela `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`id_sexo`);

--
-- Índices para tabela `situacao_aluno_ano_letivo`
--
ALTER TABLE `situacao_aluno_ano_letivo`
  ADD PRIMARY KEY (`id_situacao_aluno`);

--
-- Índices para tabela `situacao_conta`
--
ALTER TABLE `situacao_conta`
  ADD PRIMARY KEY (`id_situacao_conta`);

--
-- Índices para tabela `situacao_geral_aluno`
--
ALTER TABLE `situacao_geral_aluno`
  ADD PRIMARY KEY (`id_situacao_geral`);

--
-- Índices para tabela `situacao_periodo_letivo`
--
ALTER TABLE `situacao_periodo_letivo`
  ADD PRIMARY KEY (`id_situacao_periodo_letivo`);

--
-- Índices para tabela `situacao_rematricula`
--
ALTER TABLE `situacao_rematricula`
  ADD PRIMARY KEY (`id_situacao_rematricula`);

--
-- Índices para tabela `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`id_telefone`);

--
-- Índices para tabela `tipo_sanguineo`
--
ALTER TABLE `tipo_sanguineo`
  ADD PRIMARY KEY (`id_tipo_sanguineo`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id_turma`),
  ADD KEY `fk_id_periodo_letivo_idx` (`fk_id_periodo_letivo`),
  ADD KEY `id_turno_idx` (`fk_id_turno`),
  ADD KEY `id_curso_idx` (`fk_id_curso`),
  ADD KEY `id_serie_idx` (`fk_id_serie`),
  ADD KEY `fk_id_sala_idx` (`fk_id_sala`),
  ADD KEY `fk_id_cedula_idx` (`fk_id_cedula`);

--
-- Índices para tabela `turma_disciplina`
--
ALTER TABLE `turma_disciplina`
  ADD PRIMARY KEY (`id_turma_disciplina`),
  ADD KEY `id_turma_idx` (`fk_id_turma`),
  ADD KEY `id_disciplina_idx` (`fk_id_disciplina`),
  ADD KEY `id_professor_idx` (`fk_id_professor`);

--
-- Índices para tabela `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id_turno`);

--
-- Índices para tabela `unidade`
--
ALTER TABLE `unidade`
  ADD PRIMARY KEY (`id_unidade`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_administrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  MODIFY `id_avaliacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aviso_turma`
--
ALTER TABLE `aviso_turma`
  MODIFY `id_aviso_turma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cedula_turma`
--
ALTER TABLE `cedula_turma`
  MODIFY `id_cedula_turma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `configuracao`
--
ALTER TABLE `configuracao`
  MODIFY `id_configuracao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `controle_rematricula`
--
ALTER TABLE `controle_rematricula`
  MODIFY `id_situacao_abertura_rematricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `controle_unidade`
--
ALTER TABLE `controle_unidade`
  MODIFY `id_controle_unidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `id_disciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `falta_aluno`
--
ALTER TABLE `falta_aluno`
  MODIFY `id_falta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `hierarquia_funcao`
--
ALTER TABLE `hierarquia_funcao`
  MODIFY `id_hierarquia_funcao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `legenda`
--
ALTER TABLE `legenda`
  MODIFY `id_legenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id_matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `media_disciplina`
--
ALTER TABLE `media_disciplina`
  MODIFY `id_media_disciplina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `modalidade_curso`
--
ALTER TABLE `modalidade_curso`
  MODIFY `id_modalidade_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `modalidade_disciplina`
--
ALTER TABLE `modalidade_disciplina`
  MODIFY `id_modalidade_disciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `nota_avaliacao`
--
ALTER TABLE `nota_avaliacao`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `numero_sala_aula`
--
ALTER TABLE `numero_sala_aula`
  MODIFY `id_numero_sala_aula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `observacao_aluno`
--
ALTER TABLE `observacao_aluno`
  MODIFY `id_observacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pcd`
--
ALTER TABLE `pcd`
  MODIFY `id_pcd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `periodo_disponivel`
--
ALTER TABLE `periodo_disponivel`
  MODIFY `id_periodo_disponivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `periodo_letivo`
--
ALTER TABLE `periodo_letivo`
  MODIFY `id_ano_letivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `id_professor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `rematricula`
--
ALTER TABLE `rematricula`
  MODIFY `id_rematricula` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sala`
--
ALTER TABLE `sala`
  MODIFY `id_sala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `serie`
--
ALTER TABLE `serie`
  MODIFY `id_serie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `sexo`
--
ALTER TABLE `sexo`
  MODIFY `id_sexo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `situacao_aluno_ano_letivo`
--
ALTER TABLE `situacao_aluno_ano_letivo`
  MODIFY `id_situacao_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `situacao_conta`
--
ALTER TABLE `situacao_conta`
  MODIFY `id_situacao_conta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `situacao_geral_aluno`
--
ALTER TABLE `situacao_geral_aluno`
  MODIFY `id_situacao_geral` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `situacao_periodo_letivo`
--
ALTER TABLE `situacao_periodo_letivo`
  MODIFY `id_situacao_periodo_letivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `situacao_rematricula`
--
ALTER TABLE `situacao_rematricula`
  MODIFY `id_situacao_rematricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `telefone`
--
ALTER TABLE `telefone`
  MODIFY `id_telefone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tipo_sanguineo`
--
ALTER TABLE `tipo_sanguineo`
  MODIFY `id_tipo_sanguineo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `id_turma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `turma_disciplina`
--
ALTER TABLE `turma_disciplina`
  MODIFY `id_turma_disciplina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `turno`
--
ALTER TABLE `turno`
  MODIFY `id_turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `unidade`
--
ALTER TABLE `unidade`
  MODIFY `id_unidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `fk_id_administrador_hierarquia_funcao` FOREIGN KEY (`fk_id_administrador_hierarquia_funcao`) REFERENCES `hierarquia_funcao` (`id_hierarquia_funcao`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_endereco_administrador` FOREIGN KEY (`fk_id_endereco_administrador`) REFERENCES `endereco` (`id_endereco`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_pcd_administrador` FOREIGN KEY (`fk_id_pcd_administrador`) REFERENCES `pcd` (`id_pcd`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_sexo_administrador` FOREIGN KEY (`fk_id_sexo_administrador`) REFERENCES `sexo` (`id_sexo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_situacao_conta_administrador` FOREIGN KEY (`fk_id_situacao_conta_administrador`) REFERENCES `situacao_conta` (`id_situacao_conta`),
  ADD CONSTRAINT `fk_id_telefone_administrador` FOREIGN KEY (`fk_id_telefone_administrador`) REFERENCES `telefone` (`id_telefone`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_tipo_sanguineo_administrador` FOREIGN KEY (`fk_id_tipo_sanguineo_administrador`) REFERENCES `tipo_sanguineo` (`id_tipo_sanguineo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `fk_id_aluno_hierarquia_funcao` FOREIGN KEY (`fk_id_aluno_hierarquia_funcao`) REFERENCES `hierarquia_funcao` (`id_hierarquia_funcao`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_endereco_aluno` FOREIGN KEY (`fk_id_endereco_aluno`) REFERENCES `endereco` (`id_endereco`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_pcd_aluno` FOREIGN KEY (`fk_id_aluno_pcd`) REFERENCES `pcd` (`id_pcd`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_sexo_aluno` FOREIGN KEY (`fk_id_sexo_aluno`) REFERENCES `sexo` (`id_sexo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_situacao_geral_aluno` FOREIGN KEY (`fk_id_situacao_geral_aluno`) REFERENCES `situacao_geral_aluno` (`id_situacao_geral`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_telefone_aluno` FOREIGN KEY (`fk_id_telefone_aluno`) REFERENCES `telefone` (`id_telefone`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_tipo_sanguineo_aluno` FOREIGN KEY (`fk_id_tipo_sanguineo_aluno`) REFERENCES `tipo_sanguineo` (`id_tipo_sanguineo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD CONSTRAINT `fk_id_turma_disciplina_avaliacao` FOREIGN KEY (`fk_id_turma_disciplina_avaliacao`) REFERENCES `turma_disciplina` (`id_turma_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_unidade_avaliacao` FOREIGN KEY (`fk_id_unidade_avaliacao`) REFERENCES `unidade` (`id_unidade`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `aviso_turma`
--
ALTER TABLE `aviso_turma`
  ADD CONSTRAINT `aviso_turma_ibfk_1` FOREIGN KEY (`fk_id_turma_disciplina`) REFERENCES `turma_disciplina` (`id_turma_disciplina`);

--
-- Limitadores para a tabela `configuracao`
--
ALTER TABLE `configuracao`
  ADD CONSTRAINT `fk_id_controle_unidade` FOREIGN KEY (`fk_id_controle_unidade`) REFERENCES `controle_unidade` (`id_controle_unidade`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_rematricula` FOREIGN KEY (`fk_id_controle_rematricula`) REFERENCES `controle_rematricula` (`id_situacao_abertura_rematricula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `modalidade` FOREIGN KEY (`fk_id_modalidade_curso`) REFERENCES `modalidade_curso` (`id_modalidade_curso`);

--
-- Limitadores para a tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `fk_id_modalidade_disciplina` FOREIGN KEY (`fk_id_modalidade_disciplina`) REFERENCES `modalidade_disciplina` (`id_modalidade_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `falta_aluno`
--
ALTER TABLE `falta_aluno`
  ADD CONSTRAINT `id_matricula_falta` FOREIGN KEY (`fk_id_matricula_falta`) REFERENCES `matricula` (`id_matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_turma_disciplina_falta` FOREIGN KEY (`fk_id_turma_disciplina_falta`) REFERENCES `turma_disciplina` (`id_turma_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_unidade_falta` FOREIGN KEY (`fk_id_unidade_falta`) REFERENCES `unidade` (`id_unidade`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `fk_id_aluno` FOREIGN KEY (`fk_id_aluno`) REFERENCES `aluno` (`id_aluno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_periodo_letivo_matricula` FOREIGN KEY (`fk_id_periodo_letivo_matricula`) REFERENCES `periodo_letivo` (`id_ano_letivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_situacao_aluno` FOREIGN KEY (`fk_id_situacao_aluno`) REFERENCES `situacao_aluno_ano_letivo` (`id_situacao_aluno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_turma_matricula` FOREIGN KEY (`fk_id_turma_matricula`) REFERENCES `turma` (`id_turma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `media_disciplina`
--
ALTER TABLE `media_disciplina`
  ADD CONSTRAINT `id_legenda` FOREIGN KEY (`fk_id_legenda`) REFERENCES `legenda` (`id_legenda`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_matricula_media` FOREIGN KEY (`fk_id_matricula_media`) REFERENCES `matricula` (`id_matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_turma_disciplina` FOREIGN KEY (`fk_id_turma_disciplina`) REFERENCES `turma_disciplina` (`id_turma_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `nota_avaliacao`
--
ALTER TABLE `nota_avaliacao`
  ADD CONSTRAINT `id_avaliacao` FOREIGN KEY (`fk_id_avaliacao`) REFERENCES `avaliacoes` (`id_avaliacao`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_matricula_aluno` FOREIGN KEY (`fk_id_matricula_aluno`) REFERENCES `matricula` (`id_matricula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `observacao_aluno`
--
ALTER TABLE `observacao_aluno`
  ADD CONSTRAINT `id_matricula_observacao` FOREIGN KEY (`fk_id_matricula_observacao`) REFERENCES `matricula` (`id_matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_turma_disciplina_observacao` FOREIGN KEY (`fk_id_turma_disciplina_observacao`) REFERENCES `turma_disciplina` (`id_turma_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_unidade` FOREIGN KEY (`fk_id_unidade`) REFERENCES `unidade` (`id_unidade`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `periodo_letivo`
--
ALTER TABLE `periodo_letivo`
  ADD CONSTRAINT `fk_id_ano_letivo` FOREIGN KEY (`fk_id_ano_letivo`) REFERENCES `periodo_disponivel` (`id_periodo_disponivel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_situacao_periodo_letivo` FOREIGN KEY (`fk_id_situacao_periodo_letivo`) REFERENCES `situacao_periodo_letivo` (`id_situacao_periodo_letivo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `fk_id_endereco_professor` FOREIGN KEY (`fk_id_endereco_professor`) REFERENCES `endereco` (`id_endereco`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_pcd_professor` FOREIGN KEY (`fk_id_pcd_professor`) REFERENCES `pcd` (`id_pcd`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_professor_hierarquia_funcao` FOREIGN KEY (`fk_id_professor_hierarquia_funcao`) REFERENCES `hierarquia_funcao` (`id_hierarquia_funcao`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_sexo_professor` FOREIGN KEY (`fk_id_sexo_professor`) REFERENCES `sexo` (`id_sexo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_situacao_conta_professor` FOREIGN KEY (`fk_id_situacao_conta_professor`) REFERENCES `situacao_conta` (`id_situacao_conta`),
  ADD CONSTRAINT `fk_id_telefone_professor` FOREIGN KEY (`fk_id_telefone_professor`) REFERENCES `telefone` (`id_telefone`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_tipo_sanguineo_professor` FOREIGN KEY (`fk_id_tipo_sanguineo_professor`) REFERENCES `tipo_sanguineo` (`id_tipo_sanguineo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `rematricula`
--
ALTER TABLE `rematricula`
  ADD CONSTRAINT `fk_id_rematricula_aluno` FOREIGN KEY (`fk_id_rematricula_aluno`) REFERENCES `matricula` (`id_matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_situacao_rematricula` FOREIGN KEY (`fk_id_situacao_rematricula`) REFERENCES `situacao_rematricula` (`id_situacao_rematricula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `sala`
--
ALTER TABLE `sala`
  ADD CONSTRAINT `fk_id_numero_sala` FOREIGN KEY (`fk_id_numero_sala`) REFERENCES `numero_sala_aula` (`id_numero_sala_aula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `fk_id_cedula` FOREIGN KEY (`fk_id_cedula`) REFERENCES `cedula_turma` (`id_cedula_turma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_sala` FOREIGN KEY (`fk_id_sala`) REFERENCES `sala` (`id_sala`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_ano_letivo` FOREIGN KEY (`fk_id_periodo_letivo`) REFERENCES `periodo_letivo` (`id_ano_letivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_curso` FOREIGN KEY (`fk_id_curso`) REFERENCES `curso` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_serie` FOREIGN KEY (`fk_id_serie`) REFERENCES `serie` (`id_serie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_turno` FOREIGN KEY (`fk_id_turno`) REFERENCES `turno` (`id_turno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `turma_disciplina`
--
ALTER TABLE `turma_disciplina`
  ADD CONSTRAINT `id_disciplina` FOREIGN KEY (`fk_id_disciplina`) REFERENCES `disciplina` (`id_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_professor` FOREIGN KEY (`fk_id_professor`) REFERENCES `professor` (`id_professor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_turma` FOREIGN KEY (`fk_id_turma`) REFERENCES `turma` (`id_turma`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
