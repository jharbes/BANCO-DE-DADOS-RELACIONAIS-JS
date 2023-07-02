use universidade_u;

desc contrato;

truncate table log;

select * from log;

delimiter $$
create procedure proc_boleto2()
comment 'Procedure para processamento dos contratos e geração dos registros de boletos'
begin
	
    declare v_fim_loop int default 0;
    declare v_log text;
    
	-- declarando as variaveis que serao utilizadas para resgatar os valores
    -- dos cursores
    declare v_idcontrato, v_fk_idaluno, v_fk_idcurso int;
    declare v_fk_data_inscricao_curso datetime;
    declare v_valor_total_curso float(8,2);
    declare v_desconto float(4,1);
    declare v_numero_parcelas int;
    declare v_processado char(1);
    
    declare v_boleto_loop_parcelas int default 1;
    declare v_boleto_valor_parcela float(8,2);
    declare v_boleto_data_vencimento datetime;
	
    -- aqui declaramos o cursor, ele recebera as informacoes de todas as
    -- consultas retornadas por meio do cursor for e a consulta feita
    -- entre parenteses
	declare c_contratos cursor for(
		-- a condicao de processado='n' impede que sejam gerados boletos em duplicidade
		select * from contrato where processado='n'
    );
    
    -- manipulador (handler) de continuidade do laço, a declaracao abaixo
    -- significa que quando o cursor for esgotado (ter feito fetch de todos os
    -- seus elementos) ele setara v_fim_loop=1
    declare continue handler for not found set v_fim_loop=1;
    
    -- abrir o cursor
    open c_contratos;
    
    -- recupera os registros e encaminha para variaveis, que poderao ser usadas
    -- dentro da logica do cursor
    -- observe que a ordem das variaveis deve ser respeitada de acordo com a ordem de retorno do select
    repeat
    
		fetch c_contratos
		into 
			v_idcontrato,v_fk_idaluno,v_fk_idcurso,v_fk_data_inscricao_curso,
			v_valor_total_curso,v_desconto,v_numero_parcelas,v_processado;
        
        if v_fim_loop=0 then
			set v_log=concat(
				v_fim_loop,' *** ',v_idcontrato,' - ',v_fk_idaluno,' - ',v_fk_idcurso,' - ',
				v_fk_data_inscricao_curso,' - ',v_valor_total_curso,' - ',v_desconto,' - ',
				v_numero_parcelas,' - ',v_processado);
				
			insert into log(log) value (v_log);
            
            -- estrutura de repeticao para gerar os boletos referentes ao contrato
            -- setaremos sempre o valor de v_boleto_loop_parcelas=1, caso contrario nao
            -- serao gerados os boletos para TODOS os contratos
            set v_boleto_loop_parcelas=1;
            while v_boleto_loop_parcelas<=v_numero_parcelas do
            
				set v_boleto_valor_parcela=v_valor_total_curso/v_numero_parcelas;
                set v_boleto_data_vencimento=date_add(v_fk_data_inscricao_curso, interval v_boleto_loop_parcelas month);
                
				insert into boleto(fk_idcontrato,data_vencimento,valor,numero_parcela)
                values (v_idcontrato,v_boleto_data_vencimento,v_boleto_valor_parcela,v_boleto_loop_parcelas);
            
				set v_boleto_loop_parcelas=v_boleto_loop_parcelas+1;
                
            end while;
            
            -- no fim do processamento de cada contrato setaremos o contrato em questao
            -- como processado para que nao haja depois criacao de boletos duplicados
            update contrato set processado='s' where idcontrato=v_idcontrato;
            
		end if;
        
	until v_fim_loop>0 end repeat;
    
    -- fechar o cursor, importante para desalocar a memoria utilizada para o cursor
    close c_contratos;

end
$$
delimiter ;

drop procedure universidade_u.proc_boleto2;

call proc_boleto2();

truncate table boleto;

select * from boleto;
select * from contrato;