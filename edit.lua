--Script/Resource: MySql (DB Server) by Jorge

----------------------------------------Settings----------------------------------------:

DatabaseType = true --True: MySql, False: Sqlite (Nota: Recuerda la sintaxis de comandos SQL puede variar dependiendo el tipo de base de datos!!).

database_MySql = {
    dbName = "servidor_mta",    --Nombre de db
    dbHost = "127.0.0.1",       --Host
    dbPort = "3306",            --Puerto
    dbUser = "root",            --Usuario
    dbPass = ""                 --Contraseña
}

---------------------------Export Uso (Solo de lado servidor)---------------------------:

--[[
    ¡OJO! Usar esto en el meta del resource que vayas a usar el export:

    [                   <include resource="MySQL"/>                   ]

    --Uso y Ejemplos de export (Todo de lado server):

    --CREATE
    --exports.MySQL:create("CREATE TABLE IF NOT EXISTS save_system (Cuenta TEXT, Dinero INTEGER)")
    
    --INSERT
    --local ok = exports.MySQL:insert("INSERT INTO save_system (Cuenta, Dinero) VALUES (?, ?)", "juan", 500)
    
    --SELECT (Query)
    --local filas = exports.MySQL:query("SELECT * FROM save_system WHERE Cuenta = ?", "juan")
    
    --UPDATE
    --exports.MySQL:update("UPDATE save_system SET Dinero = ? WHERE Cuenta = ?", 800, "juan")
    
    --DELETE
    --exports.MySQL:delete("DELETE FROM save_system WHERE Cuenta = ?", "juan")
    
--]]

----------------------------------------------------------------------------------------: