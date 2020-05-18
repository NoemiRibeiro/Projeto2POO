<%-- 
    Document   : cliente
    Created on : 18/05/2020, 12:23:46
    Author     : NOEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cliente - Cadastro WebApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
    
        <center><h3>Cliente - Manutenção de Cadastro</h3></center>
        <h4><a href="clientes/list.jsp">Lista de Clientes</a></h4>
        <h4><a href="clientes/add.jsp">Cadastrar Clientes</a></h4>
    
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
