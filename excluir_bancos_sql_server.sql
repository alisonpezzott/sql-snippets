--Verificar sessões ativas
SELECT *
FROM sys.dm_exec_sessions
WHERE database_id = DB_ID('NomeBanco')

--Encerra a sessão
KILL 68 --ajuste para o número retornado

--Deleta o banco de dados
USE [master]
GO
DROP DATABASE [NomeBanco]
GO
