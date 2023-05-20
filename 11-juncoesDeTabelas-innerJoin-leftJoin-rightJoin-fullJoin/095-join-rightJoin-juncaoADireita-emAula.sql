use universidade_u;

select * from curso;
select * from disciplina;

select
	*
from
	curso as c left join disciplina as d on (c.idcurso=d.fk_idcurso);
    
-- todos os itens da tabela a direita (disciplina) estarao listados, tendo ou nao 
-- relacionamento com a tabela a esquerda (curso)
select
	*
from
	curso as c right join disciplina as d on (c.idcurso=d.fk_idcurso);
    

-- observe que ao invertermos as tabelas disciplina e curso e usarmos o left join
-- teremos o mesmo resultado que curso e disciplina com right join, mudando apenas
-- o posicionamento (no caso de nao escolhermos as posicoes das colunas) 
select
	*
from
	 disciplina as d right join curso as c on (c.idcurso=d.fk_idcurso);
     
     
select
	*
from
	telefone as t right join aluno as a on (t.fk_idaluno = a.idaluno);