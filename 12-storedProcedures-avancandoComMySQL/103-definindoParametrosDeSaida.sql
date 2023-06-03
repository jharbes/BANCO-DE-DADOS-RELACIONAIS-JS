use universidade_u;

/*
     o total de alunos e o total de professores
*/
delimiter $$
create procedure proc_resumo(out total_professores int, out total_alunos int)
comment 'Resumo do total de alunos e professores'
begin

	/* total de professores */
    select count(*) into total_professores from professor;

    /* total de alunos */
    select count(*) into total_alunos from aluno;


end
$$
delimiter ;

show procedure status where Db = 'universidade_u';

call proc_resumo(@x, @y);

select @x as total_professores, @y as total_alunos;
