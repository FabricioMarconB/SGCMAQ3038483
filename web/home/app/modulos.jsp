<%@page import="model.Usuario" %>
<%@page import="model.TipoUsuario" %>

<% 
    String nomeUsuarioSessao = "";
    if ( (session != null) && (session.getAttribute("usuario_sessao") != null) ) {
            Usuario usuarioSessao = (Usuario) session.getAttribute("usuario_sessao");
            nomeUsuarioSessao = usuarioSessao.getId() + " " + usuarioSessao.getNome();
        }
    TipoUsuario tipoUsuarioSessao = null;
    
    if ( (session != null) && (session.getAttribute("usuario_sessao") != null) ) {
            tipoUsuarioSessao = (TipoUsuario) session.getAttribute("tipo_usuario_sessao");
        }
%>
<h1>Menu</h1>
<menu>   
    <li><a href="/sgcmaq3038483/home/app/menu.jsp">Home</a></li>
    
    <% if ( (tipoUsuarioSessao != null) && (tipoUsuarioSessao.getModuloAdministrativo().equals("S") == true ) ) { %>
    
    <li><a href="/sgcmaq3038483/home/app/adm/tipousuario.jsp">Tipo Usuario</a></li>
    <li><a href="/sgcmaq3038483/home/app/adm/usuario.jsp">Usuários</a></li>
    <% } %>
    
    <li><a href="/sgcmaq3038483/home?task=logout"><%= nomeUsuarioSessao %> -- Logout</a></li>
<menu/>   