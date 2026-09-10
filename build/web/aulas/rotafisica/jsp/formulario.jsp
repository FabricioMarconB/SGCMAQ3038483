<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario JSP</title>
    </head>
    <body>
        <h1>Formulario JSP</h1>
    <form action= "http://localhost:8080/sgcmaq3038483/aulas/rotalogica/jsp/servletpost" method="post">

        <label for="campoA">campoA</label>
        <input type="number" id="campoA" name="campoA" required=""> <br><br>

        <input type="checkbox" id="opcaoA" name="opcaoA" value="S"> 
        <label for="opcaoA">Opção A</label> <br> <br>

        <input type="checkbox" id="opcaoB" name="opcaoB" value="S"> 
        <label for="opcaoB">Opção B</label> <br> <br>

        <input type="submit" value="Salvar">

    </form>
    </body>
</html>
