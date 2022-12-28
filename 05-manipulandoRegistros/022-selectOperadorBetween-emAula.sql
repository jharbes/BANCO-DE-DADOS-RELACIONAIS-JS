use universidade_u;

select * from aluno;
-- o between funciona como o operador de comparacao comum que define um intervalo,
-- lembrando que nesse caso abaixo os valores 18 e 21 estarao inclusos na consulta
select * from aluno where idade >=18 and idade<=21;
select * from aluno where idade between 18 and 21;

-- também funciona para datas conforme abaixo:
select * from aluno where dataInscricaoCurso>='2018-12-01' and dataInscricaoCurso<='2018-12-31';
select * from aluno where dataInscricaoCurso between '2018-12-01' and '2018-12-31';

select * from aluno where idade between 40 and 60; 

select * from aluno where dataInscricaoCurso between '2018-11-01' and '2018-11-30';