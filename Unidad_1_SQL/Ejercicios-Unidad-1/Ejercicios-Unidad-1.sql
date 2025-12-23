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

-- 14) ¿Cuál es la "relación" que tienen estas consultas al Ejecutarse? ¿Cuál es el motivo?

INSERT INTO Peliculas (FechaEstreno, Titulo, MinutosDuracion, Bio, IdDirector) VALUES ('2014-08-21', 'Relatos Salvajes', 122, 'Seis relatos que alternan la intriga, la comedia y la violencia. Sus personajes se verán empujados hacia el abismo y hacia el innegable placer de perder el control al cruzar la delgada línea que separa la civilización de la barbarie.', 112);
INSERT INTO [Peliculas.Categorias] (Id, IdCategoria, IdPelicula) VALUES (75, 6, 2);
INSERT INTO [Peliculas.Plataformas] (IdPelicula, IdPlataforma, FechaAlta) VALUES (24, 10, '2024-03-27');

-- CONSULTAS UPDATE

-- 15) La Película de Rocky dejó de estar disponible en la Plataforma de Paramount+ el 16 de enero del 2024.
SELECT * FROM Peliculas  -- rocky id = 3
SELECT * FROM Plataformas  -- paramount id = 9
SELECT * FROM [Peliculas.Plataformas]  

-- verifico la cantidad de registros -> 1 | OK
SELECT *
FROM [Peliculas.Plataformas]
WHERE IdPelicula = 3 AND IdPlataforma = 9;

-- rocky dejo de esta disponible en paramount
UPDATE [Peliculas.Plataformas] SET
FechaBaja = '2024-01-16'
WHERE IdPelicula = 3 AND IdPlataforma = 9


-- 16) Hubo un error al momento de registrar la película de Iron Man. El Protagonista no fue Robert Downey Jr., quién interpretó el papel fue Diego Peretti.

SELECT Id, Titulo
FROM Peliculas
WHERE Titulo LIKE 'Iron%'  -- tengo el ID=2 y titulo "iron man"

SELECT Id, Nombre, Apellido
FROM Reparto
WHERE Nombre = 'Robert' AND Apellido = 'Downey Jr.' -- id=1

SELECT Id, Nombre, Apellido
FROM Reparto
WHERE Nombre = 'Diego' AND Apellido = 'Peretti' -- id=107

UPDATE [Peliculas.Reparto] SET
IdReparto = 107
WHERE IdPelicula = 2 AND Protagonista = 1 AND IdReparto = 1

-- VERIFICO A DIEGO PERETTI
SELECT pr.IdPelicula, pr.IdReparto, pr.Protagonista, r.Nombre, r.Apellido
FROM [Peliculas.Reparto] pr
JOIN Reparto r ON r.Id = pr.IdReparto
WHERE pr.IdPelicula = 2 AND pr.Protagonista = 1;


-- 17) La Plataforma Tubi TV cambia de firma, dado que cambiará su nombre a MaxiPrograma TV.
SELECT * FROM Plataformas

UPDATE Plataformas SET
Nombre = 'MaxiPrograma TV'
WHERE Id = 10

-- 18) La Película de Spiderman cambia su Clasificación de PG-13 a 'Apta para todos los Públicos'.

