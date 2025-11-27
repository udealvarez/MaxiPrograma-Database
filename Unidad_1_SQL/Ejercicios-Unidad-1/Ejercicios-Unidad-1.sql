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


-- 10) Obtener la Lista de Usuarios Inactivos.
SELECT Nombre + ' ' + Apellido AS 'Nombre & Apellido', Email, FechaCreacion, FotoPerfilURL
FROM Usuarios 
WHERE Activo = 0



-- CONSULTAS INSERT

-- 11) Ingresar el siguiente Film.

-- Película: "The Good, the Bad and the Ugly"
-- Biografía: "Tres hombres violentos pelean por una caja que alberga 200 000 dólares, la cual fue escondida durante la Guerra Civil. Dado que ninguno puede encontrar la tumba donde está el botín sin la ayuda de los otros dos, deben colaborar, pese a odiarse."
-- Duración: 162 minutos
-- Fecha de Estreno: 11 de enero de 1968

SELECT * FROM Peliculas

-- YYYY-MM-DD
INSERT INTO Peliculas VALUES ('1968-01-11', 'The Good, the Bad and the Ugly', 162, 'Tres hombres violentos pelean por una caja que alberga 200 000 dólares, la cual fue escondida durante la Guerra Civil. Dado que ninguno puede encontrar la tumba donde está el botín sin la ayuda de los otros dos, deben colaborar, pese a odiarse.', NULL)


-- 12) En base al Film recientemente agregado al Catálogo, agregárselo como Favorito a Severus Snape.

SELECT * FROM Peliculas -- ID = 29
SELECT * FROM Usuarios -- ID = 4
SELECT * FROM [Usuarios.Favoritos] -- idpelicula | idusuario | fechafav

INSERT INTO [Usuarios.Favoritos] (IdPelicula, IdUsuario, FechaFavorito) VALUES (29, 4, GETDATE())



-- 13) Ahora hagamos que esta pelicula se pueda ver en las Plataformas de Netflix y Amazon.

SELECT * FROM Plataformas -- ID = 1 | ID = 2
SELECT * FROM Peliculas -- ID = 29
SELECT * FROM [Peliculas.Plataformas]  --  idpelicula | idplataforma | fechaAlta | fechaBaja (NULL)

INSERT INTO [Peliculas.Plataformas] (Id, IdPelicula, IdPlataforma, FechaAlta) VALUES (44, 29, 1, GETDATE())
INSERT INTO [Peliculas.Plataformas] (Id, IdPelicula, IdPlataforma, FechaAlta) VALUES (45, 29, 2, GETDATE())

SELECT Id, IdPelicula, IdPlataforma, FechaAlta, FechaBaja
FROM [Peliculas.Plataformas];