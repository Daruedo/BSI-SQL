DROP DATABASE IF EXISTS `Loja`;
CREATE DATABASE `Loja`;
USE `Loja`;

CREATE TABLE IF NOT EXISTS `Loja`.`Estado` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(50) NOT NULL,
  `UF` CHAR(2) NOT NULL,
  PRIMARY KEY (`ID`));

CREATE TABLE IF NOT EXISTS `Loja`.`Municipio` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Estado_ID` INT NOT NULL,
  `Nome` VARCHAR(80) NOT NULL,
  `CodIBGE` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_Municipio_Estado1_idx` (`Estado_ID` ASC),
  CONSTRAINT `fk_Municipio_Estado1`
    FOREIGN KEY (`Estado_ID`)
    REFERENCES `Loja`.`Estado` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS `Loja`.`Cliente` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(80) NOT NULL,
  `CPF` CHAR(11) NOT NULL,
  `Celular` CHAR(11) NULL,
  `EndLogradouro` VARCHAR(100) NOT NULL,
  `EndNumero` VARCHAR(10) NOT NULL,
  `EndMunicipio` INT NOT NULL,
  `EndCEP` CHAR(8) NULL,
  `Municipio_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_Cliente_Municipio1_idx` (`Municipio_ID` ASC),
  CONSTRAINT `fk_Cliente_Municipio1`
    FOREIGN KEY (`Municipio_ID`)
    REFERENCES `Loja`.`Municipio` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS `Loja`.`ContaReceber` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Cliente_ID` INT NOT NULL,
  `FaturaVendaID` INT NULL,
  `DataConta` DATE NOT NULL,
  `DataVencimento` DATE NOT NULL,
  `Valor` DECIMAL(18,2) NOT NULL,
  `Situação` ENUM('1', '2', '3') NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_ContaReceber_Cliente_idx` (`Cliente_ID` ASC),
  CONSTRAINT `fk_ContaReceber_Cliente`
    FOREIGN KEY (`Cliente_ID`)
    REFERENCES `Loja`.`Cliente` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
