SELECT p.nombre, count(r.id_receta) AS "Cantidad de Recetas Recibidas"
FROM recetas r
JOIN pacientes p 
ON r.id_paciente = p.id_paciente
GROUP BY p.nombre;
