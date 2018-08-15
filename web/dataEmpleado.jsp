<%-- 
    Document   : dataEmpleado
    Created on : 15-ago-2018, 13:51:51
    Author     : jbalceda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="empleado" class="bean.Empleado" scope="request" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos</title>
    </head>
    <body>
        <h1>Datos Empleado</h1>
        <form name="update" action="UpdateEmpleado" method="POST">
            <input type="hidden" name="codigo" value="<%=empleado.getCodigo()%>"><br>
            Apellido: <input type="text" name="apellido" value="<%=empleado.getApellidos()%>"><br>
            Nombres: <input type="text" name="nombre" value="<%=empleado.getNombres()%>"><br>
            Sueldo: <input type="text" name="sueldo" value="<%=empleado.getSueldo()%>"><br>
            <input type="submit" value="Editar">
            <input type="button" value="Cancelar" onclick="location.href = 'index.jsp'">
        </form>
    </body>
</html>
