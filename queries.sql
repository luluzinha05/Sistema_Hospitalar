-- Trigger
create or replace function valida_leito()
returns trigger as $$
begin 
	if exists (
		select 1
		from internacao
		where cpf = new.cpf
) 
	then
		RAISE EXCEPTION 'ERROR: ESTE PACIENTE JÁ ESTÁ INTERNADO';
	end if;
return new;
end; 
$$ language plpgsql;

create trigger tg_valida_leito
before insert on internacao
for each row
execute function valida_leito();

-- Teste Trigger
insert into internacao (data_entrada, data_saida, cpf, id_leito, custo)
values ('2025-03-05', null, '11111111111', 1, 200.00);

-- Queries
-- 1- Quais são os nomes e telefones de todos os médicos da especialidade “Cardiologia”? 
select nome, telefone
from medico
where especialidade = 'Cardiologia';

-- 3- Quais exames ainda não têm resultado (data_resultado IS NULL) e foram solicitados no  mês atual? 
select e.tipo, p.data, l.resultado from exame e
inner join pedido p on e.id_exame = p.id_exame
left join laudo l on e.id_exame = l.id_exame
where l.id_laudo is null
and extract(month from p.data) = extract(month from current_date)
and extract(year from p.data) = extract(year from current_date);

-- 4- Quantidade de exames por laboratório.
select 
    l.id_lab, 
    count(l.id_exame) as quantidade_exames
from exame e 
inner join laudo l on e.id_exame = l.id_exame
group by l.id_lab;

-- 5-Liste o nome do paciente, o número do leito e a data de entrada para todas as  internações ativas (data_saida IS NULL).
select 
    p.nome as nome_paciente, 
    i.id_leito as numero_do_leito, 
    i.data_entrada
from internacao i
inner join paciente p on i.cpf = p.cpf
where i.data_saida is null
order by i.data_entrada asc;

-- 6- Quantos atendimentos cada médico realizou no último mês? Apresente o nome do médico e a quantidade.
select 
    m.nome as nome_medico,
    count(a.id_atendimento ) quantidade_atendimentos
from atendimento a
inner join medico m on a.crm = m.crm
where a.data >= current_date - interval '1 month'
group by m.nome
order by quantidade_atendimentos desc; 

-- 9- Qual o valor total faturado para cada plano de saúde no ano de 2026? Apresente o nome  do plano e o valor total. 
select
    f.nome, 
    sum(
        case
            when fi.tipo = 'atendimento' then (select custo from atendimento where id_atendimento = fi.id_referencia)
            when fi.tipo = 'exame'       then (select custo from exame where id_exame = fi.id_referencia)
            when fi.tipo = 'internacao'  then (select custo from internacao where id_internacao = fi.id_referencia)
        end
    ) as total
from fatura_item fi
inner join fatura f on fi.id_fatura = f.id_fatura
where extract(year from f.data_emissao) = 2026
group by f.nome;

-- 10- Quais são os dois medicamentos mais prescritos no hospital? Apresente o nome do  medicamento e a quantidade de prescrições. 
select m.nome, count(pm.id_prescricao) as qtd_prescricao from medicamento m 
inner join prescricao_medicamento pm on m.id_medicamento = pm.id_medicamento
group by m.nome
order by qtd_prescricao desc
limit 2;

-- 11- Liste o nome do médico, a especialidade e a quantidade de pacientes atendidos por  cada médico. 
select m.nome, m.especialidade, count(a.cpf) as qtd_pacientes_atendidos from medico m 
inner join atendimento a on m.crm = a.crm 
group by m.nome, m.especialidade;

-- 12- Quais leitos estão ocupados há mais de 15 dias? Apresente o número do leito, o nome  do paciente e a data de entrada. 
select l.id_leito, i.data_entrada from leito l 
inner join internacao i on l.id_leito = i.id_leito
where i.data_entrada < current_date - interval '15 days'
and i.data_saida is null;

-- 13- Qual o valor total faturado por tipo de atendimento (consulta, exame, internação) 
select
    fi.tipo,
    sum(
        case
            when fi.tipo = 'atendimento' then (select custo from atendimento where id_atendimento = fi.id_referencia)
            when fi.tipo = 'exame'       then (select custo from exame where id_exame = fi.id_referencia)
            when fi.tipo = 'internacao'  then (select custo from internacao where id_internacao = fi.id_referencia)
        end
    ) as total
from fatura_item fi
inner join fatura f on fi.id_fatura = f.id_fatura 
group by fi.tipo;

-- 14- Qual o valor total faturado por por um determinado plano de saúde.
select
    f.nome,
    sum(
        case
            when fi.tipo = 'atendimento' then (select custo from atendimento where id_atendimento = fi.id_referencia)
            when fi.tipo = 'exame'       then (select custo from exame where id_exame = fi.id_referencia)
            when fi.tipo = 'internacao'  then (select custo from internacao where id_internacao = fi.id_referencia)
        end
    ) as total
from fatura_item fi
inner join fatura f on fi.id_fatura = f.id_fatura 
group by f.nome;




