use universidade_u;

select * from funcionario where fk_idmatricula_supervisor = 110;

alter table funcionario add column fk_idmatricula_supervisor int;

alter table funcionario add constraint fk_funcionario_supervisor
foreign key(fk_idmatricula_supervisor) references funcionario(idmatricula);

desc funcionario;

update funcionario set fk_idmatricula_supervisor = 110 where idmatricula = 100;

insert into funcionario(
    nome, funcao
)values(
    'Pedro', 'Gerente de TI'
);

update funcionario set fk_idmatricula_supervisor = 110 where idmatricula in (221, 353);
