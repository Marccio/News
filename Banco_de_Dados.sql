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
    img VARCHAR (30),
    PRIMARY KEY (id),
    CONSTRAINT fk_email_Usuario FOREIGN KEY (email_Usuario) REFERENCES usuario(email)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)ENGINE = InnoDB;

INSERT INTO noticia(titulo, resumo, texto, email_Usuario, img) VALUES ('Primeira imagem do buraco negro',
'Visualizar um buraco negro era o sonho de muitos físicos. Ele foi finalmente realizado pela equipe de 200 cientistas do projeto Event Horizon Telescope (EHT), que divulgou imagens de um buraco negro pela primeira vez na história na quarta-feira (10).',
 'Desde o início das observações no projeto até a publicação dos resultados, foram dois anos de muito trabalho. A sincronização de oito telescópios produziu a imagem tão esperada do buraco negro na galáxia M87.
Antes disso, cientistas vinham estudando buracos negros pelo menos desde o século 18. Há cerca de duas décadas chegaram à conclusão de que seria possível obter uma imagem do círculo de luz, ou da sombra do buraco negro, por meio de radiotelescópios.
Muitas simulações e imagens computadorizadas foram produzidas pelos estudiosos e várias delas foram publicadas com a primeira foto do buraco negro. A imagem do anel de luz em torno de um ponto escuro no universo despertou a curiosidade de muita gente.', 
 'vitoriapaulafofa@ig.com.br','Resources/blackhole.jpg');
    
INSERT INTO noticia(titulo, resumo, texto, email_Usuario, img) VALUES ('Como a tecnologia está revolucionando a indústria da saúde',
'As gigantes de tecnologia e as healthtechs promovem transformações profundas em um setor tradicionalmente avesso a mudanças',
'Em 2017, os americanos que entrassem na App Store encontrariam um aplicativo diferente de tudo o que já fora oferecido na loja digital — o convite para um estudo sobre o coração. Em uma parceria (àquela época inusitada), a Apple e a Escola de Medicina da Universidade Stanford recrutavam voluntários para um trabalho sobre arritmia cardíaca, um mal comum a 2,5% da população mundial, caracterizado por batimentos cardíacos irregulares.
Para participar do Apple Heart Study, era necessário ter, no mínimo, 22 anos; atender a determinados critérios clínicos de elegibilidade; possuir um iPhone modelo 5s ou superior, e um Apple Watch série 1 ou superior. Os participantes não teriam de fazer nada a não ser usar o relógio. E, caso o alarme do dispositivo soasse, o voluntário deveria entrar em contato com a equipe de telemedicina de Stanford. Provavelmente, seu coração estaria em descompasso.
De 29 de novembro de 2017 a 31 de janeiro de 2019, 419 mil pessoas submeteram seus corações às análises do Apple Watch. Exatos 2.095 participantes (o equivalente a 0,5% do total) apresentaram sintomas de fibrilação arterial, a mais comum das arritmias. Deles, apenas um em cada cinco procurou atendimento.',
'marcioamorosino@hotmail.com','Resources/saudeee.jpeg');

INSERT INTO noticia(titulo, resumo, texto, email_Usuario, img) VALUES ('Joe Biden anuncia pré-candidatura à presidência dos EUA','O anúncio foi feito no Twitter, com vídeos em inglês e espanhol. Biden ainda precisa vencer a nomeação do Partido Democrata para se tornar candidato nas eleições presidenciais, marcadas para novembro do ano que vem.',
'O democrata Joe Biden anunciou, nesta quinta-feira (25), que é pré-candidato à presidência dos Estados Unidos nas eleições de 2020. É a terceira vez que Biden, de 76 anos, tenta concorrer ao cargo máximo da Casa Branca, depois de ter sido vice do ex-presidente Barack Obama nos dois mandatos. Ele ainda precisa vencer a nomeação do Partido Democrata para se tornar candidato.
Biden anunciou sua pré-candidatura com um vídeo publicado no Twitter, no qual cita trechos da declaração de independência americana que exaltam a igualdade entre os homens."Nós nem sempre vivemos à altura desses ideais", disse o pré-candidato. "Mas nós nunca antes nos afastamos deles", afirmou. Biden citou a cidade de Charlottesville, no estado da Virgínia, sul dos Estados Unidos, como o local que é a "casa" da declaração de independência — mas, ao mesmo tempo, onde ocorreram manifestações de grupos supremacistas brancos e neonazistas.Ele criticou o presidente Donald Trump — que afirmou, à época, que existiam "pessoas muito boas" 
em ambos os lados dos protestos. Manifestantes contrários aos supremacistas também foram às ruas de Charlottesville e os dois grupos entraram em confronto, resultando na morte da ativista Heather Heyer.Biden também publicou um segundo vídeo, em espanhol: "Hoje estou anunciando minha candidatura para presidente dos Estados Unidos. Somos os Estados Unidos da América — e juntos não há nada que não possamos fazer. Junte-se a nossa campanha", diz o post
Segundo a agência de notícias Reuters, a primeira aparição pública de Biden como pré-candidato deve ser na próxima segunda (29), em um evento na cidade de Pittsburgh, estado da Pensilvânia, com integrantes de sindicatos — considerados um eleitorado chave.',
'marcioamorosino@hotmail.com','Resources/Biden.jpg');

INSERT INTO noticia(titulo, resumo, texto, email_Usuario, img) VALUES ('Mala de mão fora do padrão começa a ser despachada em aeroportos','Medida começa a ser adotada em aeroportos de Brasília, Curitiba, Campinas e Natal. Bagagem pode ser taxada por companhias aéreas',
'Quatro aeroportos brasileiros vão começar a despachar as malas de mão que estiverem fora dos padrões a partir desta quinta-feira (25) em voos domésticos. São eles o aeroporto Juscelino Kubitschek (Brasília/DF), Afonso Pena (Curitiba/PR), Viracopos (Campinas/SP) e Aluízio Alves (Natal/RN). 
As medidas da bagagem de mão são 55 centímetros de altura, 35 centímetros de largura e 25 centímetros de profundidade, tamanho que segue as recomendações da Associação Internacional de Transporte Aéreo (IATA, na sigla em inglês).
O tamanho visa garantir "melhor acomodação, conforto e segurança" aos passageiros.O processo de orientação sobre o tamanho ideal da bagagem foi feito pela Abear (Associação Brasileira das Empresas Aéreas) entre os dias 10 de abril e 24 de abril deste ano nestes aeroportos. 
Segundo a Abear, as companhias aéreas disponibilizam tarifas que incluem gratuitamente o despacho de bagagem. Caso o cliente precise pagar, os preços partem de R$ 59. ',
'vitoriapaulafofa@ig.com.br','Resources/mala.jpeg');

INSERT INTO noticia(titulo, resumo, texto, email_Usuario, img) VALUES ('Fãs de Microsoft Paint existem - e comemoram decisão da empresa de manter programa no Windows','Empresa havia sinalizado que poderia remover o programa de criação e dição de imagens do Windows. Agora, confirmou que, "por enquanto", ele fica',
'Fãs do programa de criação e edição de imagens Microsoft Paint estão comemorando a confirmação de que, por ora, ele vai continuar fazendo parte do sistema operacional Windows.Em 2017, a Microsoft afirmou que o Paint estaria obsoleto, mas ele sobreviveu.
O assunto voltou aos holofotes nas últimas semanas, quando usuários questionaram se ele seria parte da próxima atualização do Windows 10, que será lançada em maio."Ela é uma porcaria, não é boa, e eu acho que gosto de usar algo que é verdadeiramente uma "ferramenta de lixo" para fazer arte."-diz o artista Lorikeet.',
'vitoriapaulafofa@ig.com.br','Resources/Paint.jpeg');

INSERT INTO noticia(titulo, resumo, texto, email_Usuario, img) VALUES ('Notre-Dame: primeiro alerta de fogo teria falhado por erro humano','Segundo alarme de incêndio soou 20 minutos após o primeiro, mas chamas já haviam se espalhado e era impossível conter seu avanço pela cobertura',
'O primeiro alerta do incêndio que começou na cobertura da Catedral de Notre-Dame, em Paris, no último dia 15, não foi identificado por conta de um "erro humano", segundo informações da emissora francesa BFM TV, afirmando que a pessoa responsável verificou o alarme no local errado.
O primeiro alarme soou às 18h20 (hora local), quando um funcionário da empresa de segurança verificou o alerta, sem encontrar nada. O segundo tocou vinte minutos depois, mas o fogo já havia se espalhado e era tarde demais para conter seu avanço pela cobertura e agulha, que foram reduzidas a cinzas, apesar dos esforços dos bombeiros.
De acordo com esta última informação da BFM TV, os investigadores verificaram que o sistema de alarme funcionou sem problemas, mas foi uma falha humana que impediu um primeiro reconhecimento do perigo.Agora, tentam estabelecer se o computador indicou o alerta no local errado, se houve uma falha de comunicação ou se a pessoa não compreendeu a mensagem, embora a empresa defenda que o funcionário apenas seguiu as indicações do sistema.
"Teríamos ganho meia hora, o que é enorme. Poderíamos seguramente ter conservado a agulha", disse à "BFM TV", o conservador geral de Patrimônio, Jacques Pérot.Às 18h51 (hora local), os dois agentes de segurança alertaram os bombeiros que chegaram em cerca de dez minutos, mas encontraram alguns hidrantes com pouca força para impedir um incêndio que já tinha grandes proporções.
A instalação anti-incêndios estava projetada para apagar um incêndio no início, mas com os atrasos registrados na localização do mesmo, se tornou grande demais, revelou ontem o jornal Le Canard Enchainé.',
'marcioamorosino@hotmail.com','Resources/noter dame.jpeg');

INSERT INTO noticia(titulo, resumo, texto, email_Usuario, img) VALUES ('"Como sou cirurgiã de câncer de mama, pensei que não aconteceria comigo"',"Liz O'Riordan foi diagnosticada com câncer de mama pela primeira vez em 2015",
"'Como muitas mulheres, eu não checava meus seios. Pensava: 'Isso não vai acontecer comigo - sou uma cirurgiã de câncer de mama'.
Liz O'Riordan acabou, no entanto, precisando abrir mão da carreira a que se dedicou por 20 anos após ser diagnosticada com a doença.
Em 2015, aos 40 anos, ela foi submetida a uma mastectomia e, em maio do ano passado, o câncer voltou.
As sessões de radioterapia do segundo tratamento reduziram seus movimentos do ombro, o que levou O'Riordan a tomar a 'emocionalmente muito difícil' decisão de deixar de operar.
Antes de ser diagnosticada, O'Riordan descobriu caroços nos seios que se revelaram ser apenas cistos. Uma mamografia, seis meses antes, mostrara um seio saudável.
Mas, na sequência, outro caroço apareceu e a mãe insistiu para ela fazer uma tomografia.
Ao receber o resultado, a cirurgiã, que mora perto de Bury St Edmunds, em Suffolk, no Reino Unido, já sabia qual era seu prognóstico:
'A maioria dos pacientes recebe a notícia em doses homeopáticas. Eu vi o exame e sabia que precisaria de uma mastectomia, sabia que provavelmente precisaria de quimioterapia porque era jovem, e tinha uma boa noção de qual seria minha chance de estar viva em 10 anos, tudo isso em uma fração de segundos.'
O'Riordan, hoje com 43 anos, afirma que não são muitos médicos que desenvolvem as doenças em que se especializam; Certamente, ninguém em seu departamento no Hospital Ipswich, em Suffolk, tinha câncer de mama.",
'vitoriapaulafofa@ig.com.br',"Resources/Liz O'Riordan");

INSERT INTO noticia(titulo, resumo, texto, email_Usuario, img) VALUES ('Produtos para estimular o convívio entre gerações','Universidade de Stanford anuncia os vencedores da sexta edição do “Desafio do design”',
'O Centro de Longevidade da Universidade de Stanford, na Califórnia, anunciou no dia 16 de abril os vencedores da sexta edição do “Desafio do design” (“Design Challenge”), prêmio voltado para que estudantes criem produtos e serviços que beneficiem todos os aspectos relativos à longevidade. Adoraria que algo semelhante fosse encampado pelo meio acadêmico brasileiro, que ainda está longe de abraçar a causa da intergeracionalidade. Os jovens que estão na universidade ignoram que vão trabalhar num Brasil envelhecido e não têm ideia de como se relacionar com os idosos, um grupo de consumidores que só vem crescendo.Por falar em estimular a convivência entre gerações, esse era exatamente o desafio deste ano. Excepcionalmente, os jurados decidiram que duas equipes deveriam dividir o primeiro lugar, e cada uma receberá dez mil dólares (o equivalente a 40 mil reais). Os projetos empatados chamam-se “Então você acha que conhece sua avó?” (“So you think you know your grandma?”), criado por alunos da Universidade da Califórnia de Berkeley; e “Sala da família” (“Family room”), de Stanford. O terceiro prêmio, no valor de dois mil dólares, foi para “Guerra de travesseiros” (“Pillow fight!”), da YuanZe University, de Taiwan.
“Então você acha que conhece sua avó?” é um jogo de cartas criado para derrubar estereótipos que envolvem os velhos: afinal, a maioria dos netos não imagina as aventuras que pontuaram o passado de seus avós. O objetivo do aplicativo “Sala da família” é registrar e compartilhar as histórias dos idosos através de registros sonoros que utilizam um sistema tecnológico simples, mas de qualidade. Por último, a “Guerra de travesseiros” é uma plataforma de videogames para avós e netos: : almofadas são transformadas em controles dos jogos, usando diversão para aproximar gerações.',
'marcioamorosino@hotmail.com','Resources/Convivio.jpg');

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

