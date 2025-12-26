-- IN
-- BETWEEN
-- COUNt, max, min -> para fechas

SELECT * FROM Peliculas WHERE Id=12

SELECT * FROM [Peliculas.Reparto] WHERE IdPelicula = 12 -- LAS PERSONAS QUE TRABAJAN EN ESTA PELICULA SON DESDE EL ID 62 AL 66

SELECT * FROM Reparto WHERE Id > 62

SELECT * FROM Reparto WHERE Id = 10 OR Id= 15 OR Id = 66 -- el Id NO PUEDE valer lo mismo en todos los valores, por eso usamos OR

-- OPERADOR IN
SELECT * FROM Reparto WHERE Id IN ( 10, 15, 66, 67) -- me trae los registros que estan dentro de parentesis


-- operador BETWEEN
SELECT * FROM Reparto WHERE Id BETWEEN 62 AND 67 -- INCLUSIVE 62 Y 67


-- EJEMPLO -> quiero saber las peliculas de la decada del 90
SELECT * FROM Peliculas WHERE YEAR(FechaEstreno) BETWEEN 1990 AND 1999



