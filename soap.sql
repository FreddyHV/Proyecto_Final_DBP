-- MySQL Script generated by MySQL Workbench
-- Sun Aug  8 21:26:34 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema soup
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema soup
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `soup` DEFAULT CHARACTER SET latin1 ;
USE `soup` ;

-- -----------------------------------------------------
-- Table `soup`.`cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soup`.`cursos` (
  `idCurso` INT(11) NOT NULL,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  `Profesor` VARCHAR(45) NULL DEFAULT NULL,
  `Año` INT(11) NULL DEFAULT NULL,
  `Semestre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCurso`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `soup`.`estudiante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soup`.`estudiante` (
  `cui` INT(11) NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `dni` INT(11) NULL DEFAULT NULL,
  `correo` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`cui`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `soup`.`matriculas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soup`.`matriculas` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `cui` INT(11) NULL DEFAULT NULL,
  `idCurso` INT(11) NULL DEFAULT NULL,
  `turno` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
