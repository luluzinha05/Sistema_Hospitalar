-- Update
INSERT INTO plano_de_saude (nome_plano, telefone, cobertura)
SELECT 'Unimed', telefone, cobertura 
FROM plano_de_saude 
WHERE nome_plano = 'Unimed Rio';

update credenciamento
set nome_plano = 'Unimed'
where nome_plano = 'Unimed Rio';

update fatura
set nome_plano = 'Unimed'
where nome_plano = 'Unimed Rio';

update paciente
set nome_plano = 'Unimed'
where nome_plano = 'Unimed Rio';

-- Delete
delete from plano_de_saude where nome_plano = 'Unimed Rio';