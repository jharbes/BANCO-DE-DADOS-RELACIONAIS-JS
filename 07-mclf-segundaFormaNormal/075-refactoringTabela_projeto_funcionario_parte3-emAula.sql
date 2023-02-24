use universidade_u;

select * from projeto_funcionario;
select * from funcionario;
select * from projeto;

-- aqui faremos a insercao na tabela funcionario utilizando os campos ja preenchidos
-- da tabela projeto_funcionario, o distinct evitara que sejam inseridos campos 
-- duplicados
insert into funcionario (idmatricula,nome,funcao)
select distinct
	matriculaFuncionario,
    nomeFuncionario,
    funcaoFuncionario
from projeto_funcionario;

-- aqui analisamos os projetos que estao cadastrados em duplicidade, notando
-- que possuem data de criacao diferentes e articulando para manter apenas a data
-- de criacao mais antiga
select * from projeto_funcionario where codigoProjeto=2 
order by dataCriacaoProjeto asc limit 1;

-- agora atualizaremos todos com a data encontrada
update projeto_funcionario set dataCriacaoProjeto='2023-02-23 13:54:39'
where codigoProjeto=2;

-- query para migracao dos registros de projeto
insert into projeto (idCodigo,nome,dataCriacao)
select distinct
	codigoProjeto,
    nomeProjeto,
    dataCriacaoProjeto
from projeto_funcionario;

-- recuperando os registros para a nova tabela projeto_funcionario2
select * from projeto_funcionario;
select * from projeto_funcionario2;

select codigoProjeto,matriculaFuncionario,horasEstimadas
from projeto_funcionario;

insert into projeto_funcionario2(fk_idcodigo,fk_idmatricula,horasEstimadas)
select codigoProjeto,matriculaFuncionario,horasEstimadas
from projeto_funcionario;

-- remover a tabela antiga
drop table projeto_funcionario;

-- renomear a tabela nova
rename table projeto_funcionario2 to projeto_funcionario;