<%-- 
    Document   : index
    Created on : 03-nov-2014, 9:16:38
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- De estra forma se incluye una hoja de estilos. Tener presente la ruta donde se 
        encuentra respecto de la carpeta web pages-->        
        <link rel="stylesheet" href="css/mystyle.css" type="css/txt" >
        <SCRIPT language="JavaScript" src="js/ValidaUsuario.js"></SCRIPT>

        <title>Ejemplo Acceso a Bases de Datos desde Java WEB</title>
    </head>
    <body onload="focusIn();">
        <!-- 
        Para este ejemplo se usa Java EE 6 Web y servidor GalssFish 3.1.1
        Iniciamos con una inserción de un nuevo profesor, para la cual su user sera
        las iniciales del nombre
        -->
        <h3>Registro de un nuevo profesor</h3>

        <form name="registroprofe" action="Controlador" method="POST">
            <label for="txtUserName">UserName</label>
            <input type="text" name="txtUserName" id="txtUserName" value="" size="10" onchange="validarNombreUsuario(this);"/>
            <div id="empResult" style="background-color: white; font-size: 12px;color:red;">
            </div><div id="empResult2" style="background-color: white; font-size: 12px;color:green;">
            </div>
            <br>
            <label for="txtNombre">Nombre completo</label>
            <input type="text" name="txtNombre" id="txtNombre" value="" size="40" required="true"/>
            <br>
            <label for="txtCorreo">Correo Electrónico</label>
            <input type="text" name="txtCorreo" id="txtCorreo" value="" size="40" required="true"/>
            <br>
            
            <input type="hidden" name="rProfesor" id="rProfesor" value="" />
            <input type="submit" value="Registrar" name="btnRegistrarProfe" id="btnRegistrarProfe"/>
            <br>
        </form>

        <%
            if (request.getParameter("msg") != null) {

        %>
        <div class="confirmarOK"><%=request.getParameter("msg")%></div>        

        <%
            }
            // si es null el objeto, es decir, no se ha creado aun, no mostramos nada
            
           
        %>
    </body>
</html>
