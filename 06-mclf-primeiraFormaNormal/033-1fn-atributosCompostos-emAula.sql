use universidade_u;

select * from aluno;

desc aluno;

-- faremos a decomposicao da coluna endereco em varias colunas diferentes
-- para que assim possamos cumprir a exigencia da atomicidade da coluna
-- e portanto cumprir as regras da 1fn
alter table aluno add logradouro varchar(100);
alter table aluno add numero varchar(10);
alter table aluno add complemento varchar(20);
alter table aluno add bairro varchar(100);
alter table aluno add cidade varchar(50);
alter table aluno add estado char(2);

update
	aluno
set
	logradouro='Avenida Paulista',
    numero='1500',
    complemento='ap315',
    bairro='Bela Vista',
    cidade='São Paulo',
    estado='SP'
where
	idaluno = 1; 

update
	aluno
set
	logradouro='Rua Francisco Sá',
    numero='10',
    complemento='',
    bairro='Gutierrez',
    cidade='Belo Horizonte',
    estado='MG'
where
	idaluno = 2; 
    
update
	aluno
set
	logradouro='Avenida Dom Manuel',
    numero='300',
    complemento='',
    bairro='Centro',
    cidade='Fortaleza',
    estado='CE'
where
	idaluno = 3; 
    
update
	aluno
set
	logradouro='Rua Miramar',
    numero='1200',
    complemento='ap112',
    bairro='Rocas',
    cidade='Natal',
    estado='RN'
where
	idaluno = 4; 
    
update
	aluno
set
	logradouro='Rua João de Abreu',
    numero='650',
    complemento='',
    bairro='Setor Oeste',
    cidade='Goiânia',
    estado='GO'
where
	idaluno = 5; 
    
-- agora podemos remover a coluna endereco
alter table aluno drop endereco;