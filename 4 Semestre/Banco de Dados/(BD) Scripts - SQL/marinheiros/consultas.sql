select
	m.nome, m.idMarinheiro 
from marinheiro m 

-- q1
select 
	m.nome
from marinheiro m 
where avaliacao= "bom";

-- q2
select -- juncao implicita
	m.nome
from marinheiro m, barcos b, reservas r
where m.idMarinheiro = r.marinheiro_idMarinheiro and 
b.idBarcos = r.barcos_IdBarcos and
b.idBarcos = 103;

select -- juncao explicita
	m.nome
from marinheiro m join reservas r
on m.idMarinheiro = r.marinheiro_idMarinheiro
where r.barcos_IdBarcos = 103;

-- q3
select distinct 
	r.marinheiro_idMarinheiro
from reservas r join barcos b
on r.barcos_IdBarcos = b.idBarcos
where b.cor = "vermelho";

-- q4
select distinct 
	m.nome
from reservas r join marinheiro m
on r.marinheiro_idMarinheiro = m.idMarinheiro
join barcos b on r.barcos_IdBarcos = b.idBarcos
where b.cor = "vermelho";

-- q5
select distinct 
	b.cor
from barcos b join reservas r
on r.barcos_IdBarcos = b.idBarcos
join marinheiro m on r.marinheiro_idMarinheiro = m.idMarinheiro
where m.nome = "Lubber";

-- q6
select distinct
m.nome 
from marinheiro m, reservas r
where m.idMarinheiro = r.marinheiro_idMarinheiro
group by r.marinheiro_idMarinheiro
having count(*) >= 2;

-- q7
select distinct
m.idMarinheiro, m.nome
from marinheiro m
join reservas r on r.marinheiro_idMarinheiro = m.idMarinheiro;

-- q8
select idade, nome
from marinheiro 
where nome like 'B__%' or nome like '%__b';

-- q9
select avg(idade)
from marinheiro;

-- q10

select avg(idade)
from marinheiro 
where idade>27;

-- q11

select count(*) from marinheiro

-- q12

select count(distinct (nome)) from marinheiro 

-- q13

select m.avaliacao, min(m.idade)
from marinheiro m
group by m.avaliacao

-- q14

select m.avaliacao, min(m.idade)
from marinheiro m 
where m.idade >= 18
group by m.avaliacao
having count(*) >= 2

-- q15

select count(*)
from barcos b join reservas r on r.barcos_IdBarcos = b.idBarcos
where b.cor = "vermelho"

-- q16

select m.avaliacao, avg(m.idade) as media
from marinheiro m 
group by m.avaliacao 
having count(*) >= 2

-- q17
select idMarinheiro
from marinheiro 
where idade > (select avg(idade) from marinheiro);

-- q18

select m.nome
from marinheiro m
join reservas r on r.marinheiro_idMarinheiro = m.idMarinheiro
join barcos b on b.idBarcos = r.barcos_IdBarcos
where b.cor in ("vermelho", "verde", "azul")
group by m.nome
having count(*) > 3;


-- q19
select b.cor, avg(m.idade) as media
from reservas r
join marinheiro m on m.idMarinheiro = r.marinheiro_idMarinheiro
join barcos b on b.idBarcos = r.barcos_IdBarcos
group by b.cor;