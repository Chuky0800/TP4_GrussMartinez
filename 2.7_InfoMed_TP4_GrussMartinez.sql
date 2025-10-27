SELECT ciudad, count(id_paciente) AS "Cantidad Pacientes"
FROM pacientes
GROUP BY ciudad;