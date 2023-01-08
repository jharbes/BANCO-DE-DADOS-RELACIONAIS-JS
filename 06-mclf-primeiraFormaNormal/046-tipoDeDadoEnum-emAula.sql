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

-- aqui vamos excluir a coluna tipo para implementa-la de melhor maneira
-- ela passara de char(3) para enum com as tres opcoes possiveis
alter table telefone drop column tipo;

-- adicionando a coluna tipo com o tipo enum
alter table telefone add tipo enum ('com','res','cel');

-- atualizando o tipo para o idtelefone=1
update telefone set tipo='res' where idtelefone=1;

-- agora vamos tentar um tipo enumerado inexistente para ver o erro
update telefone set tipo='rse' where idtelefone=2;

-- atualizando todos os tipos de todos os registros de telefones
update telefone set tipo='cel' where idtelefone=2;
update telefone set tipo='com' where idtelefone=3;
update telefone set tipo='cel' where idtelefone=4;
update telefone set tipo='com' where idtelefone=5;
update telefone set tipo='cel' where idtelefone=6;