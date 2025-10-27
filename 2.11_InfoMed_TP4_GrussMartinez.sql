select p.nombre AS "Nombre del Paciente", c.fecha AS "Fecha de la Consulta", c.diagnostico
from consultas c
join pacientes p
ON c.id_paciente = p.id_paciente
WHERE fecha BETWEEN '2024-08-01'AND '2024-08-31';