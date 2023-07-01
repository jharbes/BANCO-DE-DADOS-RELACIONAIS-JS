use universidade_u;

desc contrato;

delimiter $$
create procedure proc_boleto()
comment 'Procedure para processamento dos contratos e geração dos registros de boletos'
begin

	-- declarando as variaveis que serao utilizadas para resgatar os valores
    -- dos cursores
    declare v_idcontrato, v_fk_idaluno, v_fk_idcurso int;
    declare v_fk_data_inscricao_curso datetime;
    declare v_valor_total_curso float(8,2);
    declare v_desconto float(4,1);
    declare v_numero_parcelas int;
    declare v_processado char(1);
	
    -- aqui declaramos o cursor, ele recebera as informacoes de todas as
    -- consultas retornadas por meio do cursor for e a consulta feita
    -- entre parenteses
	declare c_contratos cursor for(
		select * from contrato
    );
    
    -- abrir o cursor
    open c_contratos;
    
    -- recupera os registros e encaminha para variaveis, que poderao ser usadas
    -- dentro da logica do cursor
    -- observe que a ordem das variaveis deve ser respeitada de acordo com a ordem de retorno do select
    fetch c_contratos
    into 
		v_idcontrato,v_fk_idaluno,v_fk_idcurso,v_fk_data_inscricao_curso,
        v_valor_total_curso,v_desconto,v_numero_parcelas,v_processado;
        
	fetch c_contratos
    into 
		v_idcontrato,v_fk_idaluno,v_fk_idcurso,v_fk_data_inscricao_curso,
        v_valor_total_curso,v_desconto,v_numero_parcelas,v_processado;
        
	fetch c_contratos
    into 
		v_idcontrato,v_fk_idaluno,v_fk_idcurso,v_fk_data_inscricao_curso,
        v_valor_total_curso,v_desconto,v_numero_parcelas,v_processado;
        
	select v_idcontrato,v_fk_idaluno,v_fk_idcurso,v_fk_data_inscricao_curso,
        v_valor_total_curso,v_desconto,v_numero_parcelas,v_processado;
	
    -- fechar o cursor, importante para desalocar a memoria utilizada para o cursor
    close c_contratos;

end
$$
delimiter ;

drop procedure universidade_u.proc_boleto;

call proc_boleto();