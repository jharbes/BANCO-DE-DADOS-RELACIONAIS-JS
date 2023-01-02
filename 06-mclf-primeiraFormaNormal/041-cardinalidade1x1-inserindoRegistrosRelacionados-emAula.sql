use universidade_u;

select * from aluno;
select * from telefone;
select * from endereco;

desc aluno;
desc telefone;
desc endereco;

-- precisei setar o idendereco como auto increment pois por alguma razao
-- ao criar a tabela nao se setou automaticamente
alter table endereco modify idendereco int unique auto_increment;

-- usando insert/select - faremos a insercao baseada no resultado de select
insert into endereco(
	logradouro,numero,complemento,bairro,cidade,estado,fk_idaluno
)
select 
	logradouro, numero, complemento, bairro,cidade,estado,idaluno 
from 
	aluno;
    
-- agora poderemos excluir as colunas da tabela aluno referentes
-- aos enderecos
alter table aluno drop column logradouro;
alter table aluno drop column numero;
alter table aluno drop column complemento;
alter table aluno drop column bairro;
alter table aluno drop column cidade;
alter table aluno drop column estado;