use universidade_u;

create table projeto(
	idcodigo int auto_increment,
    data_criacao datetime default current_timestamp,
    nome varchar(100) not null,
    constraint pk_projeto primary key(idcodigo)
);

desc projeto;

create table funcionario(
    idmatricula int auto_increment,
    nome varchar(50) not null,
    funcao varchar(50) not null,
    telefone varchar(20),
    constraint pk_funcionario primary key(idmatricula)
);

desc funcionario;
