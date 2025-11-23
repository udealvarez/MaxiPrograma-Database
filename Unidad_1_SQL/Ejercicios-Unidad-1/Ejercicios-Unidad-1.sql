-- 1) Obtener las Películas estrenadas en la Década de los '80.

SELECT * FROM Peliculas WHERE YEAR(FechaEstreno) BETWEEN 1980 AND 1989



-- 2) Obtener los Actores nacidos en la Década de los '70.

SELECT * FROM Reparto WHERE YEAR(FechaNacimiento) BETWEEN 1970 AND 1979