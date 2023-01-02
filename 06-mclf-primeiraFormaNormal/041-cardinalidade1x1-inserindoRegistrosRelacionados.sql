use universidade_u;

select * from aluno;

select * from endereco;

insert into endereco(
logradouro, numero, complemento, fk_idaluno,bairro, cidade, estado
)  

select 
	logradouro, numero, complemento, idaluno, bairro, cidade, estado  
from 
	aluno;
    
alter table aluno drop column logradouro;
alter table aluno drop column numero;
alter table aluno drop column complemento;
alter table aluno drop column bairro;
alter table aluno drop column cidade;
alter table aluno drop column estado;

select * from endereco where fk_idaluno = 1;

select * from endereco where fk_idaluno = 3;
    
