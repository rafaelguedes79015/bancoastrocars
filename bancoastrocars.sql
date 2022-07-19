/*1 - Criando banco de dados*/
/*create database bancoastrocars;*/
/*2 - Selecionar banco*/
use bancoastrocars;

/*3 - Criando as Tabelas*/
CREATE TABLE cliente (
    id_cliente integer AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(14) NOT NULL,
	nome VARCHAR(100) NOT NULL,
	data_nascimento DATE NOT NULL,
	telefone VARCHAR(20) NOT NULL,
	email VARCHAR(100) NOT NULL,
	cep VARCHAR(20) NOT NULL,
	cidade VARCHAR(20) NOT NULL,
	bairro VARCHAR(100) NOT NULL,
	rua VARCHAR(50) NOT NULL,
	numero VARCHAR(10) NOT NULL,
	senha VARCHAR(50) NOT NULL
);

CREATE TABLE pagamento (
    id_pagamento integer AUTO_INCREMENT PRIMARY KEY,
    valor_aluguel DOUBLE NOT NULL,
	tipo_pagamento VARCHAR(50) NOT NULL
	);
	
CREATE TABLE carro (
    id_carro integer AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(50) NOT NULL,
	modelo VARCHAR(50) NOT NULL,
	ano_carro VARCHAR(4) NOT NULL
	);


CREATE TABLE aluguel (
    id_aluguel integer AUTO_INCREMENT PRIMARY KEY,
    dt_retiro VARCHAR(50) NOT NULL,
	dt_entrega VARCHAR(50) NOT NULL,
	id_cliente integer, 
	id_pagamento integer,
	id_carro integer,
    CONSTRAINT fk_ClienteAluguel FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
	CONSTRAINT fk_PagamentoAluguel FOREIGN KEY (id_pagamento) REFERENCES pagamento (id_pagamento),
	CONSTRAINT fk_CarroAluguel FOREIGN KEY (id_carro) REFERENCES carro(id_carro)
	);
	

CREATE TABLE funcionario (
    id_funcionario integer AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(14) NOT NULL,
	nome VARCHAR(100) NOT NULL,
	data_nascimento DATE NOT NULL,
	telefone VARCHAR(20) NOT NULL,
	email VARCHAR(100) NOT NULL,
	cep VARCHAR(20) NOT NULL,
	cidade VARCHAR(20) NOT NULL,
	bairro VARCHAR(100) NOT NULL,
	rua VARCHAR(50) NOT NULL,
	numero VARCHAR(10) NOT NULL,
	id_aluguel integer,
	CONSTRAINT fk_AluguelFuncionario FOREIGN KEY (id_aluguel) REFERENCES aluguel (id_aluguel)
);
	
/*4 - Inserir dados na Tabela*/

INSERT INTO pagamento (valor_aluguel, tipo_pagamento)
VALUES ('500.00','Cartão');



/*5 - Testando*/
SELECT * FROM cliente;
SELECT * FROM pagamento;
SELECT * FROM carro;
SELECT * FROM aluguel;
SELECT * FROM funcionario; 

