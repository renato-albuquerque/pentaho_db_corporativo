# Projeto Unidade 02 | PENTAHO | Data Analytics | Digital College Brasil

Desenvolvimento de Projeto utilizando a ferramenta PENTAHO. 1ª Transformação (ktr) no PENTAHO Data Integration (PDI). Populando uma tabela no PostgreSQL (Arquivo csv para bd: corporativo, schema: geral, tabela: estado).<br>
Tecnologias utilizadas: SQL / PostgreSQL / Pentaho.<br>

Instituição: [Digital College Brasil](https://digitalcollege.com.br/) (Fortaleza/CE) <br>
Curso: Data Analytics (Turma 18) <br>
Instrutora: [Nayara Wakweski](https://github.com/NayaraWakewski) <br>

## Etapas de Desenvolvimento
1. Entendimento do projeto. "Popular tabelas no banco de dados no PostgreSQL (bd corporativo)".
2. Conectar o Pentaho com o PostgreSQL.
3. Importar arquivos csv no Pentaho.
4. Desenvolver fluxos para tratamento dos dados no Pentaho (Transformações, ktr's).
5. Dados inseridos nas tabelas do PostgreSQL.

- Visualização de transformação (ktr) no Pentaho & Check dos dados inseridos no PostgreSQL, schema geral, tabela `estado`:

![screenshot](/images/etl_estado.png) <br>
![screenshot](/images/estado.png) <br>

- Visualização de transformação (ktr) no Pentaho & Check dos dados inseridos no PostgreSQL, schema geral, tabela `cidade`:

![screenshot](/images/etl_cidade.png) <br>
![screenshot](/images/cidade.png) <br>

## SQL Challenge

1. Quais as cidades pertencentes ao Estado do Ceará, buscando pela sigla CE?
``` 
-- Criação de uma view:
create or replace view view_cidades_ce as
select c.descricao as cidade, e.sigla as sigla_estado
from geral.cidade c 
inner join geral.estado e 
on c.id_estado = e.id
where e.sigla = 'CE';

select * from view_cidades_ce;
```

![screenshot](/images/c1.png) <br>

2. Quantas cidades possui o Estado de São Paulo buscando pela descrição?
```
-- Criação de uma view:
create or replace view view_qtde_cidades_sp as
select e.sigla as sigla_estado, e.descricao as estado, count(*)
from geral.cidade c 
inner join geral.estado e 
on c.id_estado = e.id
where e.descricao = 'SÃO PAULO'
group by e.sigla, e.descricao;

select * from view_qtde_cidades_sp;
```

![screenshot](/images/c2.png) <br>

3. Quantas cidades no Brasil existem com o nome de Fortaleza e em quais estados elas se encontram?
```
-- Criação de uma view:
create or replace view view_qtde_cidade_fortaleza as
select c.descricao as cidade, e.sigla as sigla_estado, count(c.descricao)
from geral.cidade c 
inner join geral.estado e 
on c.id_estado = e.id
where c.descricao = 'FORTALEZA'
group by c.descricao, e.sigla;

select * from view_qtde_cidade_fortaleza;
```

![screenshot](/images/c3.png) <br>