-- consulta.sql

-- Criando a VIEW para contas não pagas
CREATE VIEW `ContasNaoPagas` AS
SELECT 
    cr.ID AS `ID_Conta`,
    c.Nome AS `Nome_Cliente`,
    c.CPF AS `CPF_Cliente`,
    cr.DataVencimento AS `Data_Vencimento`,
    cr.Valor AS `Valor_Conta`
FROM 
    `Loja`.`ContaReceber` cr
JOIN 
    `Loja`.`Cliente` c ON cr.Cliente_ID = c.ID
WHERE 
    cr.Situação = '1';

-- Consulta para visualizar as contas não pagas
SELECT * FROM `ContasNaoPagas`;
