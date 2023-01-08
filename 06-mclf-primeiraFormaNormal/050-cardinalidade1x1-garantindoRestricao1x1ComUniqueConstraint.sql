use universidade_u;

select * from aluno;
select * from endereco;
desc endereco;

/* */
insert into endereco(logradouro, numero, complemento, bairro,
cidade, estado, fk_idaluno)values(
'Avenida Paulista', 500, null, 'Bela Vista',
'São Paulo', 'SP', 7
);

delete from endereco where idendereco = 1;

alter table endereco add constraint uc_endereco_fkidaluno unique(fk_idaluno);