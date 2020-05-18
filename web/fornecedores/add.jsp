<%-- 
    Document   : add
    Created on : 18/05/2020, 12:36:36
    Author     : NOEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.gov.sp.fatec.db.Fornecedor" %>
<%@page import="br.gov.sp.fatec.db.Db" %>
<!DOCTYPE html>
<%
    String error = null;
    
    if(request.getParameter("add") != null){
        String nome = request.getParameter("nome");
        String razaoSocial = request.getParameter("razaoSocial");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        if(nome.isEmpty())error = "Nome não pode ser nulo";
        else if(razaoSocial.isEmpty())error = "Razão Social não pode ser nulo";
        else if(cnpj.isEmpty())error = "CNPJ não pode ser nulo";
        else if(email.isEmpty())error = "E-mail não pode ser nulo";
        else if(telefone.isEmpty())error = "Telefone não pode ser nulo";
        else if(endereco.isEmpty())error = "Endereço não pode ser nulo";
        else {
                Fornecedor supplyer = new Fornecedor();
                supplyer.setFornecedor(nome, razaoSocial, cnpj, email, telefone, endereco);
                Db.getFornecedores().add(supplyer);
                response.sendRedirect("list.jsp");
            }
        }
%>
<html>
    <head>
        <title>Cadastro de Fornecedor - Cadastro WebApp</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <h3>Cadastrar Fornecedor</h3>
        <%if (error != null) { %>
        <div style="color: red"><%=error%></div>
        <% }%>
        <form method="post">
            Nome:<br/>
            <input type="text" name="nome"/><br/>
            Razão Social:<br/>
            <input type="text" name="razaoSocial"/><br/>
            CNPJ:<br/>
            <input type="text" name="cnpj"/><br/>
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
