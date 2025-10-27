SELECT 
    m.nombre AS "Nombre del Médico",
    p.nombre AS "Nombre del Paciente",
    COUNT(c.id_consulta) AS "Cantidad de Consultas"
FROM 
    consultas c
JOIN 
    medicos m ON c.id_medico = m.id_medico
JOIN 
    pacientes p ON c.id_paciente = p.id_paciente
GROUP BY 
    m.nombre, p.nombre
ORDER BY 
    m.nombre, p.nombre;


