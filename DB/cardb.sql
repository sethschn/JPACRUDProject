-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cardb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `cardb` ;

-- -----------------------------------------------------
-- Schema cardb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cardb` DEFAULT CHARACTER SET utf8 ;
USE `cardb` ;

-- -----------------------------------------------------
-- Table `supercar`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `supercar` ;

CREATE TABLE IF NOT EXISTS `supercar` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `top_speed` DECIMAL(5,2) NULL,
  `model_year` INT NULL,
  `engine` VARCHAR(45) NULL,
  `horsepower` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS caruser;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'caruser' IDENTIFIED BY 'notacar';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'caruser';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `supercar`
-- -----------------------------------------------------
START TRANSACTION;
USE `cardb`;
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (1, 'Hennessey Venom GT', 270.49, 2012, '7.0L LSX Twin Turbocharged V8', 1244);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (2, 'Bugatti Veyron Super Sport', 267.8, 2010, '8.0L Quad Turbocharged W16', 1200);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (3, 'Koenigsegg One:1', 267, 2014, '5.0L Twin Turbocharged V8', 1360);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (4, 'Koenigsegg Agera R', 261, 2011, '5.0L Twin Turbocharged V8', 1115);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (5, '9ff GT9-R Porsche', 257, 2009, '4.0L Twin Turbocharged H6', 1120);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (6, 'SSC Ultimate Aero', 256, 2009, '6.3L Twin Turbocharged V8', 1287);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (7, 'Bugatti Veyron EB 16.4', 254.04, 2011, '8.0L Quad Turbocharged W16', 1200);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (8, 'Saleen S7 TT', 248, 2009, '7.0L Twin Turbocharged V8', 750);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (9, 'Koenigsegg CCX', 245, 2010, '4.8L Twin Supercharged V8', 795);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (10, 'McLaren F1', 243, 1998, '6.1L BMW S70/2 V12', 618);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (11, 'Zenvo ST1', 233, 2009, '7.0L Twincharged LS7 V8', 1089);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (12, 'Pagani Huayra', 231, 2012, '6.0L Twin Turbocharged V12', 730);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (13, 'Noble M600', 225, 2011, '4.4L Twin Turbocharged V8', 650);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (14, 'Gumpert Apollo', 225, 2012, '4.2L Twin Turbocharged V8', 650);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (15, 'Lamborghini Veneno', 221, 2013, '6.5L L539 V12', 740);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (16, 'Ferrari LaFerrari', 220, 2014, '6.3L F140FE V12 w/ one electric motor', 963);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (17, 'McLaren P1', 217, 2014, '3.8L Twin Turbocharged V8', 903);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (18, 'Porsche 918 Spyder', 210, 2015, '4.6L V8 w/ two electric motors', 874);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (19, 'McLaren 650S', 207, 2014, '3.8L Twin Turbocharged V8', 670);
INSERT INTO `supercar` (`id`, `name`, `top_speed`, `model_year`, `engine`, `horsepower`) VALUES (20, 'Lamborghini Huracan', 202, 2014, '5.2L V10', 602);

COMMIT;

