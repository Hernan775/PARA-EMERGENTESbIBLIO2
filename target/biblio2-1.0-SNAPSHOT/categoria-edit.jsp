<%@page import="com.emergentes.entidades.Categoria"%>
<%
    Categoria cate = (Categoria) request.getAttribute("categoria");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registrar categoria</h1>
        <form action="CategoriaServlet" method="post">
            <label>Descripción:</label>
            <input type="hidden" name="id" value="<%= cate.getId() %>">
            <input type="text" name="descripcion" value="<%= cate.getDescripcion()%>">
            <input type="submit">
        </form>
    </body>
</html>
