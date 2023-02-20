use universidade_u;

select * from aluno;

select idAluno,nome,dataNascimento from aluno;

select 
	idAluno,
    nome,
    dataNascimento,
    curdate() as dataAtual,
    timestampdiff(year,dataNascimento,curdate()) as idade
from
	aluno;

select 
	idAluno,
    nome,
    dataNascimento,
    extract(month from dataNascimento) as dataNascimentoMes,
    extract(day from dataNascimento) as dataNascimentoDia,
    curdate() as dataAtual,
    extract(month from curdate()) as dataAtualMes,
    extract(day from curdate()) as dataAtualDia,
    timestampdiff(year,dataNascimento,curdate()) as idade
from
	aluno;

-- query para encontrar o aniversariante do dia na tabela
select 
	idAluno,
    nome,
    dataNascimento,
    extract(month from dataNascimento) as dataNascimentoMes,
    extract(day from dataNascimento) as dataNascimentoDia,
    curdate() as dataAtual,
    extract(month from curdate()) as dataAtualMes,
    extract(day from curdate()) as dataAtualDia,
    timestampdiff(year,dataNascimento,curdate()) as idade
from
	aluno
where
	extract(month from dataNascimento)=extract(month from curdate())
    and extract(day from dataNascimento)=extract(day from curdate());
    
-- mudar a data de nascimento para a data atual
update aluno set dataNascimento='1982-02-20' where idAluno=3;