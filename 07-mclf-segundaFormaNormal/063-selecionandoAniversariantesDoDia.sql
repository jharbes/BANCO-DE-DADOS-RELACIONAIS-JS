use universidade_u;

select * from aluno;

select
    idaluno,
    nome,
    data_nascimento,
    extract(month from data_nascimento) as data_nascimento_mes,
	extract(day from data_nascimento) as data_nascimento_dia,
    
    curdate() as data_atual,
	extract(month from data_nascimento) as data_atual_mes,
	extract(day from data_nascimento) as data_atual_dia,
    timestampdiff(year, data_nascimento, curdate()) as idade
from
    aluno
where
    extract(month from data_nascimento) = extract(month from curdate())
    and extract(day from data_nascimento) = extract(day from curdate());
    
update aluno set data_nascimento = '1982-01-18' where idaluno = 3;
