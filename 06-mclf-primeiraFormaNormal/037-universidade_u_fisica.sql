/* 038-universidade_u_logico-emAula: */

CREATE TABLE Aluno (
    idAluno int auto_increment PRIMARY KEY,
    nome varchar(25),
    idade int,
    email varchar(150),
    cpf varchar(14),
    sexo char(1),
    telefone varchar(20),
    dataInscricaoCurso date,
    valorPagoCurso float(10,2),
    ativoSn int,
    logradouro varchar(100),
    numero varchar(10),
    complemento varchar(20),
    bairro varchar(100),
    cidade varchar(50),
    estado char(2)
);

CREATE TABLE Telefone (
    idTelefone int auto_increment PRIMARY KEY,
    numero varchar(20),
    tipo char(3),
    fk_idAluno int
);
 
ALTER TABLE Telefone ADD CONSTRAINT fk_aluno_telefone
    FOREIGN KEY (fk_idAluno)
    REFERENCES Aluno (idAluno);