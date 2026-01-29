INSERT INTO dbo.Elementos (Descripcion) VALUES ('AGUA'), ('FUEGO'), ('PLANTA');
INSERT INTO dbo.Elementos (Descripcion) VALUES ('ELECTRICIDAD');

SELECT * FROM Habilidades

INSERT INTO dbo.Habilidades (Nombre, Descripcion, IdTipo) VALUES ('bomba de agua', 'tira mucha agua', 1);
INSERT INTO dbo.Habilidades (Nombre, Descripcion, IdTipo) VALUES ('atack trueno', 'te electrico', 4);
INSERT INTO dbo.Habilidades (Nombre, Descripcion, IdTipo) VALUES ('aliento dragon', 'es poderoso', 5);
INSERT INTO dbo.Habilidades (Nombre, Descripcion, IdTipo) VALUES ('aliento dragon', 'es poderoso', NULL); -- -> PONGO NULL AL ID

UPDATE Habilidades SET IdTipo = 4 WHERE Id = 3

-- traigo el nombre y el tipo
SELECT H.Nombre Habilidad, E.Descripcion AS Tipo FROM Habilidades H INNER JOIN Elementos E ON H.IdTipo = E.Id


INSERT INTO [Pokemons.Habilidades] VALUES (1, 1, 1)


SELECT * FROM Elementos

-- hago una relacion entre la tabla de habilidades con la tabla elementos
ALTER TABLE Habilidades
	ADD CONSTRAINT FK_Habilidades_Tipo FOREIGN KEY (IdTipo) REFERENCES Elementos(Id)


ALTER TABLE Habilidades 
	ALTER COLUMN IdTipo INT NOT NULL