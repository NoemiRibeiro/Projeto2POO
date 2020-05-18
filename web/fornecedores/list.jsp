<%-- 
    Document   : list
    Created on : 18/05/2020, 12:58:05
    Author     : NOEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.gov.sp.fatec.db.Fornecedor"%>
<%@page import="br.gov.sp.fatec.db.Db"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Lista de Fornecedores - Cadastro Web App</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <center><h3>Lista de  Fornecedores</h3>
        
    <table border="1">
            <tr>
                <th>Nome</th>
                <th>Razão Social</th>
                <th>CNPJ</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Comandos</th>
            </tr>
            <% for(Fornecedor supplyer:Db.getFornecedores()) {%>
            <tr>
                <td><%= supplyer.getNome() %></td>
                <td><%= supplyer.getRazaoSocial()%></td>
                <td><%= supplyer.getCnpj() %></td>
                <td><%= supplyer.getEmail() %></td>
                <td><%= supplyer.getTelefone() %></td>
                <td><%= supplyer.getEndereco()%></td>
                <td>
                    <%int index = Db.getClientes().indexOf(supplyer);%>
                    <a href="set.jsp?index=<%=index%>">Alterar</a>
                    <a href="remove.jsp?index=<%=index%>">Excluir</a>
                </td>
            </tr>            
            <% } %>
            
                   
        </table></center>
        
    </body>
</html>
