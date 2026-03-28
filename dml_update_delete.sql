-- Update
INSERT INTO plano_de_saude (nome, telefone, cobertura)
SELECT 'Unimed', telefone, cobertura 
FROM plano_de_saude 
WHERE nome = 'Unimed Rio';

update credenciamento
set nome = 'Unimed'
where nome = 'Unimed Rio';

update fatura
set nome = 'Unimed'
where nome = 'Unimed Rio';

-- Delete
delete from plano_de_saude where nome = 'Unimed Rio';