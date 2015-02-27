<%-- 
    Document   : login
    Created on : 3/12/2014, 01:11:48 PM
    Author     : Sena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <link rel="stylesheet" type="text/css" href="../css/mystyle.css">
    </head>
    <body>
        <h1>Bienvenidos</h1>
        
        <fieldset>
            <form name="formlogin" action="../Controlador" method="POST">
                <label for="txtUser">Nombre de usuario</label>
                <input type="text" name="txtUser" value="" size="20" /><br>
                <label for="txtPass">Contraseña</label>
                <input type="text" name="txtPass" value="" size="20" /><br>
                <br>
                <label for="btnIngresar"></label>
                <input type="submit" value="Ingresar" name="btnIngresar" />
                
            </form>
            
        </fieldset>
        <div class="style3">
                <%
                    if(request.getParameter("msg")!= null){
                        out.print(request.getParameter("msg"));
                        
                    }
                %>
                
            </div>
                
                <hr>
                
                <form action="../Controlador" method="POST">
                    <input type="submit" value="Ingresar" name="btnIngresar" />
                </form>
                
                
    </body>
</html>
