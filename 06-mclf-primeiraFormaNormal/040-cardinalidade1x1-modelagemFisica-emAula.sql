use universidade_u;

select * from aluno;
select * from telefone;
select * from endereco;

desc aluno;
desc telefone;
desc endereco;

-- criando a tabela endereco
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

-- setando a foreign key e constraint a tabela endereco
ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_2
    FOREIGN KEY (fk_idAluno)
    REFERENCES Aluno (idAluno);