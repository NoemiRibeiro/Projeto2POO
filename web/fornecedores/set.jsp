<%-- 
    Document   : set
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
        if (request.getParameter("set") != null) {
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
            else{
                Fornecedor editFornecedor = new Fornecedor();
                editFornecedor.setFornecedor(nome, razaoSocial, cnpj, email, telefone, endereco);
                Db.getFornecedores().set(index,editFornecedor);
                response.sendRedirect("list.jsp");
            }
        }

    }catch(Exception ex){
        error = "Índice inválido";
    }
%>
<html>
    <head>
        <title>Alteração de Fornecedor - Cadastro WebApp</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <h3>Alterar Fornecedor</h3>
        <%if(error != null) {%>
        <div style="color: red"><%=error%></div>
        <% }%>
        <form method="post">
            Nome:<br/>
            <input type="text" name="nome" value="<%= supplyer.getNome() %>"/><br/>
            Razão Social:<br/>
            <input type="text" name="cpf" value="<%= supplyer.getRazaoSocial() %>"/><br/>
            CNPJ:<br/>
            <input type="text" name="rg" value="<%= supplyer.getCnpj() %>"/><br/>
            Email:<br/>
            <input type="email" name="email" value="<%= supplyer.getEmail() %>"/><br/>
            Telefone:<br/>
            <input type="text" name="telefone" value="<%= supplyer.getTelefone() %>"/><br/>
            Endereço:<br/>
            <input type="text" name="endereco" value="<%= supplyer.getEndereco() %>"/><br/>
            <input type="submit" name="set" value="Alterar"/>
        </form>
        
    </body>
</html>
