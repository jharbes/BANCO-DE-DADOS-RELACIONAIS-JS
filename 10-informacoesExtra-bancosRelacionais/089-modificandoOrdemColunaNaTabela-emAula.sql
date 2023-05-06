use universidade_u;

select * from aluno;
desc aluno;

-- utilizamos o show create table aluno para copiar de maneira correta
-- todos os dados do atributo em questão
show create table aluno;
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
 ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- colocamos no primeiro lugar das colunas
alter table aluno modify `idAluno` int NOT NULL AUTO_INCREMENT first;

-- podemos tambem usar o comando after para escolher alguma coluna para onde a 
-- coluna escolhida ficará na posicao logo depois
alter table aluno modify `ativoSn` int NOT NULL DEFAULT '1' after dataNascimento;