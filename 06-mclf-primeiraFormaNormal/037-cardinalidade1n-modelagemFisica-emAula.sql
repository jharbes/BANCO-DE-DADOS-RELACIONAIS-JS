use universidade_u;

select * from aluno;
select * from telefone;

desc aluno;
desc telefone;

select idaluno,nome from aluno;
select * from telefone;

-- maneira de criar a tabela ja com a foreign key durante a criacao
-- nao eh mto comum criar a foreign key assim pois nesse caso nao podemos
-- escolher o nome da constraint
CREATE TABLE Telefone (
    idTelefone int auto_increment PRIMARY KEY,
    numero varchar(20),
    tipo char(3),
    fk_idAluno int,
    foreign key (fk_idAluno) references aluno (idAluno)
);

-- maneira usual de adicionar a foreign key eh assim pois
-- podemos escolher o nome da constraint, apos a criacao da tabela
ALTER TABLE Telefone ADD CONSTRAINT fk_aluno_telefone
    FOREIGN KEY (fk_idAluno)
    REFERENCES Aluno (idAluno);