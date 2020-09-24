/*

  COMO ALTERAR O IDIOMA DO BANCO DE DADOS NO SQL
  ----------------------------------------------

  Antes de ler a dica já faça um backup!

*/

--1) EXIBIR TODOS OS IDIOMAS EXISTENTES NO BANCO

  USE MASTER
  SELECT * FROM SYSLANGUAGES

-- 2) EXIBIR A ATUAL CONFIGURAÇÃO DE IDIOMA

  USE <nome do seu banco atual>

  SELECT @@language, @@langid

-- 3) DEFINIR O IDIOMA DEFAULT PARA O SERVIDOR
  EXEC sp_configure 'default language', <id do idioma retornado na opção "1">

-- 4) DEFINIR O IDIOMA PARA CADA LOGIN DO SERVIDOR

  EXEC sp_defaultlanguage 'sa', '<descrição do idioma>'

-- 5) COMANDO PARA RECONFIGURAR ALTERAÇÕES FEITAS

RECONFIGURE

-- REINICIAR O SERVIÇO DO SQL SERVER
