select parente,
COALESCE(
		(SELECT CAST(sobrenome AS VARCHAR(MAX)) + ';' AS [text()]
		 FROM familia AS O
		 WHERE O.parente  = C.parente
		 ORDER BY O.NOME
		 FOR XML PATH(''), TYPE).value('.[1]', 'VARCHAR(MAX)'), '') AS PARTES

from familia  AS C
where parente in 
(
    'fulano',
    'ciclano',
    'beltrano')

GROUP BY parente
