SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=1;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

DROP SCHEMA IF EXISTS realNews;
CREATE SCHEMA IF NOT EXISTS realNews;
USE realNews;

DROP TABLE IF EXISTS usuario;
CREATE TABLE usuario (
	email VARCHAR(50),
    senha VARCHAR(50),
	nome VARCHAR(50),
    perfil VARCHAR(50),
    PRIMARY KEY (email)
    )ENGINE = InnoDB;
    
INSERT INTO usuario(email, senha, nome, perfil) VALUES ('vitoriapaulafofa@ig.com.br', 'vitoria123','Vitoria Paula', 'Administrador');
INSERT INTO usuario(email, senha, nome, perfil) VALUES ('andreialins@gmail.com', 'andreia123','Andreia Lins', 'Visitante');
INSERT INTO usuario(email, senha, nome, perfil) VALUES ('marcioamorosino@hotmail.com', 'marcio123','Marcio Amorosino', 'Administrador');
    
    
    
DROP TABLE IF EXISTS noticia CASCADE;
CREATE TABLE noticia(
	id INT AUTO_INCREMENT,
    titulo VARCHAR(100),
    resumo VARCHAR(350),
    texto VARCHAR(2000),
    email_Usuario VARCHAR(50),
    PRIMARY KEY (id),
    CONSTRAINT fk_email_Usuario FOREIGN KEY (email_Usuario) REFERENCES usuario(email)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)ENGINE = InnoDB;

INSERT INTO noticia(titulo, resumo, texto, email_Usuario) VALUES ('Primeira imagem do buraco negro',
'Visualizar um buraco negro era o sonho de muitos físicos. Ele foi finalmente realizado pela equipe de 200 cientistas do projeto Event Horizon Telescope (EHT), que divulgou imagens de um buraco negro pela primeira vez na história na quarta-feira (10).',
 'Desde o início das observações no projeto até a publicação dos resultados, foram dois anos de muito trabalho. A sincronização de oito telescópios produziu a imagem tão esperada do buraco negro na galáxia M87.
Antes disso, cientistas vinham estudando buracos negros pelo menos desde o século 18. Há cerca de duas décadas chegaram à conclusão de que seria possível obter uma imagem do círculo de luz, ou da sombra do buraco negro, por meio de radiotelescópios.
Muitas simulações e imagens computadorizadas foram produzidas pelos estudiosos e várias delas foram publicadas com a primeira foto do buraco negro. A imagem do anel de luz em torno de um ponto escuro no universo despertou a curiosidade de muita gente.', 
 'vitoriapaulafofa@ig.com.br');
    
INSERT INTO noticia(titulo, resumo, texto, email_Usuario) VALUES ('Como a tecnologia está revolucionando a indústria da saúde',
'As gigantes de tecnologia e as healthtechs promovem transformações profundas em um setor tradicionalmente avesso a mudanças',
'Em 2017, os americanos que entrassem na App Store encontrariam um aplicativo diferente de tudo o que já fora oferecido na loja digital — o convite para um estudo sobre o coração. Em uma parceria (àquela época inusitada), a Apple e a Escola de Medicina da Universidade Stanford recrutavam voluntários para um trabalho sobre arritmia cardíaca, um mal comum a 2,5% da população mundial, caracterizado por batimentos cardíacos irregulares.
Para participar do Apple Heart Study, era necessário ter, no mínimo, 22 anos; atender a determinados critérios clínicos de elegibilidade; possuir um iPhone modelo 5s ou superior, e um Apple Watch série 1 ou superior. Os participantes não teriam de fazer nada a não ser usar o relógio. E, caso o alarme do dispositivo soasse, o voluntário deveria entrar em contato com a equipe de telemedicina de Stanford. Provavelmente, seu coração estaria em descompasso.
De 29 de novembro de 2017 a 31 de janeiro de 2019, 419 mil pessoas submeteram seus corações às análises do Apple Watch. Exatos 2.095 participantes (o equivalente a 0,5% do total) apresentaram sintomas de fibrilação arterial, a mais comum das arritmias. Deles, apenas um em cada cinco procurou atendimento.',
'marcioamorosino@hotmail.com');

DROP TABLE IF EXISTS comentario;
CREATE TABLE comentario(
	id INT AUTO_INCREMENT,
    id_noticia INT,
    email_usuario VARCHAR(50),
    texto VARCHAR(140),
    PRIMARY KEY (id),
    CONSTRAINT fk_id_noticia FOREIGN KEY (id_noticia) REFERENCES noticia(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT fk_email FOREIGN KEY (email_usuario) REFERENCES usuario(email)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)ENGINE = InnoDB;

INSERT INTO comentario(id_noticia, email_usuario, texto) VALUES (1, 'andreialins@gmail.com', 'Que avanço para ciência, um orgulho');
INSERT INTO comentario(id_noticia, email_usuario, texto) VALUES (1, 'marcioamorosino@hotmail.com', 'É tão importante ver grandes mulheres na ciência!');
INSERT INTO comentario(id_noticia, email_usuario, texto) VALUES (2, 'andreialins@gmail.com', 'A tecnologia colabora, mas o ser humano não quer se ajudar, difícil.');

