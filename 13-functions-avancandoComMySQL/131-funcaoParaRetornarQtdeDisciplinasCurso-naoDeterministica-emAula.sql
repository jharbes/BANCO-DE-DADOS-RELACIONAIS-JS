use universidade_u;

-- para criar funcoes nao deterministicas precisamos efetuar o seguinte comando abaixo,
-- assim sinalizamos ao banco de dados de que a operação é confiavel
set global log_bin_trust_function_creators=1;

-- após a criacao da funcao setamos o valor de volta ao original:
set global log_bin_trust_function_creators=0;

delimiter $$
create function func_qtde_disciplinas(p_idcurso int)
returns int
comment 'function serve para retornar a quantidade de disciplinas com base em um curso'
begin
	
    -- logica para recuperar registros de uma tabela
    declare qtde_disciplinas int default 0;
	set qtde_disciplinas=(select count(*) as qtde_disciplinas from disciplina where fk_idcurso=p_idcurso);
	return qtde_disciplinas;
    
end
$$
delimiter ;

select func_qtde_disciplinas(3) as qtde_disciplinas;

show function status where Db='universidade_u';

drop function func_qtde_disciplinas;

select * from disciplina;
select fk_idcurso as qtde_disciplinas from disciplina group by fk_idcurso;
select count(*) as qtde_disciplinas from disciplina where fk_idcurso=2;

select
	fk_idcurso,
    (select descricao from curso where idcurso=fk_idcurso) as descricao,
    count(*) as qtde_disciplinas 
from disciplina group by fk_idcurso;

select * from curso;

select
	idcurso,
    descricao,
    func_qtde_disciplinas(idcurso) as qtde_disciplinas
from curso;