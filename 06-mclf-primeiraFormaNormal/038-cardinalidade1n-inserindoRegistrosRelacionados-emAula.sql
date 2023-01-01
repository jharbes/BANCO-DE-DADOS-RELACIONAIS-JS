use universidade_u;

select * from aluno;
select * from telefone;

desc aluno;
desc aluno;

-- vamos fazer com que ambos telefones pertencam ao aluno de idaluno=1
update telefone set fk_idaluno=1 
where numero in ('11 5555-2222','11 3333-4444');

insert into telefone (numero,tipo,fk_idaluno)
values 
('11 5555-5555','res',4),
('11 5555-7777','res',3),
('11 5555-8888','res',3),
('11 5555-9999','res',3);