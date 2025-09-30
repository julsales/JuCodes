-- q1
select * from evento
where data between '2018-01-01' and '2018-06-30';

-- q2
select nome from cliente
where nome like "%A" or nome like "A%";

-- q3 
select bairro, count(*) as total_clientes
from cliente
group by bairro;

-- q4 
select * from cliente
where complemento is null or complemento = " ";

-- q5
select valor, descricao, horario from evento
where data =  '2018-09-12';

-- q6 
select * from local_evento 
where cod_local not in (
  select e.local_cod_local1 from evento e
  join reserva r on e.cod_evento = r.evento_cod_evento
);

-- q7
select c.nome from cliente c
join Evento e on c.cod_cliente = e.cliente_cod_cliente
join local_evento l on e.Local_cod_Local1 = l.cod_local
where e.valor > 2000 and l.nome_local = 'Parque de Exposições';

-- q8 aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
select nome, telefone from cliente
where cod_cliente not in (
select cliente_cod_cliente from reserva);

-- q9
select c.nome, c.telefone from cliente c
join reserva r on c.cod_cliente = r.Cliente_cod_cliente 
join evento e on r.Evento_cod_Evento = e.cod_evento 
join local_evento l on e.Local_cod_Local1 = l.cod_local
where r.data = '2018-11-27' and l.nome_local = 'Downtown';

-- q10
select count(distinct r.cliente_cod_cliente) as total_clientes
from reserva r
join evento e on r.evento_cod_evento = e.cod_evento
join local_evento l on e.local_cod_local1 = l.cod_local
where l.nome_local = 'centro de eventos';

-- q11
select c.nome, c.bairro from cliente c
join reserva r on c.cod_cliente = r.cliente_cod_cliente
join evento e on r.evento_cod_evento = e.cod_evento
join local_evento l on e.local_cod_local1 = l.cod_local
where l.nome_local = 'parque dona lindu'
group by c.cod_cliente, c.nome, c.bairro
having count(*) > 1;

-- q12
select l.nome_local, count(e.cod_evento) as total_eventos
from local_evento l
left join evento e on l.cod_local = e.local_cod_local1
group by l.cod_local, l.nome_local;

-- q13
select e.descricao, e.valor from evento e
left join reserva r on e.cod_evento = r.evento_cod_evento
group by e.cod_evento, e.descricao, e.valor
having count(r.cod_reserva) < 2;

-- q14
select c.nome from cliente c
join evento e on c.cod_cliente = e.cliente_cod_cliente
group by c.cod_cliente, c.nome
having sum(e.valor) > 200;

-- q15
select distinct c.nome from cliente c
join reserva r on c.cod_cliente = r.cliente_cod_cliente
join evento e on r.evento_cod_evento = e.cod_evento
join local_evento l on e.local_cod_local1 = l.cod_local
where (r.data = '2018-07-07' and l.nome_local = 'parque dona lindu')
   or (e.data = '2018-09-01' and l.nome_local = 'parque de exposições');

-- q16
select e.descricao, e.valor * count(r.cod_reserva) as valor_arrecadado
from evento e
join reserva r on e.cod_evento = r.evento_cod_evento
group by e.cod_evento, e.descricao, e.valor
having count(r.cod_reserva) > 3;

-- q17
select descricao from evento
where valor > (
  select avg(valor) from evento
);

-- q18
select nome_local from local_evento
where cod_local not in (
  select local_cod_local1 from evento
  where year(data) = 2018
);

-- q19
select nome_local from local_evento
where cod_local in (
  select local_cod_local1 from evento
  group by local_cod_local1
  having count(*) >= 2
);

-- q20
select e.descricao from evento e
join reserva r on e.cod_evento = r.evento_cod_evento
group by e.cod_evento, e.descricao
having count(r.cod_reserva) > (
  select avg(qtd) from (
    select count(*) as qtd from reserva
    group by evento_cod_evento
  ) as sub
);
