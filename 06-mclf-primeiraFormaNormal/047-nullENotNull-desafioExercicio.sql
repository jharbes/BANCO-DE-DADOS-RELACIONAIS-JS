-- DESAFIO/EXERCICIO
-- Aplicar not null em todas as colunas da tabela endereco,
-- exceto para complemento

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

alter table endereco modify column logradouro varchar(100) not null;
alter table endereco modify column numero varchar(10) not null;
alter table endereco modify column bairro varchar(100) not null;
alter table endereco modify column cidade varchar(50) not null;
alter table endereco modify column estado char(2) not null;
alter table endereco modify column fk_idAluno int not null;