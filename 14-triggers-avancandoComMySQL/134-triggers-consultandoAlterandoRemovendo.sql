use universidade_u;

/* listamos as triggers do bd */
show triggers where `table` = 'funcionario';

/* instru��o para recuperar a trigger (bloco l�gico) */
show create trigger universidade_u.tr_before_insert_funcionario;

/* alterar -- remover a trigger e criar a trigger novamente */
delimiter $$
CREATE TRIGGER `tr_before_insert_funcionario` BEFORE INSERT ON `funcionario` FOR EACH ROW 
begin

	insert into funcionario_log(fk_idmatricula, tipo_log, funcao_antiga, funcao_nova, telefone_antigo, telefone_novo)
    values(null, 'BI', null, NEW.funcao, null, NEW.telefone);
end
$$
delimiter ; 

/* remover as triggers */
drop trigger universidade_u.tr_before_insert_funcionario;
