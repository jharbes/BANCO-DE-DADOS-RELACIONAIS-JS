use universidade_u;

-- timestamp (marca temporal) início à partir da meia-noite do dia 01/01/1970.

select
	timestampdiff(YEAR,'1989-01-06', curdate()) as idade;
    
select 
	data_nascimento, 
    curdate() as data_atual,
    timestampdiff(YEAR, data_nascimento, curdate()) as idade_dinamica
from 
	aluno;
    
alter table aluno drop idade;

select * from aluno;
