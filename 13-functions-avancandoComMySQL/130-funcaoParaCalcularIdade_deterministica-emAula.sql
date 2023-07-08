use universidade_u;

delimiter $$
create function func_idade(p_data date)
returns int
deterministic
comment 'function serve para retornar a idade com base na data de nascimento'
begin

	return timestampdiff(YEAR,p_data,curdate());

end
$$
delimiter ;

show function status where Db='universidade_u';

select nome, data_nascimento from aluno;
select nome, func_data_ptbr(data_nascimento) as data_nascimento, func_idade(data_nascimento) as idade from aluno;