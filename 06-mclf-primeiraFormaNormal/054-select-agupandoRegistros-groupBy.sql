use universidade_u;

select 
	nome, count(*) as repeticao_nome_agrupamento 
from 
	aluno 
group by 
	nome;
    
select 
	* 
from 
	aluno
group by
	ativo_sn;
	
    
select 
	ativo_sn, count(*) as repeticao_ativo_sn_agrupamento
from 
	aluno
group by
	ativo_sn;	
    
    
select 
	ativo_sn, nome, count(*) as repeticao_agrupamento
from 
	aluno
group by
	ativo_sn, nome;
    
update aluno set nome = 'Rosa' where nome = 'Maria';    

/* --------- */  
select 
	ativo_sn, 
    round(avg(valor_pago_curso), 2) as media_por_agrupamento
from 
	aluno
group by
	ativo_sn;
/* --------- */    

select 
	sexo, floor(avg(idade)) as media_idade_por_sexo
from 
	aluno
group by
	sexo;
    
/* --------- */    

select 
	sexo, 
    min(idade) as menor_idade_do_agrupamento, 
    max(idade) as maior_idade_do_agrupamento
from 
	aluno
group by
	sexo;
    
select idade from aluno where sexo = 'f'; 
select idade from aluno where sexo = 'm'; 

select 
	estado, count(*) as total_por_estado
from 
	endereco
group by 
	estado;
    
select 
	tipo, count(*) as total_por_tipo
from 
	telefone
group by 
	tipo;
    