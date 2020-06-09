CREATE SCHEMA IF NOT EXISTS `DIARIO_WEB`; 

CREATE TABLE IF NOT EXISTS `DIARIO_WEB`.`Usuario` (
  `nickname` VARCHAR(24) NOT NULL,
  `nombre` VARCHAR(24) NOT NULL,
  `apellido` VARCHAR(24) NOT NULL,
  `contraseña` VARCHAR(24) NOT NULL,
  `rango` INT NOT NULL,
  `actual` TINYINT(1) NOT NULL,
  `fechaDeModificacion` DATETIME NOT NULL,
  PRIMARY KEY (`nickname`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `DIARIO_WEB`.`Noticia` (
  `idNoticia` INT NOT NULL AUTO_INCREMENT,
  `contenido` TEXT NOT NULL,
  `tema` VARCHAR(24) NOT NULL,
  `título` VARCHAR(24) NOT NULL,
  `autor` VARCHAR(24) NOT NULL,
  `fechaDeModificacion` DATETIME NOT NULL,
  `bajada` VARCHAR(128) NOT NULL,
  `actual` TINYINT(1) NOT NULL,
  PRIMARY KEY (`idNoticia`),
  INDEX `fk_Noticia_autor_idx` (`autor` ASC) VISIBLE,
  CONSTRAINT `autor`
    FOREIGN KEY (`autor`)
    REFERENCES `DIARIO_WEB`.`Usuario` (`nickname`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `DIARIO_WEB`.`Comentario` (
  `idComentario` INT NOT NULL AUTO_INCREMENT,
  `texto` VARCHAR(128) NOT NULL,
  `noticia` INT NOT NULL,
  `comentarioSuperior` INT NULL,
  `usuario` VARCHAR(24) NOT NULL,
  INDEX `comentario superior_idx` (`comentarioSuperior` ASC) VISIBLE,
  INDEX `usuario_idx` (`usuario` ASC) VISIBLE,
  INDEX `noticia_idx` (`noticia` ASC) VISIBLE,
  PRIMARY KEY (`idComentario`),
  CONSTRAINT `noticia`
    FOREIGN KEY (`noticia`)
    REFERENCES `DIARIO_WEB`.`Noticia` (`idNoticia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `comentario superior`
    FOREIGN KEY (`comentarioSuperior`)
    REFERENCES `DIARIO_WEB`.`Comentario` (`idComentario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `usuario`
    FOREIGN KEY (`usuario`)
    REFERENCES `DIARIO_WEB`.`Usuario` (`nickname`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `DIARIO_WEB`.`Registro de Navegación` (
  `noticia` INT NOT NULL,
  `usuario` VARCHAR(24) NOT NULL,
  `meGusta` TINYINT(1) NOT NULL,
  `fechaDeModificacion` DATETIME NOT NULL,
  PRIMARY KEY (`noticia`, `usuario`),
  INDEX `usuario_idx` (`usuario` ASC) VISIBLE,
  CONSTRAINT `noticia`
    FOREIGN KEY (`noticia`)
    REFERENCES `DIARIO_WEB`.`Noticia` (`idNoticia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `usuario`
    FOREIGN KEY (`usuario`)
    REFERENCES `DIARIO_WEB`.`Usuario` (`nickname`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `DIARIO_WEB`.`Estado` (
  `idEstado` INT NOT NULL,
  `comentario` INT NOT NULL,
  `fechaDeModificacion` DATETIME NOT NULL,
  `estado` ENUM('publicado', 'denunciado', 'en revision', 'invisible') NOT NULL,
  `observacion` VARCHAR(24) NULL,
  `usuario` VARCHAR(24) NOT NULL,
  `actual` TINYINT(1) NOT NULL,
  PRIMARY KEY (`idEstado`),
  INDEX `comentario_idx` (`comentario` ASC) VISIBLE,
  INDEX `usuario_idx` (`usuario` ASC) VISIBLE,
  CONSTRAINT `comentario`
    FOREIGN KEY (`comentario`)
    REFERENCES `DIARIO_WEB`.`Comentario` (`idComentario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `usuario`
    FOREIGN KEY (`usuario`)
    REFERENCES `DIARIO_WEB`.`Usuario` (`nickname`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
