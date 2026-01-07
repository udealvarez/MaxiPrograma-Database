USE MundoPokemon_DB3
GO
-- creacion tabla pokemons
CREATE TABLE Pokemons(
	-- nombre
	-- tipo de dato
	-- null not null
	Id INT,
	Nombre varchar(50)


);
GO

CREATE TABLE Entrenadores(
	Id INT NOT NULL,
	Nombre varchar(50),
	Apellido varchar(50),
	NickName varchar(50),
	Email varchar(100),
	Clave varchar(25),
	FechaNacimiento date
);