insert into hospital (cnpj, nome) values
('12.345.678/0001-01', 'Hospital Central de Alvorada'),
('23.456.789/0001-12', 'Santa Casa de Misericórdia'),
('34.567.890/0001-23', 'Hospital Infantil Pequeno'),
('45.678.901/0001-34', 'Hospital do Coração (HCor)'),
('56.789.012/0001-45', 'Hospital Municipal São José'),
('67.890.123/0001-56', 'Hospital Regional da Serra'),
('78.901.234/0001-67', 'Hospital de Clínicas Norte'),
('89.012.345/0001-78', 'Centro Médico Esperança'),
('90.123.456/0001-89', 'Hospital Maternidade Vida'),
('01.234.567/0001-90', 'Hospital Oncológico Estrela');

insert into plano_de_saude (nome_plano, telefone, cobertura) values
('Amil Especial', '1133445566', 'regional'),
('Bradesco Saude', '2125334400', 'nacional'),
('Unimed Rio', '2139001122', 'regional'),
('SulAmerica Gold', '1140045566', 'nacional'),
('NotreDame Inter', '1130031000', 'regional'),
('Porto Seguro', '1133663366', 'nacional'),
('Golden Cross', '2121042000', 'regional'),
('Sompo Saude', '1132507000', 'nacional'),
('Care Plus', '1141979000', 'nacional'),
('Allianz Saude', '1131711000', 'nacional');

insert into credenciamento (data, cnpj, nome_plano) values
('2023-01-15', '12.345.678/0001-01', 'Amil Especial'),
('2023-02-10', '23.456.789/0001-12', 'Bradesco Saude'),
('2023-03-05', '34.567.890/0001-23', 'Unimed Rio'),
('2023-03-20', '45.678.901/0001-34', 'SulAmerica Gold'),
('2023-04-12', '56.789.012/0001-45', 'NotreDame Inter'),
('2023-05-18', '67.890.123/0001-56', 'Porto Seguro'),
('2023-06-22', '78.901.234/0001-67', 'Golden Cross'),
('2023-07-30', '89.012.345/0001-78', 'Sompo Saude'),
('2023-08-14', '90.123.456/0001-89', 'Care Plus'),
('2023-09-01', '01.234.567/0001-90', 'Allianz Saude');

insert into leito (status) values
('livre'),
('ocupado'),
('livre'),
('em manutencao'),
('ocupado'),
('livre'),
('em manutencao'),
('livre'),
('ocupado'),
('livre');

insert into enfermeira (cre, nome, turno, especialidade, cre_chefia) values
('CRE-001', 'Ana Paula Souza', 'manha', 'UTI', 'CRE-009'),
('CRE-002', 'Diana Monteiro', 'tarde', 'Pediatria', 'CRE-004'),
('CRE-003', 'Esther Medeiros', 'noite', 'Cardiologia', 'CRE-004'),
('CRE-004', 'Gabriela Carvalho', 'manha', 'Neurologia', 'CRE-001'),
('CRE-005', 'Luiza Tavares', 'tarde', 'Oncologia', 'CRE-001'),
('CRE-006', 'Vitor Marcelino', 'noite', 'Ortopedia', 'CRE-002'),
('CRE-007', 'Carlos Henrique', 'manha', 'Pediatria', 'CRE-002'),
('CRE-008', 'Renata Ferreira', 'tarde', 'UTI', 'CRE-003'),
('CRE-009', 'Juliana Castro', 'noite', 'Geriatria', 'CRE-003'),
('CRE-010', 'Marcos Oliveira', 'manha', 'Cardiologia', 'CRE-001');

insert into ala (tipo, leitos_disponiveis, cnpj, id_leito, cre) values
('UTI', 5, '12.345.678/0001-01', 1, 'CRE-001'),
('Pediatria', 8, '23.456.789/0001-12', 2, 'CRE-002'),
('Cardiologia', 6, '34.567.890/0001-23', 3, 'CRE-003'),
('Neurologia', 4, '45.678.901/0001-34', 4, 'CRE-004'),
('Oncologia', 7, '56.789.012/0001-45', 5, 'CRE-005'),
('Ortopedia', 10, '67.890.123/0001-56', 6, 'CRE-006'),
('Geriatria', 3, '78.901.234/0001-67', 7, 'CRE-007'),
('Maternidade', 9, '89.012.345/0001-78', 8, 'CRE-008'),
('Emergencia', 2, '90.123.456/0001-89', 9, 'CRE-009'),
('Cirurgia', 6, '01.234.567/0001-90', 10, 'CRE-010');

insert into paciente (cpf, nome, idade, telefone, nome_plano) values
('11111111111', 'Ana Silva', 30, '11987654321', 'Amil Especial'),
('22222222222', 'João Souza', 45, '11912345678', 'Bradesco Saude'),
('33333333333', 'Carla Mendes', 25, '11911223344', 'Unimed Rio'),
('44444444444', 'Pedro Oliveira', 50, '11999887766', 'SulAmerica Gold'),
('55555555555', 'Mariana Costa', 28, '11988776655', 'NotreDame Inter'),
('66666666666', 'Lucas Rocha', 35, '11966554433', 'Porto Seguro'),
('77777777777', 'Fernanda Lima', 40, '11955443322', 'Golden Cross'),
('88888888888', 'Rafael Dias', 60, '11944332211', 'Sompo Saude'),
('99999999999', 'Bianca Alves', 22, '11933221100', 'Care Plus'),
('00000000000', 'Carlos Pinto', 55, '11922110099', 'Allianz Saude');

insert into internacao (data_entrada, data_saida, custo, cpf, id_leito) values
('2026-03-01', '2026-03-05', 1500.00, '11111111111', 1),
('2026-02-01', null, 2300.00, '22222222222', 2),
('2026-03-03', null, 800.00, '33333333333', 3),
('2026-03-04', '2026-03-10', 3200.00, '44444444444', 4),
('2026-03-05', '2026-03-12', 1900.00, '55555555555', 5),
('2026-02-05', null, 750.00, '66666666666', 9),
('2026-03-07', '2026-03-14', 4100.00, '77777777777', 2),
('2026-03-08', '2026-03-15', 2700.00, '88888888888', 3),
('2026-03-09', null, 1100.00, '99999999999', 4),
('2026-03-10', '2026-03-17', 3500.00, '00000000000', 5);

insert into medico (crm, nome, telefone, especialidade) values
('CRM/SP 123456', 'Dr. Arnaldo Silva', '11991234567', 'Cardiologia'),
('CRM/RJ 234567', 'Dra. Beatriz Souza', '21992345678', 'Pediatria'),
('CRM/MG 345678', 'Dr. Caio Castro', '31993456789', 'Ortopedia'),
('CRM/SP 456789', 'Dra. Daniela Lima', '11994567890', 'Ginecologia'),
('CRM/PR 567890', 'Dr. Eduardo Rocha', '41995678901', 'Neurologia'),
('CRM/SC 678901', 'Dra. Fernanda Alvez', '48996789012', 'Dermatologia'),
('CRM/RS 789012', 'Dr. Gustavo Guedes', '51997890123', 'Oftalmologia'),
('CRM/BA 890123', 'Dra. Helena Mendes', '71998901234', 'Psiquiatria'),
('CRM/PE 901234', 'Dr. Igor Guimarães', '81999012345', 'Urologia'),
('CRM/DF 012345', 'Dra. Julia Borges', '61990123456', 'Cardiologia');

insert into atendimento (data, hora, status, tipo, observacao, custo, crm, cpf) values
('2026-03-20', '08:30:00', 'realizado', 'consulta', 'Paciente apresenta dores leves.', 250.00, 'CRM/SP 123456', '11111111111'),
('2026-03-21', '10:00:00', 'realizado', 'emergencia', 'Crise hipertensiva.', 500.00, 'CRM/SP 123456', '22222222222'),
('2026-03-22', '14:15:00', 'agendado', 'revisao', 'Retorno pós-operatório.', 0.00, 'CRM/MG 345678', '33333333333'),
('2026-03-23', '09:45:00', 'cancelado', 'consulta', 'Paciente solicitou cancelamento.', 0.00, 'CRM/SP 456789', '44444444444'),
('2026-03-24', '11:00:00', 'realizado', 'consulta', 'Check-up anual.', 300.00, 'CRM/PR 567890', '55555555555'),
('2026-03-25', '16:30:00', 'realizado', 'emergencia', 'Encaminhado via ambulância.', 450.00, 'CRM/SP 123456', '66666666666'),
('2026-03-26', '08:00:00', 'realizado', 'revisao', 'Avaliação de exames de sangue.', 150.00, 'CRM/RS 789012', '77777777777'),
('2026-03-27', '13:00:00', 'realizado', 'consulta', 'Sintomas gripais.', 200.00, 'CRM/BA 890123', '88888888888'),
('2026-03-28', '15:20:00', 'realizado', 'consulta', 'Primeira consulta psiquiátrica.', 350.00, 'CRM/PE 901234', '99999999999'),
('2026-03-29', '09:00:00', 'realizado', 'revisao', 'Ajuste de dosagem de medicação.', 180.00, 'CRM/DF 012345', '00000000000');

insert into exame (tipo, custo, descricao, anexo, cpf) values
('Hemograma Completo', 120.00, 'Análise das células do sangue', null, '11111111111'),
('Eletrocardiograma', 200.00, 'Avaliação da atividade elétrica do coração', null, '22222222222'),
('Raio-X Tórax', 150.00, 'Imagem radiológica da região torácica', null, '33333333333'),
('Ressonância Magnética', 800.00, 'Imagem detalhada de órgãos e tecidos', null, '44444444444'),
('Ultrassom Abdominal', 300.00, 'Avaliação dos órgãos abdominais', null, '55555555555'),
('Tomografia Craniana', 950.00, 'Imagem detalhada do crânio e encéfalo', null, '66666666666'),
('Glicemia em Jejum', 80.00, 'Medição do nível de glicose no sangue', null, '77777777777'),
('Colonoscopia', 600.00, 'Exame do intestino grosso', null, '88888888888'),
('PSA Total', 110.00, 'Rastreamento de câncer de próstata', null, '99999999999'),
('Densitometria Óssea', 250.00, 'Avaliação da densidade mineral dos ossos', null, '00000000000');

insert into pedido (data, hora, crm, id_exame) values
('2026-03-01', '08:00', 'CRM/SP 123456', 1),
('2026-03-05', '09:30', 'CRM/RJ 234567', 2),
('2026-03-10', '10:00', 'CRM/MG 345678', 3),
('2026-03-15', '11:15', 'CRM/SP 456789', 4),
('2026-03-20', '13:00', 'CRM/PR 567890', 5),
('2026-03-22', '14:30', 'CRM/SC 678901', 6),
('2026-03-24', '08:45', 'CRM/RS 789012', 7),
('2026-03-25', '15:00', 'CRM/BA 890123', 8),
('2026-03-26', '16:20', 'CRM/PE 901234', 9),
('2026-03-27', '07:30', 'CRM/DF 012345', 10);

insert into laboratorio (classificacao) values
('externo'),
('interno'),
('externo'),
('interno'),
('externo'),
('interno'),
('externo'),
('interno'),
('externo'),
('interno');

insert into laudo (resultado, id_exame, id_lab) values
('Hemograma normal', 1, 1),
('Hemograma com anemia', 2, 2),
('Imagem sem alterações', 3, 3),
('Ressonância sem lesões', 4, 4),
('Órgãos abdominais normais', 5, 5),
('Tomografia sem alterações', 6, 6);

insert into prescricao (data, id_atendimento) values
('2026-03-20', 1),
('2026-03-21', 2),
('2026-03-22', 3),
('2026-03-23', 4),
('2026-03-24', 5),
('2026-03-25', 6),
('2026-03-26', 7),
('2026-03-27', 8),
('2026-03-28', 9),
('2026-03-29', 10);

insert into medicamento (nome) values
('Paracetamol'),
('Ibuprofeno'),
('Amoxicilina'),
('Dipirona'),
('Omeprazol'),
('Azitromicina'),
('Losartana'),
('Metformina'),
('Cetirizina'),
('Prednisona');

insert into prescricao_medicamento (id_prescricao, id_medicamento, dosagem, quantidade_dias, descricao) values
(1, 1, '500mg', 5, 'Tomar 1 comprimido a cada 8h'),
(2, 1, '500mg', 3, 'Tomar em caso de dor'),
(3, 1, '500mg', 7, 'Tomar após refeições'),
(4, 4, '1g', 3, 'Tomar em caso de dor'),
(5, 4, '1g', 5, 'Uso conforme necessidade'),
(6, 4, '1g', 2, 'Tomar a cada 6h'),
(7, 2, '400mg', 7, 'Tomar após refeições'),
(8, 3, '500mg', 10, 'Uso contínuo'),
(9, 5, '20mg', 30, 'Tomar em jejum pela manhã'),
(10, 7, '50mg', 60, 'Controle de pressão arterial');

insert into fatura (data_emissao, data_vencimento, status, forma_pagamento, nome_plano, id_atendimento) values
('2026-03-20', '2026-04-20', 'pago', 'pix', 'Amil Especial', 1),
('2026-03-21', '2026-04-21', 'pago', 'cartao', 'Bradesco Saude', 2),
('2026-03-22', '2026-04-22', 'pendente', 'boleto', 'Unimed Rio', 3),
('2026-03-23', '2026-04-23', 'cancelado', 'dinheiro', 'SulAmerica Gold', 4),
('2026-03-24', '2026-04-24', 'pago', 'pix', 'NotreDame Inter', 5),
('2026-03-25', '2026-04-25', 'em_analise', 'cartao', 'Porto Seguro', 6),
('2026-03-26', '2026-04-26', 'pago', 'boleto', 'Golden Cross', 7),
('2026-03-27', '2026-04-27', 'pendente', 'pix', 'Sompo Saude', 8),
('2026-03-28', '2026-04-28', 'em_analise', 'cartao', 'Unimed Rio', 9),
('2026-03-29', '2026-04-29', 'pago', 'dinheiro', 'Allianz Saude', 10);

insert into fatura_item (id_fatura, tipo, id_atendimento, id_exame, id_internacao) values 
(1, 'atendimento', 1, null, null),
(1, 'exame', null, 1, null),
(1, 'internacao', null, null, 1),
(2, 'atendimento', 2, null, null),
(2, 'exame', null, 2, null),
(2, 'internacao', null, null, 2),
(3, 'atendimento', 3, null, null),
(3, 'exame', null, 3, null),
(3, 'internacao', null, null, 3),
(4, 'atendimento', 4, null, null),
(4, 'exame', null, 4, null),
(4, 'internacao', null, null, 4),
(5, 'atendimento', 5, null, null),
(5, 'exame', null, 5, null),
(5, 'internacao', null, null, 5),
(6, 'atendimento', 6, null, null),
(6, 'exame', null, 6, null),
(6, 'internacao', null, null, 6),
(7, 'atendimento', 7, null, null),
(7, 'exame', null, 7, null),
(7, 'internacao', null, null, 7),
(8, 'atendimento', 8, null, null),
(8, 'exame', null, 8, null),
(8, 'internacao', null, null, 8),
(9, 'atendimento', 9, null, null),
(9, 'exame', null, 9, null),
(9, 'internacao', null, null, 9),
(10, 'atendimento', 10, null, null),
(10, 'exame', null, 10, null),
(10, 'internacao', null, null, 10);

insert into pesquisa_satisfacao (data, nota, comentario, recomendaria, tempo_espera, id_atendimento) values
('2026-03-20', 9, 'Atendimento muito atencioso do Dr. Arnaldo.', true, 15, 1),
('2026-03-21', 7, 'O médico foi ótimo, mas a espera na emergência foi longa.', true, 120, 2),
('2026-03-22', 10, 'O sistema de agendamento funciona muito bem.', true, 0, 3),
('2026-03-23', 2, 'O atendimento foi cancelado em cima da hora.', false, 0, 4),
('2026-03-24', 10, 'Excelente atendimento, recepção muito rápida.', true, 5, 5),
('2026-03-25', 5, 'Atraso considerável no início do atendimento.', false, 90, 6),
('2026-03-26', 8, 'Consulta de revisão rápida e eficiente.', true, 20, 7),
('2026-03-27', 6, 'Médico demonstrou pressa durante a consulta.', false, 40, 8),
('2026-03-28', 9, 'Dra. Julia foi muito empática.', true, 25, 9),
('2026-03-29', 9, 'Gostei muito das explicações sobre a medicação.', true, 10, 10);