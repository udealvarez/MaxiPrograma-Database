 COMANDO SELECT
 En esta clase vimos diferentes maneras de usar el comando SELECT. Adjunto la base de datos y las consultas que realice en esta clase.


SELECT * FROM Categorias

SELECT * FROM Paises

SELECT * FROM Peliculas

SELECT Titulo FROM Peliculas

SELECT Titulo, MinutosDuracion FROM Peliculas

SELECT Titulo, MinutosDuracion, Bio FROM Peliculas

SELECT Titulo, MinutosDuracion as Minutor, Bio as Descripcion FROM Peliculas

SELECT Titulo, MinutosDuracion as Minutor, Bio as Descripcion 
FROM Peliculas

SELECT COUNT(*)
FROM Peliculas

SELECT COUNT(Id) as 'Cantidad de peliculas'
FROM Peliculas

SELECT max(Id) as 'Id max peliculas'
FROM Peliculas

SELECT min(Id) as 'Id min de peliculas'
FROM Peliculas

SELECT sum(Id) as 'Suma cantidad de peliculas'
FROM Peliculas

SELECT sum(MinutosDuracion) as 'Suma de min duracion'
FROM Peliculas

SELECT sum(MinutosDuracion) / 60 
FROM Peliculas