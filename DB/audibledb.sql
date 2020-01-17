-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema audibledb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `audibledb` ;

-- -----------------------------------------------------
-- Schema audibledb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `audibledb` DEFAULT CHARACTER SET utf8 ;
USE `audibledb` ;

-- -----------------------------------------------------
-- Table `Audible`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Audible` ;

CREATE TABLE IF NOT EXISTS `Audible` (
  `id` INT NOT NULL,
  `name` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS audibleuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'audibleuser'@'localhost' IDENTIFIED BY 'audibleuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'audibleuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Audible`
-- -----------------------------------------------------
START TRANSACTION;
USE `audibledb`;
INSERT INTO `Audible` (`id`, `name`) VALUES (1, 'Can\'t Hurt Me: Master Your Mind and Defy the Odds');

COMMIT;

