use universidade_u;

select * from funcionario;

alter table funcionario add column fk_idmatricula_supervisor int;

alter table funcionario add constraint fk_funcionario_supervisor
foreign key(fk_idmatricula_supervisor) references funcionario(idMatricula);

desc funcionario;

update funcionario set fk_idmatricula_supervisor=110 where idMatricula=100;

insert into funcionario(
	nome,funcao
)values(
	'Pedro','Gerente de TI'
);

-- lanca como supervisor a idmatricula=354 para a matricula 127
update funcionario set fk_idmatricula_supervisor=354 where idMatricula=127;

-- lanca como supervisor a idmatricula=110 para as matriculas 221 e 353
update funcionario set fk_idmatricula_supervisor=110 where idMatricula in (221,353);

-- mostra os funcionarios cujo supervisor é o funcionario de idMatricula=110
select * from funcionario where fk_idmatricula_supervisor=110;