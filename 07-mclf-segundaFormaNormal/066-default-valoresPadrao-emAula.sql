use universidade_u;

select * from aluno; 

-- adicionando valor default para a coluna ativoSn em aluno
alter table aluno modify column ativoSn int default 1 not null;

-- insert sem o ativoSn mostrando que recebera o valor 1 como default
insert into aluno(sexo,email,nome,cpf,dataNascimento)
values ('M','jorge@teste.com.br','Jorge','444.111.111-15','1989-01-06');

-- insert com o ativoSn mostrando que pode receber outros valores
insert into aluno(sexo,email,ativoSn,nome,cpf,dataNascimento)
values ('M','jamilton@teste.com.br',0,'Jamilton','444.111.111-25','1987-07-07');

select * from aluno_curso;

-- vamos colocar a data inscricao de curso na tabela aluno_curso com o default
-- como curdate() (data atual), no entanto nao podemos utilizar a sintaxe curdate()
-- porque o SGBD entenderia como um comando, entao utilizaremos o
-- current_timestamp que ele entendera como uma variavel, como o
-- current_timestamp tambem tras as horas aproveitaremos para alterar o atributo
-- dataInscricaoCurso para datetime (data com hora)
alter table aluno_curso modify column dataInscricaoCurso datetime default current_timestamp;

-- incluindo o aluno sem a data de inscricao do curso
insert into aluno_curso(fk_idaluno,fk_idcurso,valorPagoCurso)
values (7,3,720);