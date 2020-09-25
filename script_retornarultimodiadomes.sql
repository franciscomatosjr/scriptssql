-- retornar o último dia do mês
DECLARE @data DATETIME = '2020-08-01';
SELECT DATEADD(DD, -DAY(DATEADD(M, 1, @data)), DATEADD(M, 1, @data)) AS UltimoDiaMes;
