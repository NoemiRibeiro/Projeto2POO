<%-- 
    Document   : list
    Created on : 18/05/2020, 12:58:05
    Author     : NOEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.gov.sp.fatec.Cliente"%>
<%@page import="br.gov.sp.fatec.Db"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Clientes</title>
    </head>
    <body>
        <h3><a href="<%= request.getContextPath() %>/cliente.jsp">Clientes</a></h3>
        <h4>Lista de  Clientes</h4>
        
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>CPF</th>
                <th>RG</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Comandos</th>
            </tr>
            <% for(Cliente client:Db.getClientes()){ %>
            <tr>
                <td><%= client.getNome() %></td>
                <td><%= client.getCpf()%></td>
                <td><%= client.getRg() %></td>]
                <td><%= client.getEmail() %></td>
                <td><%= client.getTelefone() %></td>
                <td><%= client.getEndereco()%></td>
                <td>
                    <%int index = Db.getClientes().indexOf(client);%>
                    <a href="#">Alterar</a>
                    <a href="#">Excluir</a>
                </td>
            </tr>            
            <% } %>
            
                   
        </table>
        
    </body>
</html>
