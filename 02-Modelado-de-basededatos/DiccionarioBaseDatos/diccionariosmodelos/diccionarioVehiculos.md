# 📘 Diccionario de Datos – Vehiculos
**Tabla Cliente**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumCliente`| INT       | -    | ✅  | ❌  | ❌   | ✅ |  - | -    | Identificador del cliente               |
| `Nombre`    | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Nombre completo del cliente             |
| `Apellido`  | NVARCHAR  | 20   | ❌  | ❌  | ❌   | ❌ | -  | -    | Apellido del cliente                    |
| `Apellido2` | NVARCHAR  |20    | ❌  | ❌  | ❌   |❌  | -  | -    | Apellido 2 del cliente                  |