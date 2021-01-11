-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: empresacinema
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping events for database 'empresacinema'
--

--
-- Dumping routines for database 'empresacinema'
--
/*!50003 DROP PROCEDURE IF EXISTS `prc_cadastrar_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_cadastrar_cliente`(v_codCliente int,
v_RG Varchar(150),
v_placa Varchar(150),
v_nome Varchar(150),
v_celular Varchar(150))
BEGIN
	IF(v_codCliente != 0 && v_RG != '' && v_placa != '' && v_nome != '' && v_celular != '') THEN
		INSERT iNTO Cliente(codCliente,RG,placa,nome,celular)
        VALUES (v_codCliente,v_RG,v_placa,v_nome,v_celular);
	ELSE
		SELECT 'PREENCHA OS CAMPOS CORRETAMENTE' AS Msg;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prc_cadastrar_drivein` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_cadastrar_drivein`(v_vagasDisponiveis varchar(250),
v_status varchar(250),
v_cod varchar(250))
BEGIN
	if(v_vagasDisponiveis != 0 && v_status != 0 && v_cod)then
		insert into Historico values (v_vagasDisponiveis,v_status,v_cod);
    else
		SELECT 'PREENCHA OS CAMPOS CORRETAMENTE' AS Msg;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prc_cadastrar_filme` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_cadastrar_filme`(v_codFilme int,
v_nome varchar(250),
v_duracao int,
v_diretor varchar(250),
v_legenda varchar(250),
v_ano varchar(250),
v_sinopse varchar(250),
v_trailer varchar(250),
v_nacionalidade varchar(250))
BEGIN
	IF(v_codFilme != 0 && v_nome != 0 && 
		v_duracao != 0 && v_diretor != 0 && v_legenda != 0 && 
		v_ano != 0 && v_sinopse != 0 && v_trailer != 0 && 
		v_nacionalidade)then
		INSERT iNTO Filme
        VALUES (v_codFilme,v_nome,v_duracao,v_diretor,v_legenda,v_ano,v_sinopse,v_trailer,v_nacionalidade);
	ELSE
		SELECT 'PREENCHA OS CAMPOS CORRETAMENTE' AS Msg;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prc_cadastrar_funcionario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_cadastrar_funcionario`(v_codFuncionario int,
					v_nome varchar(250),v_dataAdmissao datetime,
					v_salario decimal(6,2),v_comissao decimal(6,2),
					v_RG varchar(250),v_CPF varchar(250),
					v_CNH Varchar(150),v_cargo varchar(250),
					v_telefone varchar(250),v_celular varchar(250),
					v_codTerceirizado int,v_empregadora varchar(250),
					v_CNPJ varchar(250),v_contato varchar(250),v_codFreela int,
					v_RS varchar(250),v_Obs varchar(250),
					v_codEfetivo int,v_PIS varchar(250),
					v_codConta int,v_numero int,
					v_agencia int,v_digito int)
BEGIN
	IF((v_codFuncionario != '' && 
			v_nome != '' && v_dataAdmissao != '' && 
			v_salario != '' && v_comissao != '' && 
			v_RG != '' && v_CPF != '' && 
			v_CNH != '' && v_cargo != '' && 
			v_telefone != '' && v_celular != '' && 
			v_codTerceirizado != '' && v_empregadora != '' && 
			v_CNPJ != '' && v_contato != '' && v_codFreela != '' && 
			v_RS != '' && v_Obs != '' && 
			v_codEfetivo != '' && v_PIS != '' && 
			v_codConta != '' && v_numero != '' && 
			v_agencia != '' && v_digito  != '' ))THEN
    
    INSERT INTO Funcionario VALUES (v_codFuncionario,
		v_nome,v_dataAdmissao,
		v_salario,v_comissao,
		v_RG,v_CPF,
		v_CNH,v_cargo,
		v_telefone,v_celular,
		v_codTerceirizado,v_empregadora,
		v_CNPJ,v_contato,v_codFreela,
		v_RS,v_Obs,
		v_codEfetivo,v_PIS,
		v_codConta,v_numero,
		v_agencia,v_digito);
    
    ELSE
		SELECT 'DADOS PREENCHIDOS INCORRETAMENTE'AS Msg;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prc_cadastrar_funcionario_banco` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_cadastrar_funcionario_banco`(
v_codBanco int,
v_codFuncionario int)
BEGIN


	IF(v_codBanco!= '' &&v_codFuncionario!= '')THEN
    
    INSERT INTO Funcionario VALUES (v_codBanco,v_codFuncionario);
    
    ELSE
		SELECT 'DADOS PREENCHIDOS INCORRETAMENTE'AS Msg;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prc_cadastrar_funcionario_tipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_cadastrar_funcionario_tipo`(v_codFuncionario int,
v_codTipo int)
BEGIN
	IF(v_codFuncionario != 0 && v_codTipo != 0)THEN
		INSERT INTO Funcionario_Tipo VALUES (v_codFuncionario,v_codTipo);
    ELSE
		SELECT 'PREENCHA TODOS OS CAMPOS CORRETAMENTE' AS Msg;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prc_cadastrar_genero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_cadastrar_genero`(v_codGenero int,
v_descricao varchar(250))
BEGIN
	if(v_codGenero != '' && v_descricao != '' )then
		insert into genero values(v_codGenero,v_descricao);
    else
		SELECT 'DADOS PREENCHIDOS INCORRETAMENTE'AS Msg;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prc_cadastrar_historico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_cadastrar_historico`(v_codHistorico int,v_dataHistorico datetime,
v_entrada decimal(6,2),v_saida decimal(6,2),v_codProduto int)
BEGIN
	if((v_codHistorico != 0 && v_dataHistorico != 0 && v_entrada != 0 && v_saida != 0 && v_codProduto))then
		insert into Historico values (v_codHistorico,v_dataHistorico,v_entrada,v_saida,v_codProduto);
    else
		SELECT 'PREENCHA OS CAMPOS CORRETAMENTE' AS Msg;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prc_cadastrar_pedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_cadastrar_pedido`(
v_codPedido int,v_qtd int,v_valor_total decimal(6,2),
v_dataPedido datetime,v_status varchar(250),v_detalhes varchar(250),
v_codProduto int,v_codCliente int)
BEGIN
	IF(v_codPedido!= '' &&v_qtd!= '' &&v_valor_total!= '' &&v_dataPedido!= '' &&
	v_status!= '' &&v_detalhes!= '' &&v_codProduto!= '' &&v_codCliente!= '')THEN
		INSERT INTO Funcionario VALUES (v_codPedido,v_qtd,v_valor_total,v_dataPedido,
		v_status,v_detalhes,v_codProduto,v_codCliente);
    ELSE
		SELECT 'DADOS PREENCHIDOS INCORRETAMENTE'AS Msg;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prc_cadastrar_portaria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_cadastrar_portaria`(
v_codPortaria int,v_ingressosDisponiveis int,v_dataPortaria datetime)
BEGIN
	IF(v_codPortaria!=''&&v_ingressosDisponiveis!=''&&v_dataPortaria!='') then
		insert into portaria value (v_codPortaria,
		v_ingressosDisponiveis,v_dataPortaria);
    ELSE
		SELECT 'DADOS PREENCHIDOS INCORRETAMENTE'AS Msg;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prc_cadastrar_produto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_cadastrar_produto`(
v_codProduto int,v_nomeProduto varchar(250),
v_detalhes varchar(250),v_custoUnit decimal(6,2),
v_valorVenda decimal(6,2))
BEGIN
	IF(v_codBanco!= '' &&v_codFuncionario!= '')THEN
    
    INSERT INTO lanchonete VALUES (v_codProduto,v_nomeProduto,
				v_detalhes,v_custoUnit,v_valorVenda);
    
    ELSE
		SELECT 'DADOS PREENCHIDOS INCORRETAMENTE'AS Msg;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prc_cadastrar_programacao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_cadastrar_programacao`(
v_codProgramacao int,v_dataProgramacao datetime)
BEGIN
	IF(v_codProgramacao !=''&& v_dataProgramacao !='')THEN
		INSERT INTO programacao VALUES (v_codProgramacao,v_dataProgramacao);
    ELSE
		SELECT 'DADOS PREENCHIDOS INCORRETAMENTE'AS Msg;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prc_cadastrar_relatorio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_cadastrar_relatorio`(v_codRelatorio int,v_totalIngressos_vendidos int,
v_arrecadacaoTotal_meia decimal(6,2),v_totalVendido_integereira int,
v_totalVendido_meia int,v_arrecadacaoTotal_integereira decimal(6,2),
v_arrecadacaoTotal decimal(6,2),v_dataRelatorio datetime)
BEGIN
	IF(v_codRelatorio != '' && v_totalIngressos_vendidos != '' && 
    v_arrecadacaoTotal_meia != '' && v_totalVendido_integereira != '' && 
    v_totalVendido_meia != '' && v_arrecadacaoTotal_integereira != '' && 
    v_arrecadacaoTotal != '' && v_dataRelatorio != '' )THEN
    
    INSERT INTO Relatorio VALUES (v_codRelatorio, v_totalIngressos_vendidos, 
    v_arrecadacaoTotal_meia, v_totalVendido_integereira,
    v_totalVendido_meia, v_arrecadacaoTotal_integereira,
    v_arrecadacaoTotal, v_dataRelatorio);
    
    ELSE
		SELECT 'DADOS PREENCHIDODS INCORRETAMENTE'AS Msg;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prc_cadastrar_sessao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_cadastrar_sessao`(v_codSessao int,
v_dataInicio date,
v_dataFim date,
v_valorIntegereira decimal(6,2),
v_valorMeia decimal(6,2),
v_cod int)
BEGIN
	IF(v_codSessao != '' && v_dataInicio != '' &&
		v_dataFim != '' && v_valorIntegereira != '' &&
		v_valorMeia != '' && v_cod != '')THEN
		INSERT INTO Sessao VALUES (v_codSessao,v_dataInicio,v_dataFim,v_valorIntegereira,v_valorMeia,v_cod);
    ELSE
		SELECT 'DADOS INCORRETOS' AS MSG;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prc_cadastrar_sessao_filme` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_cadastrar_sessao_filme`(v_codSessao integer(100),
v_codFilme int)
BEGIN
	IF(v_codSessao != 0 && v_codFilme != 0) THEN
		INSERT INTO Sessao_Filme VALUES (v_codSessao, v_codFilme);
    ELSE
		SELECT 'DADOS INCORRETOS' AS Msg;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prc_gerar_ingresso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prc_gerar_ingresso`(v_codIngresso int,v_tipo varchar(250),
v_codSessao int,v_cod varchar(250),v_codPortariia int,
v_dataIngresso datetime,v_codCliente int)
BEGIN
	if(v_codIngresso,v_tipo != '' && v_codSessao != '' && v_cod,v_codPortariia != '' && 
			v_dataIngresso != '' && v_codCliente != '')then
			insert into ingresso values(v_codIngresso,v_tipo,
			v_codSessao,v_cod,v_codPortariia,
			v_dataIngresso,v_codCliente);
	else
		SELECT 'DADOS PREENCHIDOS INCORRETAMENTE'AS Msg;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-02 12:17:49
