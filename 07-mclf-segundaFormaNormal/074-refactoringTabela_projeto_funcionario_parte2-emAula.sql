use universidade_u;

desc funcionario;
desc projeto;
desc projeto_funcionario;
desc projeto_funcionario2;

select * from projeto_funcionario;

-- criaremos a table projeto_funcionario com outro nome e depois
-- renomearemos ela após apagar a tabela original, assim poderemos resgatar
-- dados da tabela original
create table projeto_funcionario2(
	fk_idcodigo int,
    fk_idmatricula int,
    horasEstimadas int not null,
    horasRealizadas int,
    constraint pk_projeto_funcionario primary key(fk_idcodigo,fk_idmatricula)
);

-- adicionando as foreign keys
alter table projeto_funcionario2 add constraint
foreign key(fk_idcodigo) references projeto(idCodigo);

alter table projeto_funcionario2 add constraint
foreign key(fk_idmatricula) references funcionario(idMatricula);