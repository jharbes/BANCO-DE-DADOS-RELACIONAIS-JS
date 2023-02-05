use universidade_U;

-- criando a tabela gasto
-- as colunas set e out nao estao sendo aceitas pelo SGBD pois sao palavras reservadas
-- do mesmo, por isso iremos nos utilizar das crases em seus nomes para mostrar que 
-- nao queremos usar os comandos mas sim os nomes 'set' e 'out'
CREATE TABLE Gasto (
    idGasto int auto_increment PRIMARY KEY,
    ano int not null,
    tipo enum('previsto', 'realizado') not null,
    jan float(10,2),
    fev float(10,2),
    mar float(10,2),
    abr float(10,2),
    mai float(10,2),
    jun float(10,2),
    jul float(10,2),
    ago float(10,2),
    `set` float(10,2),
    `out` float(10,2),
    nov float(10,2),
    dez float(10,2)
);

select * from gasto;
desc gasto;