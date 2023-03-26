/* 077-universidade_u_logico-emAula: */

CREATE TABLE Aluno (
    idAluno int auto_increment PRIMARY KEY,
    nome varchar(25),
    dataNascimento date,
    email varchar(150) unique,
    cpf varchar(14) unique,
    sexo char(1),
    ativoSn int default 1 not null,
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
    fk_idAluno int,
    fk_idCurso int,
    dataInscricaoCurso datetime default current_timestamp,
    valorPagoCurso float(10,2),
    PRIMARY KEY (fk_idAluno, fk_idCurso, dataInscricaoCurso)
);

CREATE TABLE Gasto (
    idGasto int auto_increment PRIMARY KEY,
    ano int not null,
    tipo enum('previsto', 'realizado') not null,
    jan float(10,2),
    fev float(10,2),
    mar float(10,2),
    abr float(10,2),
    mai float(10,2),
    jun float(10,2),
    jul float(10,2),
    ago float(10,2),
    set float(10,2),
    out float(10,2),
    nov float(10,2),
    dez float(10,2)
);

CREATE TABLE Projeto_Funcionario (
    fk_idcodigo int,
    fk_idmatricula int,
    horasEstimadas int,
    horasRealizadas int,
    PRIMARY KEY (fk_idcodigo, fk_idmatricula)
);

CREATE TABLE Funcionario (
    idMatricula int auto_increment PRIMARY KEY,
    nome varchar(50),
    funcao varchar(50),
    telefone varchar(20)
);

CREATE TABLE Projeto (
    idCodigo int auto_increment PRIMARY KEY,
    nome varchar(100),
    dataCriacao datetime
);

CREATE TABLE Disciplina (
    idDisciplina int PRIMARY KEY,
    descricao varchar(50) not null,
    cargaHoraria int,
    codigoProfessor int,
    nomeProfessor varchar(50),
    emailProfessor varchar(100),
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
 
ALTER TABLE Projeto_Funcionario ADD CONSTRAINT fk_matricula_funcionario
    FOREIGN KEY (fk_idcodigo, fk_idmatricula???)
    REFERENCES Projeto (idCodigo, ???);
 
ALTER TABLE Projeto_Funcionario ADD CONSTRAINT fk_codigo_projeto
    FOREIGN KEY (???)
    REFERENCES Projeto (???);
 
ALTER TABLE Disciplina ADD CONSTRAINT fk_curso_aluno
    FOREIGN KEY (fk_idCurso)
    REFERENCES Curso (idCurso);