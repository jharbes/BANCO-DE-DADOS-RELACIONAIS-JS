use universidade_u;

-- filtros com o operador IN

-- funciona como uma sequencia de comparacoes com o operador OR, seria como
-- pesquisar aqueles valores que se encontram dentro de alguma das possibilidades

-- ambos possuirao resultados identicos
select * from alunos where nome='Fernanda' or nome='José' or nome='Marcelo';
select * from alunos where nome in ('Fernanda','José','Marcelo');

-- tambem possuimos o operador NOT IN que resultará no inverso do operador IN
-- ele se resume a retornar todos os resultados que nao tenham qualquer um 
-- dos valores elencados nas opções listadas

select * from alunos where nome not in ('Fernanda','José','Marcelo');