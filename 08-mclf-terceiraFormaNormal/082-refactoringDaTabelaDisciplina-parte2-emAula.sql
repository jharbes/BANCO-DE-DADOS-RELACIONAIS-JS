-- vamos renomear a coluna codigoProfessor e aplicar sobre ela a
-- constraint que vai garantir o relacionamento com a tabela professor	
alter table disciplina rename column codigoProfessor to fk_idProfessor;

select * from disciplina;

alter table disciplina add constraint fk_disciplina_professor
foreign key(fk_idProfessor) references professor(idProfessor);

desc disciplina;