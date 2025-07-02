# 📘 Diccionario de Datos – Manages
**Tabla Employee**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `EmployeeId`      | NVARCHAR  | 20   | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador del employee            |
| `SSN`             | INT       | -    | ❌  | ❌  | ❌   | ❌ | -  | -    | SSN del employee                      |
| `FisrtName`       | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido paterno del doctor           |
| `LastName`        | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido materno del doctor           |
| `Name`            | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido paterno del doctor           |
| `Salary`          | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido materno del doctor           |
| `Birthday`        | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido paterno del doctor           |
| `Address`         | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido materno del doctor           |
| `Sex`             | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido paterno del doctor           |
| `Deparmen`        | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido materno del doctor           |
| `Jefe`            | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido materno del doctor           |


**Tabla Departmen**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `idDepartment`    | INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador de los pacientes        |
| `NumeroDepto`     | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Nombre completo del paciente          |
| `NameDpto`        | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido paterno del paciente         |
| `Manager`         | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido materno del paciente         |
| `StartDate`         | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido materno del paciente         |


**Tabla Atencion**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumDoctor`       | INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador del doctor              |
| `NumPacientes`    | INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador de los pacientes        |
| `Fecha`           | INT       | -    | ❌  | ❌  | ❌   | ❌ |  - | -    | Fecha de atencion al cliente          |
