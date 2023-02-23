use universidade_u;

-- criando a tabela projeto funcionario
create table projeto_funcionario(
	codigoProjeto int,
    matriculaFuncionario int,
    nomeProjeto varchar(100) not null,
    nomeFuncionario varchar(50) not null,
    funcaoFuncionario varchar(50) not null,
    telefoneFuncionario varchar(20),
    dataCriacaoProjeto datetime default current_timestamp,
    horasEstimadas int not null,
    horasRealizadas int
);

select * from projeto_funcionario;
desc projeto_funcionario;

-- adicionando a chave primaria composta
alter table projeto_funcionario add constraint pk_projeto_funcionario
primary key(codigoProjeto,matriculaFuncionario);

-- adicionando elementos a tabela
insert into projeto_funcionario(
	codigoProjeto,matriculaFuncionario,nomeProjeto,nomeFuncionario,funcaoFuncionario,
    horasEstimadas
) values (
	1,100,'Matricula Online','Bianca','Analista de Atendimento',200
);

insert into projeto_funcionario(
	codigoProjeto,matriculaFuncionario,nomeProjeto,nomeFuncionario,funcaoFuncionario,
    horasEstimadas
) values (
	1,110,'Matricula Online','Fátima','Gerente de Atendimento',100
);

insert into projeto_funcionario(
	codigoProjeto,matriculaFuncionario,nomeProjeto,nomeFuncionario,funcaoFuncionario,
    horasEstimadas
) values (
	1,127,'Matricula Online','Miguel','Analista Programador Sênior',500
);

insert into projeto_funcionario(
	codigoProjeto,matriculaFuncionario,nomeProjeto,nomeFuncionario,funcaoFuncionario,
    horasEstimadas
) values (
	2,221,'Economia de Papel','Laura','Analista Qualidade',200
);

insert into projeto_funcionario(
	codigoProjeto,matriculaFuncionario,nomeProjeto,nomeFuncionario,funcaoFuncionario,
    horasEstimadas
) values (
	3,115,'Notas Online','Carlos','Analista Administrativo',150
);