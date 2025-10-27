SELECT 
    p.ciudad,
    s.descripcion AS sexo,
    COUNT(*) AS cantidad_pacientes
FROM 
    pacientes p
JOIN 
    sexobiologico s ON p.id_sexo = s.id_sexo
GROUP BY 
    p.ciudad, s.descripcion
ORDER BY 
    p.ciudad, s.descripcion;
