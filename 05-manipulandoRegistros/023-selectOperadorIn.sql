use universidade_u;
select * from aluno;

select * from aluno where nome = 'Fernanda' or nome = 'Maria' or nome = 'Marcelo';

select * from aluno where nome in('Fernanda', 'Maria', 'Marcelo');

select * from aluno where nome not in('Fernanda', 'Maria', 'Marcelo');