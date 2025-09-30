use universidade2
-- q1
select p.nome, pr.nota from pessoa p
join aluno a on p.matricula_pessoa = a.matricula_aluno
join prova pr on a.matricula_aluno = pr.matricula_aluno
where pr.ano_semestre = '2010.2'  and pr.descricao = 'final' and pr.nota > (
    select avg(pr2.nota) from prova pr2
    where pr2.ano_semestre = '2010.2' and pr2.descricao = 'final'
  )
order by pr.nota desc;

-- q2
select p.nome from pessoa p
join professor prof on p.matricula_pessoa = prof.matricula_professor
where prof.matricula_professor not in(
select m.matricula_professor from monitoria m
);

-- q3
select p.matricula from pessoa p
join aluno a on p.matricula_pessoa = a.matricula_aluno
where a.nota_vestibular>(
select avg(a2.nota_vestibular) from aluno a2
);

-- q4
select p.nome, p.sexo from pessoa p
join professor prof on p.matricula_pessoa = prof.matricula_professor
where prof.matricula_professor in (
select m.matricula_professor from ministra m
group by m.matricula_professor having count(*) > 1
);

--  q5

select c.nome as nome_curso, p.sexo, avg(pr.nota) as media from prova pr
join aluno a on pr.matricula_aluno = a.matricula_aluno
join pessoa p on a.matricula_aluno = p.matricula_pessoa
join curso c on a.codigo_curso = c.codigo_curso
where pr.ano_semestre = '2010.2' and pr.descricao = 'p2'
group by c.nome, p.sexo
order by c.nome;

-- q6
select m.matricula_aluno, p.nome, m.ano_semestre, avg(pr.nota) as nota_final from monitoria m
join pessoa p on m.matricula_aluno = p.matricula_pessoa
left join prova pr on pr.matricula_aluno = m.matricula_aluno
  and pr.codigo_disciplina = m.codigo_disciplina
where m.codigo_disciplina = 3 
group by m.matricula_aluno, p.nome, m.ano_semestre;

-- q7
select distinct pa.nome as nome_aluno, pp.nome as nome_professor from prova pr
join aluno a on pr.matricula_aluno = a.matricula_aluno
join pessoa pa on a.matricula_aluno = pa.matricula_pessoa
join ministra m on pr.codigo_disciplina = m.codigo_disciplina
  and pr.codigo_curso = m.codigo_curso
  and pr.ano_semestre = m.ano_semestre
join professor prof on m.matricula_professor = prof.matricula_professor
join pessoa pp on prof.matricula_professor = pp.matricula_pessoa
where pr.descricao = 'final';

-- q8
select c.nome from curso c
where c.codigo_curso not in (
    select distinct a.codigo_curso from aluno_turma at
    join aluno a on at.matricula_aluno = a.matricula_aluno
);

-- q9
select prof.matricula_professor, p.nome, prof.data_admissao, count(distinct d.codigo_disciplina) as qtd_disciplinas from professor prof
join pessoa p on prof.matricula_professor = p.matricula_pessoa
join disciplina d on d.matricula_professor = prof.matricula_professor
where d.codigo_disciplina in (
    select t.codigo_disciplina from turma t
    where t.ano_semestre like '2009.%'
)
group by prof.matricula_professor, p.nome, prof.data_admissao
having count(distinct d.codigo_disciplina) > 1;


-- q10 
select c.nome, a.matricula_aluno from aluno a
join curso c on a.codigo_curso = c.codigo_curso
where (a.codigo_curso, a.nota_vestibular) in (
    select a2.codigo_curso, max(a2.nota_vestibular) from aluno a2
    group by a2.codigo_curso
);
-- q11
select p.nome, count(*) as vezes from professor prof
join pessoa p on prof.matricula_professor = p.matricula_pessoa
join ministra m on m.matricula_professor = prof.matricula_professor
group by p.nome having count(*) = (
select max(contagem)
from (
select count(*) as contagem from professor prof
  join pessoa p on prof.matricula_professor = p.matricula_pessoa
  join ministra m on m.matricula_professor = prof.matricula_professor
group by p.nome
)as sub
);

-- q12

select p.nome, prof.data_admissao, count(*) as vezes from professor prof
join pessoa p on prof.matricula_professor = p.matricula_pessoa
join ministra m on m.matricula_professor = prof.matricula_professor
group by p.nome, prof.data_admissao having count(*) > 4;


-- q13
select * from aluno a
join pessoa p on a.matricula_aluno = p.matricula_pessoa
join aluno_turma at2 on p.matricula_pessoa = at2.matricula_aluno
where at2.ano_semestre = "2010.1";

select count(distinct p.matricula_pessoa) as qtd_alunos from aluno a
                 join pessoa p on a.matricula_aluno = p.matricula_pessoa
                 join aluno_turma at2 on p.matricula_pessoa = at2.matricula_aluno
where at2.ano_semestre = "2010.1" and at2.codigo_projeto is not null;

-- q14
select * from aluno a
join pessoa p on a.matricula_aluno = p.matricula_pessoa
join monitoria m on p.matricula_pessoa = m.matricula_aluno;

select p.nome, count(*) as qtd_monitoria from aluno a
  join pessoa p on a.matricula_aluno = p.matricula_pessoa
  join monitoria m on p.matricula_pessoa = m.matricula_aluno
group by p.nome;

-- q15
select p.nome, p.matricula_pessoa, pj.titulo from aluno a
      join pessoa p on a.matricula_aluno = p.matricula_pessoa
      join aluno_turma at2 on p.matricula_pessoa = at2.matricula_aluno
      join projeto pj on at2.codigo_projeto = pj.codigo_projeto
where pj.conceito ="REGULAR"
group by p.nome,p.matricula_pessoa,pj.titulo