CREATE SCHEMA IF NOT EXISTS realNews;
USE realNews;

DROP TABLE IF EXISTS usuario;
CREATE TABLE usuario (
	email VARCHAR(50),
    nome VARCHAR(50),
    senha VARCHAR(50),
    perfil VARCHAR(50),
    PRIMARY KEY (email)
    )ENGINE = InnoDB;
    
    
    
DROP TABLE IF EXISTS noticia;
CREATE TABLE noticia(
	id INT AUTO_INCREMENT,
    titulo VARCHAR(30),
    resumo VARCHAR(200),
    texto VARCHAR(2000),
    email_Usuario VARCHAR(50),
    PRIMARY KEY (id),
    CONSTRAINT fk_email_Usuario FOREIGN KEY (email_Usuario) REFERENCES usuario(email)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)ENGINE = InnoDB;
    

DROP TABLE IF EXISTS comentario;
CREATE TABLE comentario(
	id INT AUTO_INCREMENT,
    id_noticia INT,
    email VARCHAR(50),
    texto VARCHAR(140),
    PRIMARY KEY (id),
    CONSTRAINT fk_id_noticia FOREIGN KEY (id_noticia) REFERENCES noticia(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)ENGINE = InnoDB;


