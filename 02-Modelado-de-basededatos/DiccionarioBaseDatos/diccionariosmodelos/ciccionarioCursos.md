# 📘 Diccionario de Datos – Cursos 
**Tabla Estudiantes**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumEstudiante`   | INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador del estudiante    |
| `Matricula`       | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ✅ | -  | -    | Matricula del estudiante        |
| `Nombre`          | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Nombre del estudiante           |
| `ApellidoPaterno` | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido paterno del estudiante |
| `ApellidoMaterno` | NCHAR     | 50   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido materno del estudiante |


**Tabla Curso**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumCurso`     | INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador del curso               |
| `Codigo`       | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ✅ | -  | -    | Codigo del curso                      |
| `Nombre`       | NVARCHAR  | 50   | ❌  | ❌  | ❌   | ❌ | -  | -    | Nombre del libro                      |


**Tabla Inscripcion**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumEstudiante`    | INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -  | Identificador del estudiante            |
| `NumCurso`         | INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -  | Identificador del curso                 |
| `fechaInscripcion` | INT       | -    | ❌  | ❌  | ❌   | ❌ |  - | -  | Fecha de inscripcion de la inscripcion  |
