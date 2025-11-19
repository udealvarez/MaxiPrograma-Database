--JOIN

-- INNER JOIN
-- LEFT JOIN
-- RIGTH JOIN
-- FULL OUTER JOIN

-- ejemplo
SELECT COUNT(Id) FROM Peliculas -- 25 PELICULAS
SELECT COUNT(Id) FROM Reparto -- 111 de reparto


-- INNER JOIN -> nos permite combinar datos MIENTRAS haya informacion en las 2 tablas
SELECT Titulo PELICULA, Nombre DIRECTOR FROM Peliculas P 
INNER JOIN Reparto R ON P.IdDirector = R.Id


-- LEFT JOIN -> le da prioridad a los datos de la IZQ
SELECT Titulo PELICULA, Nombre DIRECTOR 
FROM Peliculas P LEFT JOIN Reparto R 
ON P.IdDirector = R.Id


-- RIGTH JOIN -> le da prioridad a los datos de la DERECHA
SELECT Titulo PELICULA, Nombre DIRECTOR 
FROM Peliculas P RIGHT JOIN Reparto R 
ON P.IdDirector = R.Id

-- FULL OUTER JOIN -> me trae todo de las 2 tablas -> 133 registros
SELECT Titulo PELICULA, Nombre DIRECTOR 
FROM Peliculas P FULL OUTER JOIN Reparto R 
ON P.IdDirector = R.Id


-- quiero saber cuales son las personas que actuan en una pelicula determinada
SELECT Id, Titulo FROM Peliculas  -- id=6 (volver al futuro)

SELECT P.Titulo, r.Nombre, r.Apellido FROM Peliculas P 
INNER JOIN [Peliculas.Reparto] PR ON P.Id = PR.IdPelicula
INNER JOIN Reparto R ON PR.IdReparto = R.Id
WHERE P.Id = 6
