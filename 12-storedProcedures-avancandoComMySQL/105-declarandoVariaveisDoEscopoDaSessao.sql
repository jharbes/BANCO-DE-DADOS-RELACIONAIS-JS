use universidade_u;

set @x = 10;
set @y = 15;
set @Nome = 'Jorge';

set @y = 25;
set @resultado = @x + @y;

select @x;
select @y;
select @Nome as teste;

select @resultado as teste;
