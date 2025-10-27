UPDATE pacientes SET ciudad = CASE
	WHEN LOWER(SUBSTRING(TRIM(ciudad),1,1)) = 'b' THEN 'Buenos Aires'
    WHEN LOWER(SUBSTRING(TRIM(ciudad),1,1)) = 'c' THEN 'Cordoba'
    WHEN LOWER(SUBSTRING(TRIM(ciudad),1,1)) = 'm' THEN 'Mendoza'
    WHEN LOWER(SUBSTRING(TRIM(ciudad),1,1)) = 's' THEN 'Santa Fe'
    ELSE 'Rosario'
    END;
    