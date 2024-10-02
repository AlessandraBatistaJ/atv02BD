CREATE DATABASE SiteDeJogos;
USE SiteDeJogos;

CREATE TABLE Jogos (
    id_jogo INT AUTO_INCREMENT PRIMARY KEY,
    nome_jogo VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Categorias (
    id_categoria  INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(30) NOT NULL,
  	CONSTRAINT FOREIGN KEY (id_jogos)
  	REFERENCES Jogos(id_jogos)
);

INSERT INTO Jogos (nome_jogo, preco) VALUES
('FC 24', 199.99),
('GTA VI', 299.99),
('Madden 25', 259.99),
('The Companion', 16.99);

INSERT INTO Categorias (nome_categoria) VALUES
('Esportes'),
('Aventura'),
('Ação'),
('Tiro');

SELECT nome_jogo, nome_categorias
FROM
Jogos LEFT JOIN Categorias
ON categorias.id_categoria = Jogos.id_jogo;