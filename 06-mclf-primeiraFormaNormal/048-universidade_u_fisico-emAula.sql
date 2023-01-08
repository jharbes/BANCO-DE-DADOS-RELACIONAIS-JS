/* 048-universidade_u_logico-emAula: */

CREATE TABLE Aluno (
    idAluno int auto_increment PRIMARY KEY,
    nome varchar(25),
    idade int,
    email varchar(150) unique,
    cpf varchar(14) unique,
    sexo char(1),
    dataInscricaoCurso date,
    valorPagoCurso float(10,2),
    ativoSn int,
    UNIQUE (email, cpf)
);

CREATE TABLE Telefone (
    idTelefone int auto_increment PRIMARY KEY,
    numero varchar(20) not null,
    tipo enum('res','com','cel') not null,
    fk_idAluno int not null
);

CREATE TABLE Endereco (
    idEndereco int PRIMARY KEY,
    logradouro varchar(100),
    numero varchar(10),
    complemento varchar(20),
    bairro varchar(100),
    cidade varchar(50),
    estado char(2),
    fk_idAluno int
);

CREATE TABLE Curso (
    idCurso int auto_increment PRIMARY KEY,
    descricao varchar(50)
);

CREATE TABLE Aluno_Curso (
    id_AlunoCurso int auto_increment PRIMARY KEY,
    fk_idAluno int,
    fk_idCurso int
);
 
ALTER TABLE Telefone ADD CONSTRAINT fk_aluno_telefone
    FOREIGN KEY (fk_idAluno)
    REFERENCES Aluno (idAluno);
 
ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_2
    FOREIGN KEY (fk_idAluno)
    REFERENCES Aluno (idAluno);
 
ALTER TABLE Aluno_Curso ADD CONSTRAINT fk_aluno_curso
    FOREIGN KEY (fk_idAluno)
    REFERENCES Aluno (idAluno);
 
ALTER TABLE Aluno_Curso ADD CONSTRAINT fk_curso_aluno
    FOREIGN KEY (fk_idCurso)
    REFERENCES Curso (idCurso);