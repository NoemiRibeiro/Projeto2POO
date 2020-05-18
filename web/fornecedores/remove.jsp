<%-- 
    Document   : remove
    Created on : 18/05/2020, 14:56:21
    Author     : NOEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.gov.sp.fatec.db.Fornecedor" %>
<%@page import="br.gov.sp.fatec.db.Db" %>
<!DOCTYPE html>
<%
    String error = null;
    Fornecedor supplyer = null;
    int index = -1;
    try{
        index = Integer.parseInt(request.getParameter("index"));
        supplyer = Db.getFornecedores().get(index);
        if (request.getParameter("remove") != null) {
            Db.getFornecedores().remove(index);
            response.sendRedirect("list.jsp");
        }
    }catch(Exception ex){
        error = "Índice inválido";
    }
%>
<html>
    <head>
        <title>Remoção de Fornecedor - Cadastro WebApp</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <h3>Remover Fornecedor?</h3>
        <%if(error != null) {%>
        <div style="color: red"><%=error%></div>
        <% }%>
        <form method="post">
            Nome:<br/>
            <b><%= supplyer.getNome() %></b><br/>
            CPF:<br/>
            <%= supplyer.getRazaoSocial() %><br/>
            RG:<br/>
            <%= supplyer.getCnpj() %><br/>
            Email:<br/>
            <%= supplyer.getEmail() %><br/>
            Telefone:<br/>
            <%= supplyer.getTelefone() %><br/>
            Endereço:<br/>
            <%= supplyer.getEndereco() %><br/>
            <input type="submit" name="remove" value="Remover"/>
        </form>
        
    </body>
</html>
