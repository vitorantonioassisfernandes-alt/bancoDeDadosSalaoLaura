CREATE DATABASE Salao;
USE Salao;

CREATE TABLE Clientes (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(15),
    email VARCHAR(100),
    sexo CHAR(1)
); 

CREATE TABLE Procedimentos (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    duracao VARCHAR(10)
); 

CREATE TABLE Funcionarios (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(15)
);

CREATE TABLE Agendamentos (
    cliente_id INT,
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    funcionario_id INT,
    procedimento_id INT,
    data_procedimento DATE,
    hora TIME,
    status VARCHAR(20), 

    
    CONSTRAINT FK_Age_idCliente
        FOREIGN KEY (cliente_id) REFERENCES Clientes(id), 

    
    CONSTRAINT FK_Age_funcionario_id
        FOREIGN KEY (funcionario_id) REFERENCES Funcionarios(id), 
    
    CONSTRAINT FK_Age_procedimento_id
        FOREIGN KEY (procedimento_id) REFERENCES Procedimentos(id)
);
