use universidade_u;

select * from aluno;
select * from telefone;
select * from endereco;
select * from curso;
select * from aluno_curso;

desc aluno;
desc telefone;
desc endereco;
desc curso;
desc aluno_curso;

-- criando a tabela aluno_curso
CREATE TABLE Aluno_Curso (
    id_AlunoCurso int auto_increment PRIMARY KEY,
    fk_idAluno int,
    fk_idCurso int
);

ALTER TABLE Aluno_Curso ADD CONSTRAINT fk_aluno_curso
    FOREIGN KEY (fk_idAluno)
    REFERENCES Aluno (idAluno);
 
ALTER TABLE Aluno_Curso ADD CONSTRAINT fk_curso_aluno
    FOREIGN KEY (fk_idCurso)
    REFERENCES Curso (idCurso);