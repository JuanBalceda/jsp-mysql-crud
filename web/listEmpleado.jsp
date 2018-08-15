<%-- 
    Document   : listEmpleado
    Created on : 15-ago-2018, 11:11:08
    Author     : jbalceda
--%>

<%@page import="java.util.Iterator"%>
<%@page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<%@page import="bean.Empleado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="java.util.ArrayList" id="arrayEmpleado" scope="request" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta</title>
    </head>
    <body>
        <h1>Lista de empleados</h1>
        <a href="index.jsp">Menu</a>
        <table border="1">
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Apellidos</th>
                    <th>Nombres</th>
                    <th>Sueldos</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Empleado empleado = new Empleado();
                    Iterator i = arrayEmpleado.iterator();
                    while (i.hasNext()) {
                        empleado = (Empleado) i.next();
                %>
                <tr>
                    <td><a href="DataEmpleado?codigo=<%= empleado.getCodigo() %>"><%= empleado.getCodigo() %></a></td>
                    <td><%= empleado.getApellidos()%></td>
                    <td><%= empleado.getNombres() %></td>
                    <td><%= empleado.getSueldo() %></td>
                    <td><a href="DeleteEmpleado?codigo=<%= empleado.getCodigo() %>">Eliminar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>


    </body>
</html>
