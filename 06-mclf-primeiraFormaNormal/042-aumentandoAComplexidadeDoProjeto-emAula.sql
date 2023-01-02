use universidade_u;

select * from aluno;
select * from telefone;
select * from endereco;
select * from curso;

desc aluno;
desc telefone;
desc endereco;
desc curso;


CREATE TABLE Curso (
    idCurso int auto_increment PRIMARY KEY,
    descricao varchar(50)
);

insert into curso(descricao) values
('Curso Completo do Desenvolvedor NodeJS e MongoDB'),
('Desenvolvedor Multiplataforma Android'),
('Desenvolvimento Web com Angular'),
('Desenvolvimento Web Completo 2019');