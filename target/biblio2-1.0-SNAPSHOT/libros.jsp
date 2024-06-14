<%@page import="com.emergentes.entidades.Libro"%>
<%@page import="java.util.List"%>
<%
    List<Libro> libros = (List<Libro>) request.getAttribute("libros");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Libros</h1>
        <p>
            <a href="LibroServlet?action=add">Nuevo</a>
        </p>
        <table border="3">
            <tr>
                <th>Id</th>
                <th>Titulo</th>
                <th>Autor</th>
                <th>Disponible</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            <%
                for (Libro item : libros) {
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getTitulo()%></td>
                <td><%= item.getAutor()%></td>
                <td>
                    <input type="checkbox" name="disponible" <%= (item.getDisponible() == 1) ? "checked" : ""%> readonly>
                </td>
                <td><%= item.getCategoriaId()%></td>
                <td><%= item.getTitulo()%></td>
                <td><%= item.getAutor()%></td>
                <td><a href="LibroServlet?action=edit&id=<%= item.getId() %>">Editar</a> </td>
                <td><a href="LibroServlet?action=dele&id=<%= item.getId() %>" onclick="return(confirm('Esta seguro?'))">Eliminar</a></td>
            </tr>
            <%
                }
            %>

        </table>
    </body>
</html>
