-- ALTER -> nos va a permitir hacer modificaciones en una tabla
	
	-- ADD, para agregarle cosas a la tabla
	-- ALTER, para hacer modificaciones en la tabla
	-- DROP, para eliminar cosas de una tabla


ALTER TABLE Pokemons
ALTER COLUMN Id INT NOT NULL; -- modifique el Id original


ALTER TABLE Pokemons
ADD Nombre VARCHAR(50),  -- ADD -> agregamos las columnas que necesito
	Numero INT,
	Bio VARCHAR(50),
	Altura INT;


ALTER TABLE Pokemons
ADD CONSTRAINT PK_Pokemon PRIMARY KEY(Id)


ALTER TABLE [Pokemon.Habilidades]
ADD CONSTRAINT FK_PokeHabilidad_Pokemons FOREIGN KEY(IdPokemon) REFERENCES Pokemons(Id)


