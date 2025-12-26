-- INSERT
INSERT INTO Peliculas (Titulo, Bio, MinutosDuracion) -- no importa el orden mientras cumpla con el tipo de dato
VALUES ('Armageddon', 'Cuando el Gobierno estadounidense descubre que solo tiene 18 días para salvar al mundo de un asteroide, un equipo de astronautas es enviado al espacio con la misión de salvar a la Tierra de la destrucción.', 150)

-- INSERT COMPLETO
INSERT INTO Peliculas(FechaEstreno, Titulo, MinutosDuracion, Bio, IdDirector)
VALUES ('TEXT-F', 'TEXT-T', 133, 'TEXT-B', 1)

INSERT INTO Peliculas(FechaEstreno, Titulo, MinutosDuracion, Bio, IdDirector)
VALUES ('1982-11-04', 'rAMBO', 97, 'Cuando John Rambo, un veterano boina verde, va a visitar a un viejo compañero de armas, se entera de que ha muerto víctima de las secuelas de la guerra. Algunos días después, la policía lo detiene por vagabundo y se ensaña con él. Entonces recuerda las torturas que sufrió en Vietnam y reacciona violentamente. ', 15)
-- YYYY-MM-DD

-- OTRA MANERA DE INSERT -> si voy a insertar todas las columnas, no hace falta aclararlas
INSERT INTO Peliculas VALUES ('1994-06-05', 'Pulp Fiction', 154, 'Dos asesinos a sueldo, un boxeador, la esposa de un mafioso y unos ladrones se cruzan en una travesía retorcida y sangrienta por las zonas más sórdidas de Los Ángeles.', NULL)

INSERT INTO Peliculas VALUES('1997-06-05', 'Con Air', 115, 'Un preso en libertad condicional, condenado por error, se encuentra en un vuelo con un grupo de prisioneros despiadados, e intenta detener un secuestro violento.', NULL)

SELECT * FROM Peliculas
SELECT * FROM Reparto