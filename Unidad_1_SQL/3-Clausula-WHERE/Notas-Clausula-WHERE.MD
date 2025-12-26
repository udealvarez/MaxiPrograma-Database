En esta clase empezamos a incluir filtros con WEHERE!

-- operadores relacionales
-- = (igualdad), > (mayor), < (menor), !

SELECT * FROM Peliculas

SELECT * FROM Peliculas
WHERE Id=6

SELECT * FROM Peliculas
WHERE Id < 6

SELECT * FROM Peliculas
WHERE Id <= 6

SELECT * FROM Peliculas
WHERE Id > 6

SELECT * FROM Peliculas
WHERE MinutosDuracion > 120

SELECT Titulo, Bio FROM Peliculas
WHERE MinutosDuracion > 120

SELECT Titulo, Bio, MinutosDuracion/60 AS HORAS FROM Peliculas
WHERE MinutosDuracion > 120

SELECT * 
FROM Peliculas
WHERE MinutosDuracion > 120

SELECT * FROM Reparto WHERE Dirige=1

SELECT * FROM Reparto WHERE Id=11

SELECT * 
FROM Peliculas
WHERE MinutosDuracion < 120

SELECT * FROM Reparto WHERE Id=43

SELECT * FROM Paises WHERE Id=39

SELECT * 
FROM Peliculas
WHERE MinutosDuracion > 120

SELECT * FROM [Peliculas.Reparto] WHERE IdPelicula=9

SELECT * FROM Reparto WHERE Id=45

SELECT * FROM Reparto WHERE Id=47

SELECT * FROM Reparto WHERE Id>=45

SELECT TOP 5 * FROM Reparto WHERE Id>=45
