

DECLARE @retval money   
DECLARE @sSQL nvarchar(500);
DECLARE @ParmDefinition nvarchar(500);

DECLARE @tablename nvarchar(50), @texto nvarchar(max) 

set @texto = '2.00 - 1.00 + 5.00 - 0.00 + 0.00 + 0.00 - 0.00 + 0.00 - 0.00 + 0.00 + 0.00'

SELECT @sSQL = N'SELECT @retvalOUT = ( '+@texto +' )'

SET @ParmDefinition = N'@retvalOUT money OUTPUT';

EXEC sp_executesql	@sSQL, -- script que vai ser executado
					@ParmDefinition, -- declaração das variáveis que serão utilizadas dentro da execução do script
					@retvalOUT=@retval OUTPUT; -- tratamento do retorno

SELECT @retval;
