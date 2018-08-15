<%-- 
    Document   : dataEmpleado
    Created on : 15-ago-2018, 13:51:51
    Author     : jbalceda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos</title>
    </head>
    <body>
        <h1>Datos Empleado</h1>
        <form name="insert" action="InsertEmpleado" method="POST">
            Apellido: <input type="text" name="apellido" value=""><br>
            Nombres: <input type="text" name="nombre" value=""><br>
            Sueldo: <input type="text" name="sueldo" value=""><br>
            <input type="submit" value="Registrar">
            <input type="button" value="Cancelar" onclick="location.href = 'index.jsp'">
        </form>
    </body>
</html>
