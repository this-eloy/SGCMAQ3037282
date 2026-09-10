<%-- 
    Document   : formulario
    Created on : 10 de set. de 2026, 09:14:58
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário JSP</title>
    </head>
    <body>
        <h1>Formulário JSP</h1>
        
        <form action="/sgcmaq3037282/aulas/rotalogica/jsp/servletpost" method=post>
            <label for ="campoA">Campo A</label>
            <input type="number" id="campoA" name="campoA" required="">
            <br>
            <br>
            <input type="checkbox" id="opcaoA" name="opcaoA" value="S">
            <label for="opcaoA">Opção A</label>
            <br>
            <br>
            <input type="checkbox" id="opcaoB" name="opcaoB" value="S">
            <label for="opcaoB">Opção B</label>
            <br> 
            <br>
            <button type="submit">Salvar</button>
        </form>
        
    </body>
</html>
