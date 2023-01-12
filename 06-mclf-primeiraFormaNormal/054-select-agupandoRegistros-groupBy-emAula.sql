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


-- o group by vai agrupar todos os registros identicos naquilo que foi selecionado
-- e mostrar eles juntos, podendo ser utilizadas funcoes de agregacao para
-- manipular os dados dos registros iguais
select
	nome,count(*) as repeticao_nome_agrupamento
from
	aluno
group by
	nome;
    
    
select 
	ativoSn,count(*) repeticao_ativosn_grupamento
from
	aluno
group by
	ativoSn;
    
update aluno set nome='Rosa' where nome='Maria';

select ativoSn,nome,count(*) as repeticao_agrupamento
from aluno
group by ativoSn,nome;


-- aqui vamos agrupar os registros por tipo de ativosn (1 ou 0)
-- e para cada um desses tipos sera feito o calculo da media do valor
-- pago do curso, constando em cada linha o valor referente àquele
-- tipo de ativosn
select
	ativoSn,
    round(avg(valorPagoCurso),2) as mediaPorAgrupamento
    -- arredondamento com duas casas decimais
from
	aluno
group by
	ativoSn;
    

-- aqui agrupamos por sexo e com base nisso calculamos a
-- media de idade de cada genero separadamente
select
	sexo,floor(avg(idade)) as mediaIdadePorSexo
    -- usamos floor para retirar a parte decima (arredonda pra baixo)
from
	aluno
group by
	sexo;
    

-- aqui agrupamentos por sexo e com base nisso identificamos na tabela a
-- maior e menor idade para cada genero
select
	sexo,
    max(idade) as maiorIdade,
    min(idade) as menorIdade
from
	aluno
group by
	sexo;
    
    
select * from endereco;

-- vamos tentar agora calcular o numero de registros por estado
-- na tabela endereco
select
	estado,count(*) as total_por_estado
from
	endereco
group by
	estado;
    
    
select * from telefone;

-- vamos identificar quantos numeros de telefone tempos por tipo
select tipo,count(*) as total_desse_tipo
from telefone
group by tipo;