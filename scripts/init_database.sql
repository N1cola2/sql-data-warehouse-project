/*
==============================================================================
Criar a base de dados e os esquemas
==============================================================================
Propósito do Script:
	Este script cria uma nova database chamada 'DataWarehouse' após checar se ele já existe.
	Se a database existe, é deletada e recriada. Adicionalmente, o script deixa pronto três 
	esquemas dentro da database: 'bronze','prata','ouro'.

AVISO:
	Rodar este script vai deletar a database criada por inteiro se a mesma existir.
	Todos os dados dentro da database serão permanentemente deletados. Prossiga com cuidado
	e se certifique de ter os backups apropriados antes de rodar este script.
*/

USE master;
GO

--Deleta e recria a database 'DataWarehouse'
IF EXISTS (SELECT 1 FROM sys.databases where name ='DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE DataWarehouse;
END;
GO

-- Cria a a database 'DataWarehouse'
CREATE DATABASE DataWarehouse
GO

USE Datawarehouse;
GO

--Cria os Esquemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA prata;
GO

CREATE SCHEMA ouro;
GO

