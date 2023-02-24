use universidade_u;

create table projeto_funcionario2(
    fk_idcodigo int,
    fk_idmatricula int,
    horas_estimadas int not null,
    horas_realizadas int,
    constraint pk_projeto_funcionario 
    primary key( fk_idcodigo,  fk_idmatricula)
);

desc projeto_funcionario2;

 alter table projeto_funcionario2 add constraint
 foreign key(fk_idcodigo) 
 references projeto(idcodigo);
 
  alter table projeto_funcionario2 add constraint
 foreign key(fk_idmatricula) 
 references funcionario(idmatricula);
 
 select * from projeto_funcionario;
