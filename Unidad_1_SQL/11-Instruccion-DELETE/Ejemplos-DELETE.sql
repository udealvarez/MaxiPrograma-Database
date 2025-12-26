-- DELETE   -> borrado fisico

DELETE FROM Peliculas WHERE Id = 1 -- si no aclaro con un WHERE, el DELETE borra todo lo que esta en la tabla peliculas


SELECT * FROM Peliculas WHERE Id > 20 -- ejemplo, si quiero borrar peliculas con id mayor a 20

-- evitar la eliminacion en cascada
-- usar eliminacion logica