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

-- as funcoes aqui demonstradas nao obrigatoriamente devem ser utilizadas
-- contabilizando TODOS os registros da tabela, esses podem também ser
-- especificados de acordo com a necessidade

-- utilizando a funcao count
-- ela permite contar o numero de registros de uma tabela
select * from aluno;
select count(*) from aluno;

-- usando distinct
-- usamos para fazer com que o count conte como apenas 1 
-- os registros repetidos
-- nesse caso os dois Josés serão considerados apenas 1
select count(distinct nome) from aluno;


-- usando a funcao max que retorna o maior valor da coluna(numerico)
select max(valorPagoCurso) from aluno;

-- usando a funcao min que eh o oposto da funcao max, retorna o valor
-- minimo (para um numerico)
select min(valorPagoCurso) from aluno;

-- funcao avg retorna a media da coluna, para valores numericos
select avg(valorPagoCurso) from aluno;

-- funcao sum faz o somatorio dos valores na coluna (numericos)
select sum(valorPagoCurso) from aluno;

-- utilizando diversas funcoes juntas
select
	max(valorPagoCurso),
    min(valorPagoCurso),
    avg(valorPagoCurso),
    sum(valorPagoCurso)
from
	aluno;
    
select count(*) from aluno where sexo='F';
select max(valorPagoCurso) from aluno where idade>40;
select max(valorPagoCurso) from aluno where idade<40;

select min(valorPagoCurso) from aluno where ativoSn!=0; -- nao conta os inativos

select avg(valorPagoCurso) from aluno where nome='José';
select sum(valorPagoCurso) from aluno where nome='José';

select
	max(valorPagoCurso),
    min(valorPagoCurso),
    avg(valorPagoCurso),
    sum(valorPagoCurso)
from
	aluno
where
	ativoSn=1;