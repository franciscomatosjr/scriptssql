/*
    -- Verificar o tamanho do banco de dados

sp_spaceused

*/

/* 
    -- Verificar o tamanho de cada tabela do banco de dados 

-- drop table #X
*/



SELECT OBJECT_NAME(ID) TABELA, CONVERT(DEC(15),SUM(RESERVED)) RESERVED
INTO #X
FROM SYSINDEXES
WHERE indid in (0, 1, 255)
GROUP BY ID

SELECT TABELA, 
LTRIM((STR(RESERVED * D.LOW / 1024., 15, 0)/1024)) + ' MB' as Tamanho_MB,
LTRIM(STR(RESERVED * D.LOW / 1024., 15, 0)) + ' KB' as Tamanho_KB
FROM #X, master.dbo.spt_values d
where d.number = 1
and d.type = 'E'
ORDER BY RESERVED DESC
