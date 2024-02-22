-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema HerenciaMexicarties
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema HerenciaMexicarties
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `HerenciaMexicarties` DEFAULT CHARACTER SET utf8 ;
USE `HerenciaMexicarties` ;

-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`User` (
  `idUser` INT NOT NULL AUTO_INCREMENT,
  `emailUser` VARCHAR(45) NOT NULL,
  `nameUser` VARCHAR(45) NOT NULL,
  `passwordUser` VARCHAR(45) NOT NULL,
  `phoneUser` VARCHAR(45) NOT NULL,
  `typeUser` ENUM("Admin", "User") NOT NULL,
  PRIMARY KEY (`idUser`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`PaymentMethods`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`PaymentMethods` (
  `idPaymentMethods` INT NOT NULL,
  `payment Methods` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPaymentMethods`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`Order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`Order` (
  `idOrder` INT NOT NULL AUTO_INCREMENT,
  `datetimeOrder` DATETIME NOT NULL,
  `total` DOUBLE NOT NULL,
  `numArticles` INT NOT NULL,
  `Customer_idCustomer` INT NOT NULL,
  `PaymentMethods_idPaymentMethods` INT NOT NULL,
  PRIMARY KEY (`idOrder`),
  INDEX `fk_Order_Customer1_idx` (`Customer_idCustomer` ASC) VISIBLE,
  INDEX `fk_Order_PaymentMethods1_idx` (`PaymentMethods_idPaymentMethods` ASC) VISIBLE,
  CONSTRAINT `fk_Order_Customer1`
    FOREIGN KEY (`Customer_idCustomer`)
    REFERENCES `HerenciaMexicarties`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_PaymentMethods1`
    FOREIGN KEY (`PaymentMethods_idPaymentMethods`)
    REFERENCES `HerenciaMexicarties`.`PaymentMethods` (`idPaymentMethods`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`Category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`Category` (
  `idCategory` INT NOT NULL AUTO_INCREMENT,
  `nameCategory` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategory`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`Handicraftsman`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`Handicraftsman` (
  `idHandicraftsman` INT NOT NULL,
  `nameHandicraftsman` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idHandicraftsman`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`Product` (
  `idProduct` INT NOT NULL AUTO_INCREMENT,
  `nameProduct` VARCHAR(45) NOT NULL,
  `price` DOUBLE NOT NULL,
  `stock` INT NOT NULL,
  `SizeClothes` VARCHAR(45) NULL,
  `productLocation` VARCHAR(45) NOT NULL,
  `Category_idCategory` INT NOT NULL,
  `Handicraftsman_idHandicraftsman` INT NOT NULL,
  PRIMARY KEY (`idProduct`),
  INDEX `fk_Product_Category1_idx` (`Category_idCategory` ASC) VISIBLE,
  INDEX `fk_Product_Handicraftsman1_idx` (`Handicraftsman_idHandicraftsman` ASC) VISIBLE,
  CONSTRAINT `fk_Product_Category1`
    FOREIGN KEY (`Category_idCategory`)
    REFERENCES `HerenciaMexicarties`.`Category` (`idCategory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Product_Handicraftsman1`
    FOREIGN KEY (`Handicraftsman_idHandicraftsman`)
    REFERENCES `HerenciaMexicarties`.`Handicraftsman` (`idHandicraftsman`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`Order_has_Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`Order_has_Product` (
  `Order_idOrder` INT NOT NULL,
  `Product_idProduct` INT NOT NULL,
  `numProducts` INT NOT NULL,
  `total` DOUBLE NOT NULL,
  INDEX `fk_Order_has_Product_Product1_idx` (`Product_idProduct` ASC) VISIBLE,
  INDEX `fk_Order_has_Product_Order1_idx` (`Order_idOrder` ASC) VISIBLE,
  PRIMARY KEY (`Order_idOrder`, `Product_idProduct`),
  CONSTRAINT `fk_Order_has_Product_Order1`
    FOREIGN KEY (`Order_idOrder`)
    REFERENCES `HerenciaMexicarties`.`Order` (`idOrder`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_has_Product_Product1`
    FOREIGN KEY (`Product_idProduct`)
    REFERENCES `HerenciaMexicarties`.`Product` (`idProduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`Comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`Comment` (
  `idComment` INT NOT NULL,
  `comment` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `nameUser` VARCHAR(45) NOT NULL,
  `User_idUser` INT NULL,
  PRIMARY KEY (`idComment`),
  INDEX `fk_Comment_User1_idx` (`User_idUser` ASC) VISIBLE,
  CONSTRAINT `fk_Comment_User1`
    FOREIGN KEY (`User_idUser`)
    REFERENCES `HerenciaMexicarties`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`Address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`Address` (
  `idAddress` INT NOT NULL,
  `address` VARCHAR(45) NULL,
  `numInt` VARCHAR(45) NULL,
  `numExt` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zipCode` VARCHAR(45) NULL,
  PRIMARY KEY (`idAddress`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`Address_has_Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`Address_has_Customer` (
  `Address_idAddress` INT NOT NULL,
  `Customer_idCustomer` INT NOT NULL,
  PRIMARY KEY (`Address_idAddress`, `Customer_idCustomer`),
  INDEX `fk_Address_has_Customer_Customer1_idx` (`Customer_idCustomer` ASC) VISIBLE,
  INDEX `fk_Address_has_Customer_Address1_idx` (`Address_idAddress` ASC) VISIBLE,
  CONSTRAINT `fk_Address_has_Customer_Address1`
    FOREIGN KEY (`Address_idAddress`)
    REFERENCES `HerenciaMexicarties`.`Address` (`idAddress`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Address_has_Customer_Customer1`
    FOREIGN KEY (`Customer_idCustomer`)
    REFERENCES `HerenciaMexicarties`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
