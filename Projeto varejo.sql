## Criando um banco de dados
create database CND
## Usando o banco de dados
use CND
## Criando a tabela produtos
create  Table produtos( 
  id INT PRIMARY KEY,
  nome VARCHAR(255),
  descricao TEXT,
  preco DECIMAL(10, 2),
  estoque INT
);
## Inserido dados na tabela produtos 
INSERT INTO produtos (id, nome, descricao, preco, estoque) VALUES
(1, 'Camiseta', 'Camiseta de algodão com gola redonda', 29.90, 100),
(2, 'Calça jeans', 'Calça jeans azul escura', 89.90, 50),
(3, 'Tênis', 'Tênis preto com sola de borracha', 119.90, 30),
(4, 'Casaco', 'Casaco preto', 109.19,20),
(5, 'Sapato', 'Preto masculino esportivo', 95.00,30),
(6, 'Camiseta', 'Camiseta polo', 29.90, 100),
(7, 'Calça jeans', 'Calça jeans sarja feminina', 79.90, 75),
(8, 'Tênis', 'Tênis branco ', 160.90, 60),
(9, 'Jaqueta ', 'Jaqueta couro', 120.19,35),
(10, 'Sapato', 'Sapatos femininos de salto ', 65.00,45),
(11, 'Bolsa', 'Bolsa de couro', 69.35, 20),
(12, 'Calça jeans', 'Calça jeans sarja preta', 79,90, 25),
(13, 'Tênis', 'Tênis azul marinho ', 160.90, 30),
(9, 'Jaqueta ', 'Jaqueta jeans feminina', 120.19,35),
(10, 'Macacao', 'Macacao Jeans ', 65.00,45);

## Criando a tabela clientes
create table clientes(
id INT PRIMARY KEY,
  nome VARCHAR(255),
  email VARCHAR(255),
  telefone VARCHAR(20)
);
##Inserido dados na tabela clientes
INSERT INTO clientes (id, nome, email, telefone) VALUES
(1, 'Maria', 'maria@email.com', '(11) 99999-9999'),
(2, 'João', 'joao@email.com', '(11) 88888-8888'),
(3, ' Flavia', 'flavia@email.com', '(11) 95826-3652'),
(4, 'Luiz', 'luiz@email.com', '(11) 5512-2503'),
(5, 'Patricia', 'paty@email.com', '(11) 2222-2525'),
(6, 'Carla', 'Carla@email.com', '(11) 9936-9999'),
(7, 'Pedro', 'pedro@email.com', '(11) 88884-8888'),
(8, ' Silvio', 'silvio@email.com', '(11) 95835-3652'),
(9, 'Rodrigo', 'digo@email.com', '(11) 5530-2503'),
(10, 'Dalva', 'paty@email.com', '(11) 2233-2525');

##Criando a tabela filiais
CREATE TABLE Filiais (
  id INT PRIMARY KEY,
  nome VARCHAR(255),
  endereco TEXT,
  telefone VARCHAR(20)
);
##Inserido dados na tabela filiais
INSERT INTO filiais (id, nome, endereco, telefone) VALUES
(1, 'Loja Centro', 'Rua XV de Novembro, 123, Centro, São Paulo', '(11) 1111-1111'),
(2, 'Loja Shopping', 'Av. Paulista, 987, Bela Vista, São Paulo', '(11) 2222-2222'),
(3, 'Loja Sul', 'Av. Giovanni Grincch,333. Morunbim, São Paulo', '(11) 3333-3333');

 ##Criando a tabela estoque
CREATE TABLE estoque (
  id INT PRIMARY KEY,
  produto_id INT,
  filial_id INT,
  quantidade INT,
  FOREIGN KEY (produto_id) REFERENCES produtos(id),
  FOREIGN KEY (filial_id) REFERENCES filiais(id)
);
##Inserido dados na tabela estoque
INSERT INTO estoque (id, produto_id, filial_id, quantidade) VALUES
(1, 1, 1, 50),
(2, 1, 2, 50),
(3, 5, 1, 25),
(4, 8, 2, 25),
(5, 3, 3, 15),
(6, 12, 2, 15),
(7, 3, 1, 50),
(8, 5, 2, 50),
(9, 11, 1, 25),
(10, 10, 2, 25),
(11, 12, 3, 15),
(12, 4, 2, 15),
(13, 6, 1, 50),
(14, 9, 2, 50),
(15, 2, 1, 25);

##Criando a tabela vendas 
CREATE TABLE vendas (
  id INT PRIMARY KEY,
  produto_id INT,
  cliente_id INT,
  filial_id INT,
  data DATE,
  quantidade INT,
  valor_total DECIMAL(10, 2),
  FOREIGN KEY (produto_id) REFERENCES produtos(id),
  FOREIGN KEY (cliente_id) REFERENCES clientes(id),
  FOREIGN KEY (filial_id) REFERENCES filiais(id)
);
##Inserido dados na tabela vendas
INSERT INTO vendas (id, produto_id, cliente_id, filial_id, data, quantidade, valor_total) VALUES
(1, 1, 1, 1, '2022-02-01', 2, 59.80),
(2, 2, 2, 2, '2022-02-02', 1, 89.90),
(3, 3, 1,3, '2022-02-03',5,70.50),
(4,4,2,2,'2022-12-05',4,200.00),
(5,3,2,3,'2023-01-01', 3,357.00),
(6, 5, 1, 1, '2022-10-01', 2, 59.80),
(7, 12, 2, 2, '2022-20-02', 1, 89.90),
(8, 10, 1,3, '2022-31-11',5,70.50),
(9,8,2,2,'2022-27-12',4,200.00),
(10,9,2,3,'2023-12-01', 3,357.00),
(11, 7, 1, 1, '2023-10-02', 2, 59.80),
(12, 15, 2, 2, '2023-13-02', 1, 89.90),
(13, 6, 1,3, '2023-14-03',5,70.50),
(14,5,2,2,'2022-31-08',4,200.00),
(15,14,2,3,'2022-10-10', 3,357.00);





