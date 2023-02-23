use universidade_u;

select * from aluno_curso;

desc aluno_curso;

alter table aluno_curso drop column id_AlunoCurso;

-- criando a chave primaria composta com a fk_idaluno, fk_idcurso e a dataInscricaoCurso
alter table aluno_curso add constraint 
pk_aluno_curso primary key(fk_idaluno,fk_idcurso,dataInscricaoCurso);