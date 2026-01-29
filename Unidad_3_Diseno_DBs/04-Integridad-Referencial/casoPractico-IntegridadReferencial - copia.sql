INSERT INTO dbo.Elementos (Descripcion) VALUES ('AGUA'), ('FUEGO'), ('PLANTA');
INSERT INTO dbo.Elementos (Descripcion) VALUES ('ELECTRICIDAD');

SELECT * FROM Habilidades

INSERT INTO dbo.Habilidades (Nombre, Descripcion, IdTipo) VALUES ('bomba de agua', 'tira mucha agua', 1);
INSERT INTO dbo.Habilidades (Nombre, Descripcion, IdTipo) VALUES ('atack trueno', 'te electrico', 4);

-- traigo el nombre y el tipo
SELECT H.Nombre Habilidad, E.Descripcion AS Tipo FROM Habilidades H INNER JOIN Elementos E ON H.IdTipo = E.Id


INSERT INTO [Pokemons.Habilidades] VALUES (1, 1, 1)


SELECT * FROM Elementos