use universidade_u;

-- abaixo ambos as funcoes retornam a data atual
select curdate();
select current_date();

-- a funcao abaixo retorna a data e hora atual
select now();

-- formatando datas
-- a funcao date_format utiliza dois argumentos, o primeiro eh a data a ser formatada
-- o segundo argumento eh o padrao de formatacao a ser feito
/*
%d - dia do mes (de 01 a 31)
%D - dia do mes com sufixo em ingles
%m - mes (de 01 a 12)
%M - nome do mes em ingles
%y - ano (com dois digitos)
%Y - ano (com quatro digitos)
*/
select date_format(curdate(),'%d/%m/%Y'); -- output 05/02/2023
select date_format(current_date(),'%D-%M-%Y'); -- output 5th-February-2023


-- extrair parte de data, funcao extract()
select extract(day from curdate()); -- extrai o dia do mes da data atual
select extract(month from curdate()); -- extrai o mes da data atual
select extract(year from '1986-06-01'); -- extrai o ano da data atual


-- adicionando intervalos de tempo as datas
-- a funcao date_add possui como primeiro argumento a data a ser modificada
-- e como segundo argumento o intervalo a ser adicionado
-- os parametros possiveis sao second, minute, hour, day, month e year
select date_add('1990-12-10',interval 4 day) as dataFormatada;
select date_add('1990-12-10',interval -5 month) as dataFormatada;
select date_add('1990-12-10 10:15:20',interval 5 second) as dataFormatada;
select date_add('1990-12-10 10:15:20',interval -30 minute) as dataFormatada;
select now() as data_hora_atuais,date_add(now(),interval 5 hour) as data_hora_ajustada;


-- calculo de DIAS entre datas
select 
	'1990-12-05' as dataNascimento, 
	curdate() as dataAtual,
    datediff('1990-12-05', curdate()) as diferencaDias;
-- calculando a idade aproximada
select 
	'1990-12-05' as dataNascimento, 
	curdate() as dataAtual,
    datediff('1983-06-21', curdate()) as diferencaDias,
	floor(datediff(curdate(),'1983-06-21')/365) as idadeAproximada;
    
    
-- calculo de meses entre datas (utiliza apenas o ano e o mes)
select period_diff('199504','199402') as diferencaMeses;


-- funcao dayofyear() retorna o dia do ano (entre 1 e 366)
-- se o ano for bissexto a informacao sera levada em consideracao
select dayofyear('1983-06-21') as diaDoAno;