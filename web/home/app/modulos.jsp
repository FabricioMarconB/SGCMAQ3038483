<%@page import="model.Usuario" %>

<% 
    String nomeUsuarioSessao = "";
    if ( (session != null) && (session.getAttribute("usuario_sessao") != null) ) {
            Usuario usuarioSessao = (Usuario) session.getAttribute("usuario_sessao");
            nomeUsuarioSessao = usuarioSessao.getId() + " " + usuarioSessao.getNome();
        }
%>
<h1>Menu</h1>
<menu>   
    <li><a href="/sgcmaq3038483/home?task=logout"><%= nomeUsuarioSessao %> -- Logout</a></li>
<menu/>   