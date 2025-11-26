-- 1) Obtener las Películas estrenadas en la Década de los '80.
SELECT * FROM Peliculas WHERE YEAR(FechaEstreno) BETWEEN 1980 AND 1989


-- 2) Obtener los Actores nacidos en la Década de los '70.
SELECT * FROM Reparto WHERE YEAR(FechaNacimiento) BETWEEN 1970 AND 1979

-- version simplificada Actor - Fecha de nac - Nacionalidad
SELECT R.Nombre, R.Apellido, R.FechaNacimiento, P.Nombre
FROM Reparto R
LEFT JOIN Paises P ON R.IdNacionalidad = P.Id
WHERE YEAR(FechaNacimiento) BETWEEN 1970 AND 1979


-- 3) Obtener las Peliculas que se encuentran en la Plataforma de Disney+.
SELECT * FROM Plataformas --analizo el Id de Disney+  -> id = 3

SELECT P.Titulo AS Pelicula FROM Peliculas P
INNER JOIN [Peliculas.Plataformas] PP ON P.Id = PP.IdPelicula
INNER JOIN Plataformas PL ON PP.IdPlataforma = PL.Id
WHERE  PL.Id = 3


-- 4) Obtener la Cantidad de Películas con Clasificación R. (Considerar usar el Comando LIKE)
SELECT * FROM Clasificaciones -- ID=4

-- usando LIKE
SELECT COUNT(P.Id) AS 'Cantidad de Peliculas'
FROM Peliculas P 
INNER JOIN [Peliculas.Clasificaciones] PC ON P.Id = PC.IdPelicula
INNER JOIN Clasificaciones CL ON CL.Id = PC.IdClasificacion
WHERE CL.Descripcion LIKE 'R%'

-- usando ID = 4
SELECT COUNT(P.Id) AS 'Cantidad de Peliculas'
FROM Peliculas P 
INNER JOIN [Peliculas.Clasificaciones] PC ON P.Id = PC.IdPelicula
INNER JOIN Clasificaciones CL ON CL.Id = PC.IdClasificacion
WHERE CL.Id = 4


-- 5) Obtener la Película que mayor duración tiene.
SELECT MAX(MinutosDuracion) AS DuracionMaxima
FROM Peliculas; -- veo cuanto es el max de la pelicula

SELECT Titulo AS Pelicula, MinutosDuracion AS Duracion
FROM Peliculas
WHERE MinutosDuracion = 176;   


-- 6) Obtener las Películas de Categoría 'Superhéroes'.
SELECT * FROM Categorias -- id = 27 -> Superhéroes

SELECT P.Titulo AS Pelicula
FROM Peliculas P
INNER JOIN [Peliculas.Categorias] PC ON P.Id = PC.IdPelicula
INNER JOIN Categorias C ON PC.IdCategoria = C.Id
WHERE C.Id = 27


--  Obtener la Cantidad de Actores que trabajaron en la Película 'Los Intocables'.
SELECT * FROM Peliculas -- ID = 7

SELECT COUNT(R.Id) AS 'Total de actores'
FROM Reparto R
INNER JOIN [Peliculas.Reparto] PR ON R.Id = PR.IdReparto
INNER JOIN Peliculas P ON P.Id = PR.IdPelicula
WHERE P.Id = 7


-- 8) Obtener los Actores que trabajaron en la Películas 'Los Intocables'.
SELECT R.Nombre + ' ' + R.Apellido AS 'Nombre & Apellido', PA.Nombre AS Nacionalidad, R.FechaNacimiento AS Nacimiento
FROM Reparto R
INNER JOIN Paises PA ON R.IdNacionalidad = PA.Id
INNER JOIN [Peliculas.Reparto] PR ON R.Id = PR.IdReparto
INNER JOIN Peliculas P ON PR.IdPelicula = P.Id
WHERE P.Id = 7


-- 9) Obtener el Total de Películas del Catálogo.
SELECT COUNT(Id) AS 'CANT PELICULAS' FROM Peliculas
