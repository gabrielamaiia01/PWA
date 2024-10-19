create database curso; #criação de um banco de dados 
use curso; #para usar esse banco de dados

-- DDL - Linguagem de definição de Dados - Create, Drop, Alter. 
create table funcionarios(
  id int unsigned not null auto_increment, 
  nome varchar (50) not null, 
  salario double not null,  
  departamento varchar(45) not null, 
  primary key (id)
);

create table salario(
 faixa varchar(45) not null, 
 inicio double not null, 
 fim double not null, 
 primary key (faixa) 
);

ALTER TABLE funcionarios -- Alterar tabela, adicionar o coluna date. 
ADD COLUMN data_contratacao DATE;

ALTER TABLE funcionarios -- Modificando uma coluna
MODIFY COLUMN salario DECIMAL(10, 2) NOT NULL; 

-- Add a coluna faixa_salario em funcionarios 
ALTER TABLE funcionarios 
ADD COLUMN faixa_salario VARCHAR(45);

-- Criando a chave estrangeira '
ALTER TABLE funcionarios 
ADD CONSTRAINT fk_faixa_salario 
FOREIGN KEY (faixa_salario) REFERENCES salario(faixa);

