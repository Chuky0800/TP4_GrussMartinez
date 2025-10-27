SELECT m.nombre, count(r.id_medicamento) AS "Cantidad de Prescripciones"
FROM recetas r
JOIN medicamentos m 
ON r.id_medicamento = m.id_medicamento
GROUP BY m.nombre
ORDER BY COUNT(r.id_medicamento) DESC
LIMIT 1;
