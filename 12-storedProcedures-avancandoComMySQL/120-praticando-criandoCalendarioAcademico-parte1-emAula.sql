use universidade_u;

-- criar um calendario academico

create table calendario(
	idcalendario int not null primary key auto_increment,
    `data` date not null,
    dia int(2) not null,
    mes int(2) not null,
    ano int(4) not null,
    feriado enum('s','n'),
    nome_feriado varchar(50)
);

select * from calendario;

delimiter $$
create procedure proc_calendario(in p_data_inicio date, in p_data_fim date)
comment 'Procedimento para definição do calendário acadêmico com base em uma data início e fim'
begin
	
    declare v_dia, v_mes int(2);
    declare v_ano int(4);
    
	select p_data_inicio as data_inicio, p_data_fim as data_fim;
	
    while p_data_inicio<=p_data_fim do
		set v_dia=extract(day from p_data_inicio);
        set v_mes=extract(month from p_data_inicio);
        set v_ano=extract(year from p_data_inicio);
		insert into calendario(`data`,dia,mes,ano)values(p_data_inicio,v_dia,v_mes,v_ano);
		set p_data_inicio=date_add(p_data_inicio, interval 1 day);
    end while;
    
end
$$
delimiter ;

drop procedure universidade_u.proc_calendario;

call proc_calendario('2019-01-01','2019-12-31');