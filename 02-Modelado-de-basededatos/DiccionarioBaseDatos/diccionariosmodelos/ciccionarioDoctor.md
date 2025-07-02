# 📘 Diccionario de Datos – Doctor
**Tabla Doctores**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumDoctor`       | INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador del doctor              |
| `Nombre`          | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Nombre completo del doctor            |
| `ApellidoPaterno` | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido paterno del doctor           |
| `ApellidoMaterno` | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido materno del doctor           |


**Tabla Pacientes**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumPacientes`    | INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador de los pacientes        |
| `Nombre`          | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Nombre completo del paciente          |
| `ApellidoPaterno` | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido paterno del paciente         |
| `ApellidoMaterno` | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido materno del paciente         |


**Tabla Atencion**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumDoctor`       | INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador del doctor              |
| `NumPacientes`    | INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador de los pacientes        |
| `Fecha`           | INT       | -    | ❌  | ❌  | ❌   | ❌ |  - | -    | Fecha de atencion al cliente          |
