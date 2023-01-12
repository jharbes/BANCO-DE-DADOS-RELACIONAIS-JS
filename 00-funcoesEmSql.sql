/*

FUNCOES EM SQL

-- as funcoes aqui demonstradas nao obrigatoriamente devem ser utilizadas
-- contabilizando TODOS os registros da tabela, esses podem também ser
-- especificados de acordo com a necessidade

*/

-- count() - ela permite contar o numero de registros de uma tabela
select * from aluno;
select count(*) from aluno;

-- usando distinct
-- usamos para fazer com que o count conte como apenas 1 
-- os registros repetidos
-- nesse caso os dois Josés serão considerados apenas 1
select count(distinct nome) from aluno;


-- max() - usando a funcao max que retorna o maior valor da coluna(numerico)
select max(valorPagoCurso) from aluno;


-- min() - usando a funcao min que eh o oposto da funcao max, retorna o valor
-- minimo (para um numerico)
select min(valorPagoCurso) from aluno;


-- avg() -funcao avg retorna a media da coluna, para valores numericos
select avg(valorPagoCurso) from aluno;


-- sum() - funcao sum faz o somatorio dos valores na coluna (numericos)
select sum(valorPagoCurso) from aluno;


-- ceil() - retorna o menor valor inteiro maior ou igual com base no valor 
-- informado (retira a parte decimal pra cima) ex: 7.5=8
select 17.4;
select 17.4 as valor;
select ceil(17.4) as valor; -- resposta 18


-- floor() - retorna o menor valor inteiro menor ou igual com base no valor 
-- informado (retira a parte decimal) ex: 7.5=7
select floor(19.555) as valor; -- resposta 19


-- truncate() - retira partes decimais de acordo com o indicado
-- o 1 indica quantas casas decimais devem se manter
select truncate(22.757,1) as valor; -- resposta 22.7


-- round() - arredonda de acordo com o valor informado ex: 7.6=8
-- pode ser informado um parametro opcional apos a virgula informando
-- quantas casas decimais devem ser mantidas
-- valores <.5 decimal arredonda para baixo (mantem ultimo valor novo decimal)
-- valores >=.5 arredonda pra cima (aumenta em um ultimo valor decimal)
select round(55.752) as valor; -- resposta 56
select round(55.752,2) as valor; -- resposta 55.75
select round(55.744,1) as valor; -- resposta 55.75

