-- selecao projecao, juncao e apelidos
-- ambiguidade

select /* projecao */
	*
from
	curso left join disciplina on (curso.idcurso = disciplina.fk_idcurso)
    left join professor on (disciplina.fk_idprofessor=professor.idprofessor)
where /* selecao de um subconjunto de registros */
	idcurso=1;
    

-- nesse caso existe ambiguidade (existe a coluna descricao tanto na tabela
-- curso quanto na tabela disciplina) precisamos sinalizar isso no select
-- para desfazer a ambiguidade e retornarmos a consulta correta
-- (o SGBD bloqueia a consulta caso haja ambiguidade)
select /* projecao */
	idcurso,
    curso.descricao as curso,
    iddisciplina,
    disciplina.descricao as disciplina,
    idprofessor,
    nome as professor,
    now() as data_atual
from
	curso left join disciplina on (curso.idcurso = disciplina.fk_idcurso)
    left join professor on (disciplina.fk_idprofessor=professor.idprofessor)
where /* selecao de um subconjunto de registros */
	idcurso=1;
    

-- utilizando apelido para o nome das tabelas
-- quando usar apelido sera necessario que seja usado tambem em todo o resto da consulta    
select /* projecao */
	idcurso,
    c.descricao as curso,
    iddisciplina,
    d.descricao as disciplina,
    idprofessor,
    nome as professor,
    now() as data_atual
from
	curso as c left join disciplina as d on (c.idcurso = d.fk_idcurso)
    left join professor as p on (d.fk_idprofessor=p.idprofessor)
where /* selecao de um subconjunto de registros */
	idcurso=1;
    
    
-- ponteirando a consulta inteira (considerado boa pratica)
select /* projecao */
	c.idcurso,
    c.descricao as curso,
    d.iddisciplina,
    d.descricao as disciplina,
    p.idprofessor,
    p.nome as professor,
    now() as data_atual
from
	curso as c left join disciplina as d on (c.idcurso = d.fk_idcurso)
    left join professor as p on (d.fk_idprofessor=p.idprofessor);