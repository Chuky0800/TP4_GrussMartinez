SELECT m.nombre, count(r.id_medicamento) AS "Cantidad de Prescripciones"
FROM recetas r
JOIN medicamentos m 
ON r.id_medicamento = m.id_medicamento
WHERE r.id_medico = 2 
GROUP BY m.nombre
HAVING count(r.id_medicamento) > 1;
