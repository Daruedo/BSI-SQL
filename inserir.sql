-- inserir.sql

-- Inserindo dados na tabela Estado
INSERT INTO `Loja`.`Estado` (`Nome`, `UF`) VALUES 
('São Paulo', 'SP'),
('Rio de Janeiro', 'RJ'),
('Minas Gerais', 'MG');

-- Inserindo dados na tabela Municipio
INSERT INTO `Loja`.`Municipio` (`Nome`, `Estado_ID`, `CodIBGE`) VALUES 
('São Paulo', 1, 3550308),
('Rio de Janeiro', 2, 3304557),
('Belo Horizonte', 3, 3106200);

-- Inserindo dados na tabela Cliente
INSERT INTO `Loja`.`Cliente` (`Nome`, `CPF`, `Celular`, `EndLogradouro`, `EndNumero`, `EndMunicipio`, `EndCEP`, `Municipio_ID`) VALUES 
('João Silva', '12345678901', '11987654321', 'Rua A', '100', 1, '12345678', 1),
('Maria Souza', '23456789012', '21987654321', 'Rua B', '200', 2, '23456789', 2),
('Carlos Pereira', '34567890123', '31987654321', 'Rua C', '300', 3, '34567890', 3);

-- Inserindo dados na tabela ContaReceber
INSERT INTO `Loja`.`ContaReceber` (`Cliente_ID`, `FaturaVendaID`, `DataConta`, `DataVencimento`, `Valor`, `Situação`) VALUES 
(1, NULL, '2024-01-01', '2024-02-01', 100.00, '1'),
(2, NULL, '2024-01-10', '2024-02-10', 200.00, '2'),
(3, NULL, '2024-01-20', '2024-02-20', 300.00, '3');
