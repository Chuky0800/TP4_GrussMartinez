SELECT m.nombre, count(DISTINCT c.id_paciente) AS "Cantidad de Pacientes" 
FROM consultas C
JOIN medicos m ON m.id_medico = C.id_medico
GROUP BY m.nombre
ORDER BY count(DISTINCT c.id_paciente) DESC;