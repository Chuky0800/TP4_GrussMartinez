# Trabajo Práctico N°4
![image](https://github.com/user-attachments/assets/f2e54dc0-6027-4cd7-817a-a42e47570113)

## _Autores:_ 
* Santiago Gruss
* Juan Agustín Martínez Haart

## **PARTE 1:** Bases de Datos

### 1. ¿Qué tipo de base de datos es? 

Para clasificar la base de datos, se considera:

Según su estructura (modelo de datos): Es una base de datos relacional. Porque la información se organiza en tablas que representan entidades (pacientes, médicos, recetas, consultas) relacionadas entre sí mediante claves primarias y foráneas.

Según su función o uso: Es una base de datos transaccional u operacional (OLTP – Online Transaction Processing). Se utiliza para registrar y gestionar la información diaria del centro médico: consultas, recetas, pacientes, estadísticas operativas.

Según su finalidad: Consideramos agregar esta clasificación porque nos parecía distintiva de la base de datos que estamos analizando, por lo tanto, según su finalidad es una base de datos administrativa / sanitaria enfocada en la gestión clínica y médica.

### 2. Armar el diagrama entidad-relación de la base de datos dada. 
<img src="imagenes/diagrama_entidad_relacion.png" alt="ejemplo_modelo-ER" style="width:500px;"/>

### 3. Armar el Modelo relacional de la base de datos dada.
![modelo_relacional](imagenes/modelo_relacional.png)

El modelo relacional que hemos planteado se definió previamente a través del Diagrama de Chen y con eso pudimos desarrollar la notación de Crow’s Foot. Con este último diseño buscamos reflejar la realidad operativa del “centro médico”, esperando integrar bien las referencias y la normalización de los datos.

La relación entre Paciente y Receta es de uno a muchos (1:N), ya que un paciente puede tener registradas múltiples recetas a lo largo del tiempo, pero cada receta pertenece a un solo paciente. Esta relación permite el seguimiento histórico de las prescripciones de un mismo individuo, asegurando que la trazabilidad se mantenga a lo largo del tiempo. Además, se establece que la Receta depende de la existencia de un paciente, por lo que se justifica que sea una entidad débil, cuya clave primaria incluye la clave del paciente.

De forma análoga, un Médico puede emitir muchas recetas, pero cada receta está asociada a un único médico que la emite. Por lo tanto, se establece una relación uno a muchos (1:N) desde Médico hacia Receta. Esta relación permite analizar la actividad médica por especialidad o por profesional, así como realizar auditorías de las prescripciones emitidas.
Cada Receta puede contener la prescripción de un medicamento o tratamiento específico. En este modelo se ha simplificado asumiendo que cada receta incluye un solo medicamento principal, por lo cual la relación es de muchos a uno (N:1) desde Receta hacia Medicamento. Esta decisión de diseño busca mantener la estructura del modelo simple y centrada en la trazabilidad de prescripciones, sin necesidad de incorporar una entidad intermedia que detalle múltiples medicamentos por receta (como “Detalle_Receta”), la cual fue descartada deliberadamente.

Cada Receta se asocia a una única enfermedad o diagnóstico que motiva la prescripción, mientras que una enfermedad puede estar vinculada a múltiples recetas emitidas en diferentes pacientes o momentos. Por tanto, la relación es uno a muchos (1:N) desde Enfermedad hacia Receta. Esta relación permite realizar análisis epidemiológicos, ya que posibilita relacionar las enfermedades más frecuentes con los medicamentos recetados o las especialidades médicas que las tratan.
Finalmente, la entidad Receta fue definida como entidad débil, ya que no tiene existencia independiente: depende tanto del Paciente como del Médico. Su clave primaria está compuesta por la combinación de las claves foráneas (IDPaciente, IDMedico, IDEnfermedad, IDMedicamento) junto con la Fecha de emisión, lo que garantiza la unicidad de cada registro sin necesidad de introducir un identificador nuevo.


### 4. Considera que la base de datos está normalizada. En caso que no lo esté, ¿cómo podría hacerlo?

En términos generales, consideramos que la base de datos propuesta se encuentra parcialmente normalizada, ya que las entidades principales (Paciente, Médico, Medicamento, Enfermedad, Receta, Consulta) están separadas correctamente y no se observan redundancias evidentes en su estructura conceptual.

Sin embargo, todavía no podemos afirmar con certeza que está completamente normalizada hasta la Tercera Forma Normal (3FN), ya que el modelo conceptual aún puede presentar atributos compuestos o dependencias transitivas que deberían analizarse con más detalle durante la fase de diseño lógico.

Para normalizarla, tendríamos que ir analizando cada Forma Normal, de la primera a la tercera. Para la 1FN, se cumple la condición de que celda de la tabla tiene un único valor. Para la 2FN, acá podríamos tener algún problema ya que puede que hayan dependencias parciales de los atributos a sus claves primarias.

Por último para que se cumpla 3FN, se deben cumplir las anteriores condiciones. Deberíamos repasar una por una las tablas para lograr esta Tercer Forma Normal, donde cada columna que no sea clave debe ser independiente de las demás columnas.

## **PARTE 2:** Bases de Datos

### 1. Cuando se realizan consultas sobre la tabla paciente agrupando por ciudad los tiempos de respuesta son demasiado largos. Proponer mediante una query SQL una solución a este problema.

```
query 1
```
(imagen del resultado de la query)
