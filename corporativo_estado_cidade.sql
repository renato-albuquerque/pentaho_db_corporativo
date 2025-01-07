-- Tabelas que foram populadas através do Pentaho (arquivos csv).
select * from geral.estado;
select * from geral.cidade;

-- Challenge 01: Quais as cidades pertencentes ao Estado do Ceará, buscando pela sigla CE?
-- Criação de uma view:
create or replace view view_cidades_ce as
select c.descricao as cidade, e.sigla as sigla_estado
from geral.cidade c 
inner join geral.estado e 
on c.id_estado = e.id
where e.sigla = 'CE';

select * from view_cidades_ce;

-- Challenge 02: Quantas cidades possui o Estado de São Paulo buscando pela descrição?
-- Criação de uma view:
create or replace view view_qtde_cidades_sp as
select e.sigla as sigla_estado, e.descricao as estado, count(*)
from geral.cidade c 
inner join geral.estado e 
on c.id_estado = e.id
where e.descricao = 'SÃO PAULO'
group by e.sigla, e.descricao;

select * from view_qtde_cidades_sp;

-- Challenge 03: Quantas cidades no Brasil existem com o nome de Fortaleza e em quais estados elas se encontram?
-- Criação de uma view:
create or replace view view_qtde_cidade_fortaleza as
select c.descricao as cidade, e.sigla as sigla_estado, count(c.descricao)
from geral.cidade c 
inner join geral.estado e 
on c.id_estado = e.id
where c.descricao = 'FORTALEZA'
group by c.descricao, e.sigla;

select * from view_qtde_cidade_fortaleza;



