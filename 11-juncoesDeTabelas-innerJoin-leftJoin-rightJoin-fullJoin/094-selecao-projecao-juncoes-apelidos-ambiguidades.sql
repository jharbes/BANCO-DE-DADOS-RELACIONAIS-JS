use universidade_u;

 sele��o, proje��o, jun��o e apelidos 
 ambiguidade 

select  proje��o 
    c.idcurso, 
    c.descricao as curso, 
    d.iddisciplina, 
    d.descricao as disciplina, 
    p.idprofessor, 
    p.nome as professor,
    now() as data_atual
from
    curso as c left join disciplina as d on (c.idcurso = d.fk_idcurso)
    left join professor as p on (d.fk_idprofessor = p.idprofessor)
where  sele��o de um subconjunto 
    idcurso = 1;
