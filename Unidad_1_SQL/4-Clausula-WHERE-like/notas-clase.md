-- en esta clase vamos a usar el operador LIKE

SELECT * FROM Peliculas
WHERE Titulo > 'Robocop'

SELECT * FROM Peliculas
WHERE Titulo LIKE 'Rob%'

SELECT * FROM Peliculas
WHERE Titulo LIKE '%cop' -- me trae todo lo que TERMINA con COP

SELECT * FROM Peliculas
WHERE Titulo LIKE 'T%' -- trae todo lo que EMPIECE con T

SELECT * FROM Peliculas
WHERE Titulo LIKE '%s'

SELECT * FROM Peliculas -- va a buscar las que CONTENGAN "LOS"
WHERE Titulo LIKE '%los %'

SELECT * FROM Peliculas -- busca en el medio del texto
WHERE Bio LIKE '%poli%'