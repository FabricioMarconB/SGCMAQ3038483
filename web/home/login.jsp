<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        
    </head>
    <body>
        <% 
            String id = "";
            Cookie[] cookies = request.getCookies();
            if( cookies != null ){
                for( Cookie cookie : cookies ){
                    if( cookie.getName().equals("id") ){
                        id = cookie.getValue();
                        break;
                    }
                }
            }
        %>
        
        
        <h1>Login</h1>
        <form action="/sgcmaq3038483/home?task=login" method="post">
            
            <label for="id">Id:</label>
            <input type="number" id="id" name="id" value="<%= id %>" required <br/>
            
            <label for="senha">Senha:</label>
            <input type="password" id="senha" name="senha" value="" required><br/>
            
            <input type="submit" value="Login">
            
        </form>
    </body>
</html>
