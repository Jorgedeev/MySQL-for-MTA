<p align="center">
  <img width="600" height="200" alt="Job" src="https://github.com/user-attachments/assets/6b720ad4-d7fd-400b-88f4-277433168c1c" />
</p>

> MySQlite Database for MTA Server.

Este resource sirve para que el servidor tenga una base de datos central donde todos los sistemas (otros resources) puedan acceder a la base de datos central y hagan sus tablas y tengan una relación más sencilla y organizada.

> Include:

Nota: Antes de usar el resource "MySQL-for-MTA" por favor colocar el include en el mta.xml de su resource que vaya a conectarse a su database.

```xml
<include resource="MySQL-for-MTA"/>
```

> Uso y Ejemplos de export (Todo de lado server):

```lua
    -- CREATE:
    exports.MySQL:create("CREATE TABLE IF NOT EXISTS save_system (Cuenta TEXT, Dinero INTEGER)")
    
    -- INSERT:
    exports.MySQL:insert("INSERT INTO save_system (Cuenta, Dinero) VALUES (?, ?)", "juan", 500)
    
    -- UPDATE:
    exports.MySQL:update("UPDATE save_system SET Dinero = ? WHERE Cuenta = ?", 800, "juan")

    -- QUERY (Select):
    local filas = exports.MySQL:query("SELECT * FROM save_system WHERE Cuenta = ?", "juan")
    
    -- DELETE:
    exports.MySQL:delete("DELETE FROM save_system WHERE Cuenta = ?", "juan")
```
