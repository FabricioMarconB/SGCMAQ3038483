<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="aulas.rotalogica.servlet.getpost.DadosFormulario" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dados Formulário JSP</title>
    </head>
    
    <%
        ArrayList<DadosFormulario> dados = (ArrayList<DadosFormulario>) request.getAttribute("lista");
    %>
    
    <body>
        <h1>Dados Formulaŕio JSP</h1>
        <table>
                <tr>
                    <th>Cmapo A</th>
                    <th>Opção A</th>
                    <th>Opção b</th>
                </tr>
                
                <% for(DadosFormulario df : dados) {%>
                <tr>
                    <td><%= df.getCampoA()%></td> 
                    <td><%= df.getOpcaoA()%></td> 
                    <td><%= df.getOpcaoB()%></td> 
                    
                </tr>
                <%}%>
        </table>

        <button onclick="window.location.href='/sgcmaq3038483/aulas/rotafisica/jsp/formulario.jsp'">Adicionar</button>
        
    </body>
</html>
