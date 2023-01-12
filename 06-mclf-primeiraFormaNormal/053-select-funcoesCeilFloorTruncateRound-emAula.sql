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


select * from aluno;
select nome,valorPagoCurso from aluno where idAluno in 	(1,4,5);

select 
	nome,
    ceil(valorPagoCurso) as valor 
from
	aluno
where 
	idAluno in 	(1,4,5);
    

select 
	round(avg(valorPagoCurso),2) as valorPagoCurso -- com apenas duas casas decimais
from
	aluno
where 
	idAluno in 	(1,4,5);