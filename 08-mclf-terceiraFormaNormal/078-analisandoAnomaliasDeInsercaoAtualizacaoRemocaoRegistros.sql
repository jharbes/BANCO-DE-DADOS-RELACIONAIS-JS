use universidade_u;

select * from disciplina;
select * from curso;

/* Curso Completo do Desenvolvedor NodeJS e MongoDB*/
insert into disciplina(
    descricao, carga_horaria, codigo_professor, 
    nome_professor, email_professor, fk_idcurso
)values(
	'NodeJs', 7, 100,
    'Jorge', 'jorge@teste.com.br', 1
);

insert into disciplina(
    descricao, carga_horaria, codigo_professor, 
    nome_professor, email_professor, fk_idcurso
)values(
	'Express', 2, 120,
    'Pedro', 'pedro@teste.com.br', 1
);

insert into disciplina(
    descricao, carga_horaria, codigo_professor, 
    nome_professor, email_professor, fk_idcurso
)values(
	'MongoDB', 5, 130,
    'Julia', 'julia@teste.com.br', 1
);

/* anomalias de inserção (redundância de dados, dados inconsistentes) */
insert into disciplina(
    descricao, carga_horaria, codigo_professor, 
    nome_professor, email_professor, fk_idcurso
)values(
	'EJS', 3, 100,
    'Jorge', 'jorge1010@teste.com.br', 1
);

/* anomalias de exclusão (perder registros importantes) */
delete from disciplina where codigo_professor = 120 and descricao = 'Express';
select * from disciplina where codigo_professor = 120 and descricao = 'Express';

/*anomalias de atualização (informações inconsistentes, redundância no update)*/
update disciplina set nome_professor = 'George' where codigo_professor = 100;
