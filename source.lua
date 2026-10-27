local resName = getResourceName(getThisResource())
outputServerLog("----------> " ..resName.." <----------")

local db

if DatabaseType == true then
    local hostString = string.format("dbname=%s;host=%s;port=%s;charset=utf8", database_MySql.dbName, database_MySql.dbHost, database_MySql.dbPort)
    db = dbConnect("mysql", hostString, database_MySql.dbUser, database_MySql.dbPass, "share=1;autoreconnect=1")
    outputServerLog("Base de Datos: MySql (Nube)")
else
    db = dbConnect("sqlite", "datos.db")
    outputServerLog("Base de Datos: Sqlite (Local)")
end

if not db then
    outputDebugString("["..resName.."]: Error al conectarse", 1)
end

function query(sql, ...)
    if not db then return false end
    local qr = dbQuery(db, sql, ...)
    if not qr then
        outputDebugString("["..resName.."] Consulta Sql invalida", 1)
        return false
    end
    local result, a, b = dbPoll(qr, -1)
    if not result then
        outputDebugString("["..resName.."] Error SQL: "..tostring(b), 1)
        return false
    end
    return result, a, b --Le da el resultado
end

function create(...)
    if not db then return false end
    return dbExec(db, tostring(...))
end

function insert(...)
    if not db then return false end
    return dbExec(db, ...)
end

function update(...)
    if not db then return false end
    return dbExec(db, ...)
end

function delete(...)
    if not db then return false end
    return dbExec(db, ...)
end
