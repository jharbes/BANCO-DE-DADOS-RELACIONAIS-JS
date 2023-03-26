use universidade_u;

-- criando tabela disciplina
create table disciplina(
	idDisciplina int auto_increment,
    descricao varchar(50) not null,
    cargaHoraria int,
    codigoProfessor int,
    nomeProfessor varchar(50),
    emailProfessor varchar(100),
    fk_idCurso int,
    constraint pk_idDisciplina primary key(idDisciplina)
);

alter table disciplina add constraint fk_curso_disciplina
foreign key(fk_idCurso) references curso(idCurso);

desc disciplina;
desc curso;

