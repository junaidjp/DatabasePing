SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `bankofviz` DEFAULT CHARACTER SET latin1 ;
USE `bankofviz` ;

-- -----------------------------------------------------
-- Table `bankofviz`.`account`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bankofviz`.`account` (
  `Id` INT(11) NOT NULL ,
  `Name` VARCHAR(100) NULL DEFAULT NULL ,
  `FirstAccountType` VARCHAR(50) NULL DEFAULT NULL ,
  `SecondAccountType` VARCHAR(50) NULL DEFAULT NULL ,
  `AccountNumberOne` VARCHAR(50) NULL DEFAULT NULL ,
  `AccountNumberTwo` VARCHAR(50) NULL DEFAULT NULL ,
  `LoanType` VARCHAR(50) NULL DEFAULT NULL ,
  `LoanAmount` INT(50) NULL DEFAULT NULL ,
  `stockKey` VARCHAR(50) NULL DEFAULT NULL ,
  PRIMARY KEY (`Id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `bankofviz`.`stock`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bankofviz`.`stock` (
  `StockId` INT(11) NOT NULL ,
  `StockName` VARCHAR(6) NULL DEFAULT NULL ,
  `StockDescription` VARCHAR(50) NULL DEFAULT NULL ,
  `StockQuantity` INT(10) NULL DEFAULT NULL ,
  `StartingPrice` FLOAT NULL DEFAULT NULL ,
  `EndingPRice` FLOAT NULL DEFAULT NULL ,
  `stockKey` VARCHAR(25) NULL DEFAULT NULL ,
  PRIMARY KEY (`StockId`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `bankofviz`.`user`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bankofviz`.`user` (
  `id` VARCHAR(6) NULL DEFAULT NULL ,
  `username` VARCHAR(20) NULL DEFAULT NULL ,
  `password` VARCHAR(20) NULL DEFAULT NULL )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

USE `bankofviz` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
