use universidade_u;

-- timestamp (marca temporal) inicio a partir da meia noite do
-- dia 01/01/1970 (marco zero de datas utilizado pelo SO UNIX)
-- utilizaremos ela para calculo preciso de idades
-- timestampdiff recebe tres argumentos , 
-- o primeiro a ordem de grandeza a ser utilizado no calculo
-- o segundo a data mais antiga a ser considerada, e no terceiro a data mais
-- recente, nesse caso a data atual (curdate())

select
	timestampdiff(YEAR,'1989-01-06',curdate()) as idade;
    
select * from aluno;

select
	dataNascimento,
    curdate() as data_atual,
    idade,
    timestampdiff(YEAR,dataNascimento,curdate()) as idade_dinamica
from
	aluno;

-- apagando a tabela idade(estatica)
alter table aluno drop idade;

select
	dataNascimento,
    curdate() as data_atual,
    timestampdiff(YEAR,dataNascimento,curdate()) as idade_dinamica
from
	aluno;