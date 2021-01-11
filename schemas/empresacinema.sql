DROP DATABASE IF EXISTS empresacinema;

CREATE DATABASE empresacinema;
use empresacinema;

CREATE TABLE Genero (
codGenero int,
descricao varchar(250)
);

CREATE TABLE Programacao (
codProgramacao int,
dataProgramacao datetime,
PRIMARY KEY(codProgramacao)
);

CREATE TABLE Pedido (
codPedido int,
qtd int,
valor_total decimal(6,2),
dataPedido datetime,
status varchar(250),
detalhes varchar(250),
codProduto int,
codCliente int,
PRIMARY KEY(codPedido)
);

CREATE TABLE Cliente (
codCliente int,
RG Varchar(150),
placa Varchar(150),
nome Varchar(150),
celular Varchar(150),
PRIMARY KEY(codCliente)
);

CREATE TABLE Ingresso (
codIngresso int,
tipo varchar(250),
codSessao int,
cod varchar(250),
codPortariia int,
dataIngresso datetime,
codCliente int,
PRIMARY KEY(codIngresso)
);

CREATE TABLE Sessao (
codSessao int,
dataInicio datetime,
dataFim datetime,
valorIntegereira decimal(6,2),
valorMeia decimal(6,2),
cod int,
PRIMARY KEY(codSessao)
);

CREATE TABLE Portaria (
codPortaria int,
ingressosDisponiveis int,
dataPortaria datetime,
PRIMARY KEY(codPortaria)
);

CREATE TABLE Filme (
codFilme int,
nome varchar(250),
duracao int,
diretor varchar(250),
legenda varchar(250),
ano varchar(250),
sinopse varchar(250),
trailer varchar(250),
nacionalidade varchar(250),
PRIMARY KEY(codFilme)
);

CREATE TABLE Historico (
codHistorico int,
dataHistorico datetime,
entrada decimal(6,2),
saida decimal(6,2),
codProduto int,
PRIMARY KEY(codHistorico)
);

CREATE TABLE Drivein (
vagasDisponiveis varchar(250),
status varchar(250),
cod varchar(250),
PRIMARY KEY(cod)
);

CREATE TABLE Relatorio (
codRelatorio int,
totalIngressos_vendidos int,
arrecadacaoTotal_meia decimal(6,2),
totalVendido_integereira int,
totalVendido_meia int,
arrecadacaoTotal_integereira decimal(6,2),
arrecadacaoTotal decimal(6,2),
dataRelatorio datetime,
PRIMARY KEY(codRelatorio)
);

CREATE TABLE Lanchonete (
codProduto int,
nomeProduto varchar(250),
detalhes varchar(250),
custoUnit decimal(6,2),
valorVenda decimal(6,2),
PRIMARY KEY(codProduto)
);

CREATE TABLE Funcionario (
codFuncionario int,
nome varchar(250),
dataAdmissao datetime,
salario decimal(6,2),
comissao decimal(6,2),
RG varchar(250),
CPF varchar(250),
CNH Varchar(150),
cargo varchar(250),
telefone varchar(250),
celular varchar(250),
codTerceirizado int,
empregadora varchar(250),
CNPJ varchar(250),
contato varchar(250),
codFreela int,
RS varchar(250),
Obs varchar(250),
codEfetivo int,
PIS varchar(250),
codConta int,
numero int,
agencia int,
digito int,
PRIMARY KEY(codFuncionario)
);

CREATE TABLE  Sessao_Filme(
codSessao integer(100)
);


CREATE TABLE  Funcionario_Banco(
codBanco int,
codFuncionario int
);

CREATE TABLE Tipo_Funcionario (
codFuncionario int,
codTerceirizado int,
codFreela int,
codEfetivo int,
codConta int
);

CREATE TABLE  Funcionario_Tipo(
codFuncionario int,
codTipo int
);