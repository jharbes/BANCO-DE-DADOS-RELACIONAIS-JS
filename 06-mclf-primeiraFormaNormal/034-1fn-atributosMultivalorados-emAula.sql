use universidade_u;

select * from aluno;
select * from telefone;

desc aluno;

/* 034-universidade_u_logico-emAula: */
-- criando tabela telefone
CREATE TABLE Telefone (
    idTelefone int auto_increment PRIMARY KEY,
    numero varchar(20),
    tipo char(3)
);

-- vamos inserir os telefones existentes na tabela aluno para a
-- nova tabela telefone
insert into telefone(numero,tipo) values ('11 5555-2222','res');
insert into telefone(numero,tipo) values ('11 3333-4444','com');

-- agora vamos excluir a coluna telefone da tabela aluno
alter table aluno drop column telefone;