-- Cláusula Where: AND, OR, NOT

SELECT * FROM Peliculas
WHERE Id=9

SELECT * FROM [Peliculas.Reparto] WHERE IdPelicula = 9 

SELECT TOP 5 * FROM Reparto WHERE Id >= 45

SELECT * FROM Reparto WHERE Id >= 45

SELECT * FROM Reparto WHERE Id = 5 AND Id = 10 AND Id = 15 -- NO TE TRAE NADA

SELECT * FROM Reparto WHERE Id = 5 OR Id = 10 OR Id = 15 -- ACA TE TRAE TODO LOS ID QUE QUIERO

SELECT * FROM Peliculas WHERE MinutosDuracion <= 120

SELECT * FROM Peliculas WHERE MinutosDuracion > 99  AND MinutosDuracion <= 120  -- RANGO DE BUSQUEDA

SELECT * FROM Peliculas 
WHERE MinutosDuracion > 99 
AND MinutosDuracion <= 120 
AND Bio LIKE '%POLIC%'
AND Titulo LIKE '%a%'

-- quiero que me traigas las peliculas entre 99 y 120 min y que tenga en la bio polic o que tenga en el bio CIEN de cientifico         
SELECT * FROM Peliculas 
WHERE MinutosDuracion > 99 AND MinutosDuracion <= 120 
AND Bio LIKE '%polic%'
OR Bio LIKE '%cien%' -- el OR es como una "segunda consulta", traeme todo lo de la primera condicion O la segunda, haciendo 2 consultas y trayendo ambas cosas por mas que este fuera de rango

SELECT * FROM Peliculas 
WHERE MinutosDuracion > 99 AND MinutosDuracion <= 120 
AND Bio LIKE '%polic%'
OR Bio LIKE '%cien%'
OR Bio LIKE '%los%'
OR Bio LIKE '%co%'

-- NOT -> con esta consulta le pido lo que NO quiero
SELECT * FROM Peliculas 
WHERE NOT (MinutosDuracion > 99 AND MinutosDuracion <= 120 
AND Bio LIKE '%polic%'
OR Bio LIKE '%cien%'
OR Bio LIKE '%los%'
OR Bio LIKE '%co%')

SELECT * FROM Peliculas 
WHERE NOT (MinutosDuracion > 99 AND MinutosDuracion <= 120)
AND Bio LIKE '%LOS%'
