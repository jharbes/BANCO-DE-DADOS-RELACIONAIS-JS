use universidade_u;

select * from aluno;
select * from telefone;
select * from endereco;
select * from curso;
select * from aluno_curso;

desc aluno; 
desc telefone;
desc endereco;
desc curso;
desc aluno_curso;

-- utilizando alias(apelido) para renomear as colunas colocando
-- nomes mais apropriados
select
	max(valorPagoCurso) as maior_valor,
    min(valorPagoCurso) as menor_valor,
    avg(valorPagoCurso) as media,
    sum(valorPagoCurso) as soma
from
	aluno
where
	ativoSn=1;

-- podemos também nao utilizar a palavra reservada as
-- que a utilizacao funcionara do mesmo jeito. no entanto
-- eh uma boa pratica a utilizacao para melhor indicacao e
-- ficar mais intuitivo
select
	max(valorPagoCurso) maior_valor,
    min(valorPagoCurso) menor_valor,
    avg(valorPagoCurso) media,
    sum(valorPagoCurso) soma
from
	aluno
where
	ativoSn=1;
    
-- podemos também alterar os nomes das colunas apenas para impressao
-- de maneira que seja mais conveniente o novo nome para formar
-- a tabela
select valorPagoCurso as valor_pago,nome from aluno;