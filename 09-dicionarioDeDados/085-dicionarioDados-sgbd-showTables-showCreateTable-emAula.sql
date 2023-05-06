-- 1) descrever as tabelas do banco
-- 2) descrever os atributos das tabelas
-- 3) descrever os relacionamentos entre as tabelas

use universidade_u;

-- usado para ter acesso ao nome de todas as tabelas de dados do banco
show tables; 

-- mostra o comando de criacao da tabela em questao para que ela seja criada
-- exatamente como está
show create table aluno;

-- segue abaixo o comando gerado pelo comando show create table aluno
CREATE TABLE `aluno` (
   `nome` varchar(25) DEFAULT NULL,
   `email` varchar(150) DEFAULT NULL,
   `sexo` char(1) DEFAULT NULL,
   `ativoSn` int NOT NULL DEFAULT '1',
   `cpf` varchar(14) DEFAULT NULL,
   `idAluno` int NOT NULL AUTO_INCREMENT,
   `dataNascimento` date DEFAULT NULL,
   PRIMARY KEY (`idAluno`),
   UNIQUE KEY `uc_aluno_cpf` (`cpf`),
   UNIQUE KEY `uc_aluno_email` (`email`)
 ) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


show create table telefone;

CREATE TABLE `telefone` (
   `idTelefone` int NOT NULL AUTO_INCREMENT,
   `numero` varchar(20) NOT NULL,
   `fk_idaluno` int NOT NULL,
   `tipo` enum('res','com','cel') NOT NULL,
   PRIMARY KEY (`idTelefone`),
   KEY `fk_aluno_telefone` (`fk_idaluno`),
   CONSTRAINT `fk_aluno_telefone` FOREIGN KEY (`fk_idaluno`) REFERENCES `aluno` (`idAluno`)
 ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
 

