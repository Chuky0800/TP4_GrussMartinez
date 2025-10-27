SELECT DISTINCT ON (c.id_paciente)
    p.nombre,
    c.fecha AS "Última Consulta",
    c.diagnostico
FROM 
    consultas c
JOIN 
    pacientes p ON c.id_paciente = p.id_paciente
ORDER BY 
    c.id_paciente, c.fecha DESC;

