<%-- 
    Document   : add
    Created on : 18/05/2020, 12:36:36
    Author     : NOEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.gov.sp.fatec.Cliente" %>
<%@page import="br.gov.sp.fatec.Db" %>
<!DOCTYPE html>
<%
    String error = null;
    
    if(request.getParameter("add") != null){
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        if(nome.isEmpty())error = "Nome não pode ser nulo";
        else if(cpf.isEmpty())error = "CPF não pode ser nulo";
        else if(rg.isEmpty())error = "RG não pode ser nulo";
        else if(email.isEmpty())error = "E-mail não pode ser nulo";
        else if(telefone.isEmpty())error = "Telefone não pode ser nulo";
        else if(endereco.isEmpty())error = "Endereço não pode ser nulo";
        else {
                Cliente client = new Cliente();
                client.setCliente(nome, cpf, rg, email, telefone, endereco);
                Db.getClientes().add(client);
                response.sendRedirect("cliente.jsp");
            }
        }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Novo Cliente</title>
    </head>
    <body>
        
        <h3><a href="<%= request.getContextPath() %>/cliente.jsp">Clientes</a></h3>
        <h4>Cadastrar Cliente</h4>
        <%if (error != null) { %>
        <div style="color: red"><%=error%></div>
        <% }%>
        <form method="post">
            Nome:<br/>
            <input type="text" name="nome"/><br/>
            CPF:<br/>
            <input type="text" name="cpf"/><br/>
            RG:<br/>
            <input type="text" name="rg"/><br/>
            Email:<br/>
            <input type="email" name="email"/><br/>
            Telefone:<br/>
            <input type="text" name="telefone"/><br/>
            Endereço:<br/>
            <input type="text" name="endereco"/><br/>
            <input type="submit" name="add" value="Adicionar"/>
        </form>
        
    </body>
</html>
