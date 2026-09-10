<%-- 
    Document   : dados
    Created on : 10 de set. de 2026, 10:13:25
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.util.ArrayList" %>
<%@page import= "aulas.rotalogica.servlet.getpost.DadosFormulario" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dados Formulário JSP</title>
        <% 
            ArrayList<DadosFormulario> dados = (ArrayList<DadosFormulario>)request.getAttribute("lista");
        %>
    </head>
    <body>
        <h1>Dados Formulário JSP</h1>
        
        <table>
            <tr>
                <th>Campo A</th>
                <th>Opção A</th>
                <th>Opção B</th>
            </tr>
            
            <% for ( DadosFormulario df : dados) { %>
            <tr>
                <td><%= df.getCampoA() %></td>
                <td><%= df.getOpcaoA() %></td>
                <td><%= df.getOpcaoB() %></td>
            </tr>
            <% } %>                   
        </table>
        
        <button onclick="window.location.href='/sgcmaq3037282/aulas/rotafisica/jsp/formulario.jsp'">Adicionar</button>
    </body>
</html>
