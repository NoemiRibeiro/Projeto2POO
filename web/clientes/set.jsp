<%-- 
    Document   : set
    Created on : 18/05/2020, 14:56:21
    Author     : NOEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.gov.sp.fatec.db.Cliente" %>
<%@page import="br.gov.sp.fatec.db.Db" %>
<!DOCTYPE html>
<%
    String error = null;
    Cliente client = null;
    int index = -1;
    try{
        index = Integer.parseInt(request.getParameter("index"));
        client = Db.getClientes().get(index);
        if (request.getParameter("set") != null) {
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
        else{
                Cliente editCliente = new Cliente();
                editCliente.setCliente(nome, cpf, rg, email, telefone, endereco);
                Db.getClientes().set(index,editCliente);
                response.sendRedirect("list.jsp");
            }
        }

    }catch(Exception ex){
        error = "Índice inválido";
    }
%>
<html>
    <head>
        <title>Alteração de Cliente - Cadastro WebApp</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <h3>Alterar Cliente</h3>
        <%if(error != null) {%>
        <div style="color: red"><%=error%></div>
        <% }%>
        <form method="post">
            Nome:<br/>
            <input type="text" name="nome" value="<%= client.getNome() %>"/><br/>
            CPF:<br/>
            <input type="text" name="cpf" value="<%= client.getCpf() %>"/><br/>
            RG:<br/>
            <input type="text" name="rg" value="<%= client.getRg() %>"/><br/>
            Email:<br/>
            <input type="email" name="email" value="<%= client.getEmail() %>"/><br/>
            Telefone:<br/>
            <input type="text" name="telefone" value="<%= client.getTelefone() %>"/><br/>
            Endereço:<br/>
            <input type="text" name="endereco" value="<%= client.getEndereco() %>"/><br/>
            <input type="submit" name="set" value="Alterar"/>
        </form>
        
    </body>
</html>
