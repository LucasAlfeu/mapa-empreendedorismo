CREATE DATABASE IF NOT EXISTS mapa_empreendedorismo;

USE mapa_empreendedorismo;

-- Tabela Usuario
CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    usuario VARCHAR(50) UNIQUE NOT NULL,
    senha VARCHAR(100) NOT NULL,
    cargo VARCHAR(20),
    identificacao VARCHAR(15),
    tipo VARCHAR(15) NOT NULL,
    curso VARCHAR(100)
);

-- Tabela Ator
CREATE TABLE Ator (
    idAtor INT PRIMARY KEY AUTO_INCREMENT,
    nomeAtor VARCHAR(100) NOT NULL
);

-- Tabela Categoria
CREATE TABLE Categoria (
    idCategoria INT PRIMARY KEY AUTO_INCREMENT,
    nomeCategoria VARCHAR(100) NOT NULL,
    fk_Ator_idAtor INT NOT NULL,
    FOREIGN KEY (fk_Ator_idAtor) REFERENCES Ator(idAtor)
);

-- Tabela Sugestao
CREATE TABLE Sugestao (
    idSugestao INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    telefone VARCHAR(20),
    email VARCHAR(100),
    site VARCHAR(255),
    verificado BOOLEAN DEFAULT FALSE,
    fk_Usuario_idUsuario INT NOT NULL,
    FOREIGN KEY (fk_Usuario_idUsuario) REFERENCES Usuario(idUsuario)
);

-- Tabela Empreendimento
CREATE TABLE Empreendimento (
    idEmpreendimento INT PRIMARY KEY AUTO_INCREMENT,
    ultimaAtualizacao VARCHAR(15),
    fk_Categoria_idCategoria INT NOT NULL,
    fk_Ator_idAtor INT NOT NULL,
    fk_Sugestao_idSugestao INT NOT NULL,
    FOREIGN KEY (fk_Categoria_idCategoria) REFERENCES Categoria(idCategoria),
    FOREIGN KEY (fk_Ator_idAtor) REFERENCES Ator(idAtor),
    FOREIGN KEY (fk_Sugestao_idSugestao) REFERENCES Sugestao(idSugestao)
);

-- Tabela Endereco
CREATE TABLE Endereco (
    idEndereco INT PRIMARY KEY AUTO_INCREMENT,
    complemento VARCHAR(255),
    bairro VARCHAR(100),
    cep VARCHAR(10),
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    municipio VARCHAR(100),
    numero VARCHAR(10),
    enderecoCompleto VARCHAR(255),
    logradouro VARCHAR(255),
    fk_Sugestao_idSugestao INT NOT NULL,
    FOREIGN KEY (fk_Sugestao_idSugestao) REFERENCES Sugestao(idSugestao)
);

-- Tabela eh_responsavel (Relacionamento entre Ator e Usuario)
CREATE TABLE eh_responsavel (
    fk_Ator_idAtor INT NOT NULL,
    fk_Usuario_idUsuario INT NOT NULL,
    PRIMARY KEY (fk_Ator_idAtor, fk_Usuario_idUsuario),
    FOREIGN KEY (fk_Ator_idAtor) REFERENCES Ator(idAtor),
    FOREIGN KEY (fk_Usuario_idUsuario) REFERENCES Usuario(idUsuario)
);

-- Index para a busca de usuarios
CREATE INDEX INDEX_USUARIO ON Usuario (usuario, senha);

-- Index para buscar discentes
CREATE INDEX INDEX_DISCENTE ON Usuario (tipo);

-- Index para a busca nome de empreendimentos
CREATE INDEX INDEX_NOMEESTABELECIMENTO ON Sugestao (nome);

--Index para a busca
CREATE INDEX INDEX_CIDADE ON Endereco (municipio);