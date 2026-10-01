<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="model.TipoUsuario" %>
<%@page import="model.TipoUsuarioDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tipo Usuários</title>
    </head>
    <body>
        
        <% 
            ArrayList<TipoUsuario> lista = new TipoUsuarioDAO().getAll();
        %>
        
        <h1>Usuários</h1>
        
        <table>
            
            <tr>
                <th>Id</th>
                <th>Módulo Administrativo</th>
                <th>Módulo Agendamento</th>
                <th>Módulo Atendimento</th>
                <th></th>
                <th></th>
            </tr>
            
            <% for( TipoUsuario tpUs : lista ) { %>
                <tr>
                    <td><%= tpUs.getId() %></td>
                    <td><%= tpUs.getModuloAdministrativo()%></td>
                    <td><%= tpUs.getModuloAgendamento()%></td>
                    <td><%= tpUs.getModuloAtendimento()%></td>
                    
                    <td><a href="/sgcmaq3037282/home/app/adm/tipousuario_form.jsp?id=<%= tpUs.getId() %>">Alterar</a></td>
               
                    <td><a href="/sgcmaq3037282/home?task=usuario&action=delete&id=<%= tpUs.getId() %>" onclick="return confirm('Deseja realmente excluir Usuário ID = <%= tpUs.getId()%>?')" >Excluir</a></td>

                </tr>
            <% } %>
        </table>
        
        <button onclick="window.location.href='/sgcmaq3037282/home/app/adm/tipousuario_form.jsp'">Adicionar</button>
        
    </body>
</html>

