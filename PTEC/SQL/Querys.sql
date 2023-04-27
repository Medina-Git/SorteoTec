SELECT DISTINCT C.id, C.nombre, C.apellido1 FROM Cliente C
INNER JOIN Pedido P ON C.id = P.id_cliente
ORDER BY C.nombre 

SELECT DISTINCT C.id, C.nombre, C.apellido1 FROM Cliente C
LEFT JOIN Pedido P ON C.id = P.id_cliente
WHERE P.id IS NULL
ORDER BY C.nombre 

SELECT * FROM Cliente C
INNER JOIN Pedido P ON C.id = P.id_cliente
ORDER BY C.nombre

SELECT SUM(CANTIDAD) FROM Pedido