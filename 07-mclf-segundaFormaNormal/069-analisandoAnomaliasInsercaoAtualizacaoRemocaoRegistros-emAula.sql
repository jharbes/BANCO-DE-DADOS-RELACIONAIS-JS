use universidade_u;

select * from projeto_funcionario;

-- anomalias de insercao (redundancia de dados, dados inconsistentes)
insert into projeto_funcionario(
	codigoProjeto,matriculaFuncionario,nomeProjeto,nomeFuncionario,
    funcaoFuncionario,horasEstimadas
) values (
	2,353,'Economia de Papel','João','Analista Financeiro',25
);

-- anomalias de exclusao (Perder registros importantes)
delete from projeto_funcionario where codigoProjeto=3 and matriculaFuncionario=115;

-- anomalias na atualizacao de registros (informacoes inconsistentes)
update projeto_funcionario set nomeProjeto='Inscrição Online'
where codigoProjeto=1 and matriculaFuncionario=110;