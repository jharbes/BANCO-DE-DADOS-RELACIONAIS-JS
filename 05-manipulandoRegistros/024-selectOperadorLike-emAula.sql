use universidade_u;

select * from aluno;

-- ambos retornarao resultados identicos
-- o like funciona como o =, sendo que possui maneiras de busca
-- a mais com o % e o _
select * from aluno where nome ='Maria Souza Gomide';
select * from aluno where nome like 'Maria Souza Gomide';

-- repare que neste caso o % funciona como qualquer coisa, o u seja
-- o nome pode possui qualquer coisa contato que termine com caractere a
-- incluindo os caracteres acentuados na busca
-- (funciona como o * do MSDOS)
select * from aluno where nome like '%a';

-- aqui basta que haja um caractere r em qualquer local do nome
-- IMPORTANTE (o caractere % também inclui nenhum caractere)
select * from aluno where nome like '%r%';

-- O _ funciona como um apenas caractere qualquer, e deve sim existir,
-- não pode ser nenhum caractere
select * from aluno where nome like '_osé%';
select * from aluno where nome like '___i_%';

-- observe que os coringas % e _ podem ser combinados de qualquer maneira
-- que seja desejado