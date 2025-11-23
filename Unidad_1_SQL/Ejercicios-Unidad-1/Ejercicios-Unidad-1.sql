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
