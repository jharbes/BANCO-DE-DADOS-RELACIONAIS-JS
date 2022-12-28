use universidade_u;

select * from aluno;

/*

Uma boa prática do delete é sempre fazer um SELECT antes com os
filtros desejados, caso o retorno seja o esperado aí sim efetuar
o comando DELETE

*/

delete from aluno; -- APAGA TODOS OS REGISTROS DA TABELA!! NAO USAR

-- sempre usar o comando delete com a clausula where
delete from aluno where ativoSn=0;

-- pesquisa que funciona como clausula OR, ou seja,
-- deleta todas as consultas que retornarem
delete from aluno where idade in (30,29);

-- observe que o where funciona para maiusculas e minusculas
-- de maneira indistinta, deletou o registro com a letra f, mesmo
-- tendo sido registrado com F
delete from aluno where idade in (30,29) or sexo='f';

