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
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb3 ;
USE `HerenciaMexicarties` ;

-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`user` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `email_user` VARCHAR(45) NOT NULL,
  `name_user` VARCHAR(45) NOT NULL,
  `password_user` VARCHAR(45) NOT NULL,
  `phone_user` VARCHAR(45) NOT NULL,
  `type_user` ENUM("Admin", "User") NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `email_user_UNIQUE` (`email_user` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`payment_met`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`payment_met` (
  `payment_methods_id` INT NOT NULL AUTO_INCREMENT,
  `payment_methods` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`payment_methods_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`order` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `date_time_order` DATETIME NOT NULL,
  `total` DOUBLE NOT NULL,
  `num_articles` INT NOT NULL,
  `user_id` INT NOT NULL,
  `payment_methods_id` INT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_Order_Customer1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_Order_PaymentMethods1_idx` (`payment_methods_id` ASC) VISIBLE,
  CONSTRAINT `fk_Order_Customer1`
    FOREIGN KEY (`user_id`)
    REFERENCES `HerenciaMexicarties`.`user` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_PaymentMethods1`
    FOREIGN KEY (`payment_methods_id`)
    REFERENCES `HerenciaMexicarties`.`payment_met` (`payment_methods_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`category` (
  `category_id` INT NOT NULL AUTO_INCREMENT,
  `name_category` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`handicraftsman`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`handicraftsman` (
  `handicraftsman_id` INT NOT NULL AUTO_INCREMENT,
  `name_handicraftsman` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`handicraftsman_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`product` (
  `product_id` INT NOT NULL AUTO_INCREMENT,
  `name_product` VARCHAR(45) NOT NULL,
  `url` VARCHAR(350) NOT NULL,
  `price` DOUBLE NOT NULL,
  `stock` INT NOT NULL,
  `size_clothes` VARCHAR(45) NULL,
  `product_location` VARCHAR(45) NOT NULL,
  `description` VARCHAR(350) NOT NULL,
  `category_id` INT NOT NULL,
  `handicraftsman_id` INT NOT NULL,
  PRIMARY KEY (`product_id`),
  INDEX `fk_Product_Category1_idx` (`category_id` ASC) VISIBLE,
  INDEX `fk_Product_Handicraftsman1_idx` (`handicraftsman_id` ASC) VISIBLE,
  CONSTRAINT `fk_Product_Category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `HerenciaMexicarties`.`category` (`category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Product_Handicraftsman1`
    FOREIGN KEY (`handicraftsman_id`)
    REFERENCES `HerenciaMexicarties`.`handicraftsman` (`handicraftsman_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`order_has_product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`order_has_product` (
  `order_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `order_has_product_id` INT NOT NULL AUTO_INCREMENT,
  INDEX `fk_Order_has_Product_Product1_idx` (`product_id` ASC) VISIBLE,
  INDEX `fk_Order_has_Product_Order1_idx` (`order_id` ASC) VISIBLE,
  PRIMARY KEY (`order_has_product_id`),
  CONSTRAINT `fk_Order_has_Product_Order1`
    FOREIGN KEY (`order_id`)
    REFERENCES `HerenciaMexicarties`.`order` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_has_Product_Product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `HerenciaMexicarties`.`product` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`comment` (
  `comment_id` INT NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(350) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `name_user` VARCHAR(45) NOT NULL,
  `user_id` INT NULL,
  PRIMARY KEY (`comment_id`),
  INDEX `fk_Comment_User1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_Comment_User1`
    FOREIGN KEY (`user_id`)
    REFERENCES `HerenciaMexicarties`.`user` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`address` (
  `address_id` INT NOT NULL AUTO_INCREMENT,
  `address` VARCHAR(45) NULL,
  `num_int` VARCHAR(45) NULL,
  `num_ext` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip_code` VARCHAR(45) NULL,
  PRIMARY KEY (`address_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HerenciaMexicarties`.`address_has_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HerenciaMexicarties`.`address_has_user` (
  `address_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `address_has_user_id` INT NOT NULL,
  PRIMARY KEY (`address_has_user_id`),
  INDEX `fk_Address_has_Customer_Customer1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_Address_has_Customer_Address1_idx` (`address_id` ASC) VISIBLE,
  CONSTRAINT `fk_Address_has_Customer_Address1`
    FOREIGN KEY (`address_id`)
    REFERENCES `HerenciaMexicarties`.`address` (`address_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Address_has_Customer_Customer1`
    FOREIGN KEY (`user_id`)
    REFERENCES `HerenciaMexicarties`.`user` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`book` (
  `price` DOUBLE NOT NULL,
  `author` VARCHAR(150) NOT NULL,
  `stock` INT NOT NULL,
  `book_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`book_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`order` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_Order_User_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_Order_User`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`user` (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`orderdetail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`orderdetail` (
  `book_id` INT NOT NULL,
  `order_id` INT NOT NULL,
  `order_details_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`order_details_id`),
  INDEX `fk_Book_has_Order_Order1_idx` (`order_id` ASC) VISIBLE,
  INDEX `fk_Book_has_Order_Book1_idx` (`book_id` ASC) VISIBLE,
  CONSTRAINT `fk_Book_has_Order_Book1`
    FOREIGN KEY (`book_id`)
    REFERENCES `mydb`.`book` (`book_id`),
  CONSTRAINT `fk_Book_has_Order_Order1`
    FOREIGN KEY (`order_id`)
    REFERENCES `mydb`.`order` (`order_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
