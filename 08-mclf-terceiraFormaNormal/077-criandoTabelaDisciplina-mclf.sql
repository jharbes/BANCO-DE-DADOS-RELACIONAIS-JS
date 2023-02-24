use universidade_u;

create table disciplina(
    iddisciplina int auto_increment,
    descricao varchar(50) not null,
    carga_horaria int,
    codigo_professor int,
    nome_professor varchar(50),
    email_professor varchar(100),
    fk_idcurso int,
    constraint pk_iddisciplina primary key(iddisciplina)
);

desc disciplina;

alter table disciplina add constraint fk_curso_disciplina
foreign key(fk_idcurso) references curso(idcurso);

desc curso;
