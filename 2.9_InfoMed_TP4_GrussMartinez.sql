SELECT id_medico, count(id_receta) AS "Recetas Emitidas"
FROM recetas
GROUP BY id_medico
ORDER BY id_medico;