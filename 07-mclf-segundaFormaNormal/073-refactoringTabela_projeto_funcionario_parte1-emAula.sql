use universidade_u;

select * from projeto_funcionario;

create table projeto(
	idCodigo int auto_increment,
    dataCriacao datetime default current_timestamp,
    nome varchar(100) not null,
    constraint pk_projeto primary key(idCodigo)
);

desc projeto;

create table funcionario(
	idMatricula int auto_increment,
    nome varchar(50) not null,
    funcao varchar(50) not null,
    telefone varchar(20),
    constraint pk_funcionario primary key(idMatricula)
);

desc funcionario;