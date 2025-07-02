# 📘 Diccionario de Datos – Biblioteca
**Tabla Lectores**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumLector`    | INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador del lector              |
| `Nombre`       | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Nombre completo del lector            |
| `Apellido`     | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido del lector                   |
| `Apellido2`    | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido 2 del lector                 |
| `NumMembresia` | NCHAR     | 50   | ❌  | ❌  | ❌   | ❌ | -  | -    | Curp del cliente                      |


**Tabla Libros**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumLibro`     | INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador del libro               |
| `numISBN`      | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ✅ | -  | -    | Numero de ISBN                        |
| `Cantidad`     | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Cantidad de libros en existencia      |
| `Titulo`       | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Titulo del libro                      |
| `Autor`        | NCHAR     | 50   | ❌  | ❌  | ❌   | ❌ | -  | -    | Autor del libro                       |


**Tabla Presta**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumLibro`     | INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador del libro               |
| `NumLector`    | INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador del lector              |
