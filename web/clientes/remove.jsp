<%-- 
    Document   : remove
    Created on : 18/05/2020, 14:56:21
    Author     : NOEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.gov.sp.fatec.Cliente" %>
<%@page import="br.gov.sp.fatec.Db" %>
<!DOCTYPE html>
<%
    String error = null;
    Cliente client = null;
    int index = -1;
    try{
        index = Integer.parseInt(request.getParameter("index"));
        client = Db.getClientes().get(index);
        if (request.getParameter("remove") != null) {
            Db.getClientes().remove(index);
            response.sendRedirect("list.jsp");
        }
    }catch(Exception ex){
        error = "Índice inválido";
    }
%>
<html>
    <head>
        <title>Remoção de Cliente - Cadastro WebApp</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <h3>Remover Cliente?</h3>
        <%if(error != null) {%>
        <div style="color: red"><%=error%></div>
        <% }%>
        <form method="post">
            Nome:<br/>
            <b><%= client.getNome() %></b><br/>
            CPF:<br/>
            <%= client.getCpf() %><br/>
            RG:<br/>
            <%= client.getRg() %><br/>
            Email:<br/>
            <%= client.getEmail() %><br/>
            Telefone:<br/>
            <%= client.getTelefone() %><br/>
            Endereço:<br/>
            <%= client.getEndereco() %><br/>
            <input type="submit" name="remove" value="Remover"/>
        </form>
        
    </body>
</html>
