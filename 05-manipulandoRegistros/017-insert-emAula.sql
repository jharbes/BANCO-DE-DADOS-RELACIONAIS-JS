use universidade_u;

-- datas para utilizacao do tipo date terao o formato 'yyyy-mm-dd'

-- ativoSn sera cadastrado com 0 para inativo e 1 para ativo

insert into aluno(
	sexo,idade,dataInscricaoCurso,telefone,valorPagoCurso,ativoSn,endereco,nome
) values (
		'M',55,'2018-12-01','11 5555-2222',645.22,1,
        'Avenida Paulista 1500 AP315 - Sao Paulo/SP','João Seibzehn Schmitz'
);

insert into aluno(
	sexo,idade,dataInscricaoCurso,telefone,valorPagoCurso,ativoSn,endereco,nome
) values (
		'F',30,'2018-11-01','11 3333-2222',589.12,1,
        'Rua Francisco Sá 10 - Belo Horizonte/MG','Fernanda Carvalho Sá'
);

insert into aluno(
	sexo,idade,dataInscricaoCurso,telefone,valorPagoCurso,ativoSn,endereco,nome
) values (
		'M',29,'2018-12-02','11 3333-7777',600.55,0,
        'Avenida Dom Manuel 300 - Fortaleza/CE','Jose Maria Gomes'
);

insert into aluno(
	sexo,idade,dataInscricaoCurso,telefone,valorPagoCurso,ativoSn,endereco,nome
) values (
		'F',29,'2018-12-02','11 7777-7777',655.45,1,
        'Rua Miramar 1200 AP112 - Natal/RN','Maria Souza Gomide'
);

insert into aluno(
	sexo,idade,dataInscricaoCurso,telefone,valorPagoCurso,ativoSn,endereco,nome
) values (
		'M',37,'2018-11-15','11 1111-7777',612.99,1,
        'Rua João de Abreu 650 - Goiânia/GO','Marcelo Castro Souza'
);