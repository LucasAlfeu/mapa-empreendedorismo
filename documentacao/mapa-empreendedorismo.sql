CREATE DATABASE IF NOT EXISTS mapa_empreendedorismo;

USE mapa_empreendedorismo;

-- Tabela Usuario
CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    usuario VARCHAR(50) UNIQUE NOT NULL,
    senha VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    identificacao VARCHAR(50),
    curso VARCHAR(100),
    Usuario_TIPO INT NOT NULL,
    fk_Ator_idAtor INT NOT NULL,
    fk_Usuario_idUsuario INT,
    FOREIGN KEY (fk_Ator_idAtor) REFERENCES Ator(idAtor),
    FOREIGN KEY (fk_Usuario_idUsuario) REFERENCES Usuario(idUsuario)
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

-- Tabela Empreendimento
CREATE TABLE Empreendimento (
    idEmpreendimento INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    telefone VARCHAR(20),
    email VARCHAR(100),
    site VARCHAR(255),
    verificado BOOLEAN DEFAULT FALSE,
    ultimaAtualizacao DATETIME,
    fk_Categoria_idCategoria INT NOT NULL,
    fk_Ator_idAtor INT NOT NULL,
    FOREIGN KEY (fk_Categoria_idCategoria) REFERENCES Categoria(idCategoria),
    FOREIGN KEY (fk_Ator_idAtor) REFERENCES Ator(idAtor)
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
    fk_Empreendimento_idEmpreendimento INT NOT NULL,
    FOREIGN KEY (fk_Empreendimento_idEmpreendimento) REFERENCES Empreendimento(idEmpreendimento)
);

-- Tabela Sugere (Relacionamento entre Usuario e Empreendimento)
CREATE TABLE Sugere (
    fk_Usuario_idUsuario INT NOT NULL,
    fk_Empreendimento_idEmpreendimento INT NOT NULL,
    PRIMARY KEY (fk_Usuario_idUsuario, fk_Empreendimento_idEmpreendimento),
    FOREIGN KEY (fk_Usuario_idUsuario) REFERENCES Usuario(idUsuario),
    FOREIGN KEY (fk_Empreendimento_idEmpreendimento) REFERENCES Empreendimento(idEmpreendimento)
);

-- Criar os index para facilitar a busca