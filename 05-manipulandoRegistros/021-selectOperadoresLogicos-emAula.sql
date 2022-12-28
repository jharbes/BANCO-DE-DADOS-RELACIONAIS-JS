use universidade_u;

select * from aluno;

select * from aluno where sexo='M';

select * from aluno where sexo='M' and ativoSn=1;

select * from aluno where sexo='M' and ativoSn=1 and valorPagoCurso<=625;

select * from aluno where sexo='F' or idade>=40;