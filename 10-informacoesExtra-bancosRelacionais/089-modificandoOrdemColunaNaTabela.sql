use universidade_u;

select * from aluno;

desc aluno;

show create table aluno;
CREATE TABLE `aluno` (
  `sexo` char(1) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `ativo_sn` int(11) DEFAULT '1',
  `nome` varchar(25) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `idaluno` int(11) NOT NULL AUTO_INCREMENT,
  `data_nascimento` date DEFAULT NULL,
  PRIMARY KEY (`idaluno`),
  UNIQUE KEY `uc_aluno_cpf` (`cpf`),
  UNIQUE KEY `uc_aluno_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

alter table aluno modify `idaluno` int(11) NOT NULL AUTO_INCREMENT first;

alter table aluno modify   `ativo_sn` int(11) DEFAULT '1' after data_nascimento;
