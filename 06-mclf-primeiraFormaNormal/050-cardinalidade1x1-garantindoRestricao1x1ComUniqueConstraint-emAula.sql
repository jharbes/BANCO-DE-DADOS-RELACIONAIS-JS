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

/*

Para garantir a cardinalidade de 1x1 precisamos utilizar a
constraint unique em fk_idaluno da tabela endereco fazendo
com que um aluno fique impossiblitado de ter dois enderecos

*/

alter table endereco add constraint uc_endereco_fkidAluno unique(fk_idaluno);

insert into endereco(logradouro,numero,complemento,bairro,cidade,estado,fk_idAluno)
values
('Avenida Paulista',500,null,'Bela Vista','São Paulo','SP',6);