use universidade_u;

/*

ORDEM DOS COMANDOS EM UPDATE

update
	aluno
set
	telefone='11 8888-4444'
where
	telefone='11 7777-7777';

*/

select * from aluno;

-- vamos colocar a situacao de inativo para o aluno de nome joao
update aluno set ativoSn=0 where nome='João Seibzehn Schmitz';

-- observe que podemos atualizar mais de uma coluna de cada vez
-- e utilizar o like para facilitar a pesquisa da tupla desejada
update aluno set ativoSn=1, valorPagoCurso=750 where nome like 'João%';

-- alterando o telefone do registro
update aluno set telefone='11 8888-4444' where telefone='11 7777-7777';