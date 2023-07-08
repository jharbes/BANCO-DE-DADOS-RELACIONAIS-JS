use universidade_u;

-- criando trigger de before insert

-- criando a tabela funcionario_log
create table funcionario_log(
	idfuncionario_log int auto_increment,
    fk_idmatricula int,
    data_log datetime default current_timestamp,
    tipo_log char(2) not null,
    funcao_antiga varchar(50),
    funcao_nova varchar(50),
    telefone_antigo varchar(20),
    telefone_novo varchar(20),
    constraint pk_idfuncionario_log primary key(idfuncionario_log),
    constraint fk_funcionario_funcionario_log foreign key(fk_idmatricula) references funcionario(idmatricula)
);

select * from funcionario;
select * from funcionario_log;

delimiter $$
create trigger tr_before_insert_funcionario
before insert on funcionario
for each row
begin
	
    -- tabela NEW
	insert into funcionario_log(fk_idmatricula,tipo_log,funcao_antiga,funcao_nova,telefone_antigo,telefone_novo)
    values (null,'BI',null,NEW.funcao,null,NEW.telefone);

end
$$
delimiter ;

select * from funcionario;
select * from funcionario_log;

insert into funcionario(nome,funcao,telefone)
values('Alana','Assistente Administrativo','11 98888-7777');