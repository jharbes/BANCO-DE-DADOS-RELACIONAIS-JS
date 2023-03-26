use universidade_u;

select * from curso;
select * from disciplina;

-- inserindo registros na tabela disciplina
insert into disciplina(
	descricao, cargaHoraria, codigoProfessor,nomeProfessor,
    emailProfessor,fk_idCurso
) values
	('NodeJs',7,100,'Jorge','jorge@teste.com.br',1),
    ('Express',2,120,'Pedro','pedro@teste.com.br',1),
    ('MongoDB',5,130,'Julia','julia@teste.com.br',1);
    

-- 1- anomalias de insercao (redundancia de dados, dados inconsistentes)

-- observe que nessa insercao o email saiu com valor errado divergente do primeiro
-- o professor jorge foi cadastrado da primeira vez, nossa tabela permite isso
-- gerando dados inconsistentes e a redundancia de precisar inserir novamente os
-- dados do instrutor jorge
insert into disciplina(
	descricao, cargaHoraria, codigoProfessor,nomeProfessor,
    emailProfessor,fk_idCurso
) values
	('EJS',3,100,'Jorge','jorge1010@teste.com.br',1);
    
    
-- 2- anomalias de exclusao (perder registros importantes)

-- observe que ao deletar o vinculo do professor pedro acabamos por deletar
-- tambem a disciplina Express, o que nao seria desejado visto que o objetivo seria
-- alocar outro professor na disciplina e nao exclui-la do curso
select * from disciplina where codigoProfessor=120 and descricao='Express';
delete from disciplina where codigoProfessor=120 and descricao='Express';


-- 3- anomalias de atualizacao (informacoes inconsistentes dentro da tabela,
-- redundancia no update)

-- observe que ao tentar atualizar o nomne do professor de Jorge para George geramos
-- inconsistencias pois nem todas as disciplinas vinculadas ao professor Jorge/George
-- terao o dado atualizado
update disciplina set nomeProfessor='George' where idDisciplina=1;

update disciplina set nomeProfessor='George' where codigoProfessor=100;