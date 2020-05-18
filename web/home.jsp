<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Cadastro</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <style>
            
        </style>
    </head>
    <body>
        
        <div>
        <%@include file="WEB-INF/jspf/header.jspf" %> 
        
        </div>
         <div class='categories'>
            <div id='cliente'><h2>Clientes</h2></div>
            <div id='fornecedor'><h2>Fornecedores</h2></div>
            
      </div>                 
                       
       <script>
            document.getElementById('cliente').addEventListener('click', function(event) { document.location.href = '/Projeto02/cliente.jsp';});
            document.getElementById('fornecedor').addEventListener('click', function(event) { document.location.href = '/Projeto02/fornecedor.jsp';});
       </script>

       <%@include file="WEB-INF/jspf/footer.jspf" %>              
    </body>
</html>