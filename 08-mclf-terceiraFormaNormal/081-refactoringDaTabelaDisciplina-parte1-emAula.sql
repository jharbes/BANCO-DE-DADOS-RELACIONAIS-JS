/*
2fn- testamos a dependencia funcional total (campos nao chave->pk compostas)
3fn- testamos a dependencia transitiva (campos nao chave->campos nao chave)
*/

use universidade_u;

create table professor(
	idProfessor int auto_increment,
    nome varchar(50) not null,
    email varchar(100),
    constraint pk_professor primary key(idProfessor)
);

desc professor;
select * from disciplina;

-- retorna as informacoes sobre professores na tabela disciplina, porem teremos
-- registros de professores duplicados
select codigoProfessor, nomeProfessor, emailProfessor from disciplina; 

-- o distinct sozinho nao resolve nosso problema pois os emails dos registros duplicados
-- sao diferentes, logo o distinct retorna como se fossem registros diferentes
select distinct codigoProfessor, nomeProfessor, emailProfessor from disciplina; 

-- sendo assim utilizaremos o group by para agrupar por codigo de professor,
-- trazendo apenas o primeiro registro da ocorrencia para codigo professor,
-- se usarmos o count(*) ficara claro que aquele registro esta agrupando um
-- x numero de registros que possuem o mesmo codigo
select distinct codigoProfessor, count(*) as repeticoes, nomeProfessor, emailProfessor
from disciplina group by codigoProfessor; 

update disciplina set emailProfessor='jorge@teste.com.br' 
where codigoProfessor=100;

-- inserindo dados na tabela professor
insert into professor (idProfessor, nome, email)
select distinct codigoProfessor,nomeProfessor,emailProfessor
from disciplina;

select * from professor;

alter table disciplina drop column nomeProfessor;
alter table disciplina drop column emailProfessor;