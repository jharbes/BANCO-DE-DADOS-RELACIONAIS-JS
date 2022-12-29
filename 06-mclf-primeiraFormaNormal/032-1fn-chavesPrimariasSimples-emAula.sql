use universidade_u;

select * from aluno;

update aluno set cpf='111.111.111-11' where nome='João';
update aluno set cpf='222.111.111-11' where nome='Fernanda';
update aluno set cpf='333.111.111-11' where nome='José';
update aluno set cpf='444.111.111-11' where nome='Maria';
update aluno set cpf='555.111.111-11' where nome='Marcelo';

update aluno set nome='José' where cpf='111.111.111-11';

select * from aluno where cpf='333.111.111-11';

desc aluno;

-- vamos setar a coluna cpf como primary key
alter table aluno modify cpf varchar(14) primary key;

-- para remover chaves primarias precisamos dropar a coluna
-- pois a constraint sempre permanecera
alter table aluno drop cpf;
alter table aluno add column cpf varchar(14);

-- agora vamos adicionar a chave primaria artificial
-- idAluno conforme mencionado na aula
alter table aluno add idAluno int primary key auto_increment;