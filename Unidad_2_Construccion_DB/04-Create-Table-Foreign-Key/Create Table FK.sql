USE MundoPokemon_DB3;
GO

CREATE TABLE [Pokemon.Habilidades](
	Id INT NOT NULL,
	IdPokemon INT,
	IdHabilidad INT,
	CONSTRAINT PK_Pokemon_Habilidad PRIMARY KEY(Id),
	CONSTRAINT FK_PokeHabilidad_Habilidades FOREIGN KEY(IdHabilidad) REFERENCES Habilidades(Id),

);