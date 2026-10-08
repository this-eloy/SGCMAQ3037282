<%@page import="model.Usuario"%>
<%@page import="model.TipoUsuario"%>
<%
    String nomeUsuarioSessao = "";
    if( ( session != null ) && ( session.getAttribute("usuario_sessao") != null ) ) {
        Usuario usuarioSessao = (Usuario) session.getAttribute("usuario_sessao");
        nomeUsuarioSessao =  usuarioSessao.getId() + " " + usuarioSessao.getNome();
    }
        
    TipoUsuario tipoUsuarioSessao = null;
    
    if( ( session != null ) && ( session.getAttribute("tipo_usuario_sessao") != null ) ) {
        tipoUsuarioSessao = (TipoUsuario) session.getAttribute("tipo_usuario_sessao");
    }
    
%>
<h1>Menu</h1>
<menu>
    <li><a href="/sgcmaq3037282/home/menu.jsp"><%= nomeUsuarioSessao %> -- Home</a></li>
    
    <% if((tipoUsuarioSessao != null) && (tipoUsuarioSessao.getModuloAdministrativo().equals("S")) ) { %>
    <li><a href="/sgcmaq3037282/home/app/adm/tipousuario.jsp"><%=  %> Tipo Usuários</a></li>
    <li><a href="/sgcmaq3037282/home/app/adm/usuario.jsp"><%=  %> Usuários</a></li>
    <% }%>
    
    <li><a href="/sgcmaq3037282/home?task=logout"><%= nomeUsuarioSessao %> -- Logout</a></li>
</menu>