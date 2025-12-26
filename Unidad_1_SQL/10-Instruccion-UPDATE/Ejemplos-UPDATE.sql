-- UPDATE

SELECT * FROM Peliculas

-- SET -> seteamos lo que queremos cambiar y que le vamos a poner
UPDATE Peliculas SET 
Bio = 'Iron Man, antes también conocido como El Hombre de Hierro en español, ​ es un superhéroe que aparece en los cómics estadounidenses publicados por Marvel Comics. El personaje fue creado por el escritor y editor Stan Lee en colaboración con el guionista Larry Lieber.',
Titulo = 'Ironman'
WHERE Id = 2 -- siempre hay que especificar el ID por que sino, modifica todos los registros

-- filtro para poder hacer un update
SELECT * FROM Peliculas WHERE MinutosDuracion > 140

-- Ejemplo, ahora puedo decir que las peliculas con min > 140 tienen idDirector = 55
UPDATE Peliculas SET
IdDirector = 55
WHERE MinutosDuracion > 140











