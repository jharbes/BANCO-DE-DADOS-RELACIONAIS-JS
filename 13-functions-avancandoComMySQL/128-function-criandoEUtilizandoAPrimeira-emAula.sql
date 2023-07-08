use universidade_u;

-- a funcao devera receber uma data no formato yyyy-mm-dd e retornar uma
-- string no formato dd/mm/yyyy

-- as funcoes so possuem parametros de entrada, portanto nao precisamos utilizar
-- os prefixos in ou out

-- a funcao é considerada deterministica quando ela nao afeta dados do
-- banco de dados, portanto é considerada segura
delimiter $$
create function func_data_ptbr(p_data datetime)
returns char(10)
deterministic
comment 'A funcao serve para retornar datas no formato dd/mm/yyyy'
begin

	return date_format(p_data,'%d/%m/%Y');

end
$$
delimiter ;

select nome,data_nascimento from aluno;
select nome,date_format(data_nascimento, '%d/%m/%Y') as data_nascimento from aluno;
select nome,func_data_ptbr(data_nascimento) as data_nascimento from aluno;