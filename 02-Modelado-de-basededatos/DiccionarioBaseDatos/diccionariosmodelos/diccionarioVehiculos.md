# 📘 Diccionario de Datos – Vehiculos
**Tabla Cliente**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumCliente`| INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador del cliente               |
| `Nombre`    | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Nombre completo del cliente             |
| `Apellido`  | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido del cliente                    |
| `Apellido2` | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido 2 del cliente                  |
| `Curp`      | NCHAR     | 18   | ❌  | ❌  | ❌   | ✅ | -  | -    | Curp del cliente                        |
| `telefono`  | NVARCHAR  | 12   | ❌  | ❌  | ✅   | ❌ | -  | -    | telefono del cliente                    |
| `Calle`     | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Calle del cliente                       |
| `Ciudad`    | NVARCHAR  | 50   | ❌  | ❌  | ❌   | ❌ | -  | -    | Ciudad del cliente                      |


**Tabla Renta**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumCliente`     | INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador del cliente           |
| `NumVehiculo`    | INT       | -    | ✅  | ❌  | ❌   | ✅ | -  | -    | Identificador del vehiculo          |
| `numDiasPrest`   | INT       | -    | ❌  | ❌  | ❌   | ❌ | -  | -    | Numero de dias que se presta el vehiculo |
| `fechaInicio`    | DATE      | 20   | ❌  | ❌  | ❌   |❌  | -  | -    | fecha de inicio que se renta        |
| `fechaTermino`   | DATE      | 20   | ❌  | ❌  | ❌   |❌  | -  | -    | fecha de termino que se renta       |


**Tabla Vehiculo**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumVehiculo`    | INT      | -    | ✅  | ❌  | ❌   |✅  | -  | -    | Identificador del vehiculo          |
| `marca       `   | NVARCHAR | 20   | ❌  | ❌  | ❌   |❌  | -  | -    | Marca del vehiculo                  |
| `anio`           | DATE     | 20   | ❌  | ❌  | ❌   |❌  | -  | -    | Año del vehiculo                    |
| `modelo`         |NVARCHAR  | 40   | ❌  | ❌  | ❌   |❌  | -  | -    | Modelo del carro                    |
| `placa`          |NVARCHAR  | 30   | ❌  | ❌  | ❌   |✅  | -  | -    | Placa del carro                     |
| `NumCliente`     | INT      | -    | ❌  | ✅  | ❌   |✅  |  - | Cliente(NumCliente)    | Identificador del cliente |
| `numSucursal`    |INT       | -    | ❌  | ✅  | ❌   |❌  | -  |Sucursal(NumSucursal) | Numero de sucursal donde esta el carro|


**Tabla Sucursal**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumSucursal`    | INT       | -    | ✅  | ❌  | ❌   | ✅ | -  | -    | Identificador de la sucursal        |
| `NombreSucursal` | NVARCHAR  | 20   | ❌  | ❌  | ✅   | ✅ | -  | -    | Nombre de la sucursal               |
| `Ubicacion`      | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ✅ | -  | -    | Ubicacion de la sucursal            |



