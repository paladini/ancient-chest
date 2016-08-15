SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `projeto-musica` ;
CREATE SCHEMA IF NOT EXISTS `projeto-musica` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `projeto-musica` ;

-- -----------------------------------------------------
-- Table `projeto-musica`.`Acorde`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projeto-musica`.`Acorde` ;

CREATE  TABLE IF NOT EXISTS `projeto-musica`.`Acorde` (
  `idAcorde` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(70) NOT NULL ,
  `simbolo` VARCHAR(45) NULL ,
  PRIMARY KEY (`idAcorde`) )
ENGINE = InnoDB;

CREATE UNIQUE INDEX `nome_UNIQUE` ON `projeto-musica`.`Acorde` (`nome` ASC) ;


-- -----------------------------------------------------
-- Table `projeto-musica`.`Nota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projeto-musica`.`Nota` ;

CREATE  TABLE IF NOT EXISTS `projeto-musica`.`Nota` (
  `idNota` INT NOT NULL AUTO_INCREMENT ,
  `numCasa` INT NOT NULL ,
  `numCorda` INT NOT NULL ,
  PRIMARY KEY (`idNota`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `projeto-musica`.`Acorde_nota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projeto-musica`.`Acorde_nota` ;

CREATE  TABLE IF NOT EXISTS `projeto-musica`.`Acorde_nota` (
  `Acorde_idAcorde` INT NOT NULL ,
  `Nota_idNota` INT NOT NULL ,
  PRIMARY KEY (`Acorde_idAcorde`, `Nota_idNota`) ,
  CONSTRAINT `fk_Acorde_has_Nota_Acorde`
    FOREIGN KEY (`Acorde_idAcorde` )
    REFERENCES `projeto-musica`.`Acorde` (`idAcorde` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Acorde_has_Nota_Nota1`
    FOREIGN KEY (`Nota_idNota` )
    REFERENCES `projeto-musica`.`Nota` (`idNota` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Acorde_has_Nota_Nota1_idx` ON `projeto-musica`.`Acorde_nota` (`Nota_idNota` ASC) ;

CREATE INDEX `fk_Acorde_has_Nota_Acorde_idx` ON `projeto-musica`.`Acorde_nota` (`Acorde_idAcorde` ASC) ;


-- -----------------------------------------------------
-- Table `projeto-musica`.`Campo_harmonico`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projeto-musica`.`Campo_harmonico` ;

CREATE  TABLE IF NOT EXISTS `projeto-musica`.`Campo_harmonico` (
  `idCampo_harmonico` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idCampo_harmonico`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `projeto-musica`.`Campo_acorde`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projeto-musica`.`Campo_acorde` ;

CREATE  TABLE IF NOT EXISTS `projeto-musica`.`Campo_acorde` (
  `Acorde_idAcorde` INT NOT NULL ,
  `Campo_harmonico_idCampo_harmonico` INT NOT NULL ,
  PRIMARY KEY (`Acorde_idAcorde`, `Campo_harmonico_idCampo_harmonico`) ,
  CONSTRAINT `fk_Acorde_has_Campo_harmonico_Acorde1`
    FOREIGN KEY (`Acorde_idAcorde` )
    REFERENCES `projeto-musica`.`Acorde` (`idAcorde` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Acorde_has_Campo_harmonico_Campo_harmonico1`
    FOREIGN KEY (`Campo_harmonico_idCampo_harmonico` )
    REFERENCES `projeto-musica`.`Campo_harmonico` (`idCampo_harmonico` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Acorde_has_Campo_harmonico_Campo_harmonico1_idx` ON `projeto-musica`.`Campo_acorde` (`Campo_harmonico_idCampo_harmonico` ASC) ;

CREATE INDEX `fk_Acorde_has_Campo_harmonico_Acorde1_idx` ON `projeto-musica`.`Campo_acorde` (`Acorde_idAcorde` ASC) ;


-- -----------------------------------------------------
-- Table `projeto-musica`.`Campo_nota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projeto-musica`.`Campo_nota` ;

CREATE  TABLE IF NOT EXISTS `projeto-musica`.`Campo_nota` (
  `Campo_harmonico_idCampo_harmonico` INT NOT NULL ,
  `Nota_idNota` INT NOT NULL ,
  PRIMARY KEY (`Campo_harmonico_idCampo_harmonico`, `Nota_idNota`) ,
  CONSTRAINT `fk_Campo_harmonico_has_Nota_Campo_harmonico1`
    FOREIGN KEY (`Campo_harmonico_idCampo_harmonico` )
    REFERENCES `projeto-musica`.`Campo_harmonico` (`idCampo_harmonico` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Campo_harmonico_has_Nota_Nota1`
    FOREIGN KEY (`Nota_idNota` )
    REFERENCES `projeto-musica`.`Nota` (`idNota` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Campo_harmonico_has_Nota_Nota1_idx` ON `projeto-musica`.`Campo_nota` (`Nota_idNota` ASC) ;

CREATE INDEX `fk_Campo_harmonico_has_Nota_Campo_harmonico1_idx` ON `projeto-musica`.`Campo_nota` (`Campo_harmonico_idCampo_harmonico` ASC) ;

USE `projeto-musica` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
