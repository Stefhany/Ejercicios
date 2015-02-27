<%-- 
    Document   : eliminar
    Created on : 3/12/2014, 03:31:30 PM
    Author     : Sena
--%>

<%@page import="modelo.daos.ProfesorDAO"%>
<%@page import="Dtos.ProfesorDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <%  ProfesorDTO profeDto = new ProfesorDTO();
          HttpSession miSesion = request.getSession(false);
          if  (miSesion.getAttribute("usuarioLogueado") == null){
              response.sendRedirect("login.jsp");
          }else {
            
              ProfesorDTO userValidado = new ProfesorDTO();
              ProfesorDAO profeDao = new ProfesorDAO();
              userValidado = (ProfesorDTO) miSesion.getAttribute("usuarioLogueado");
              
              if(request.getParameter("id") != null ){
                 // profeDto = profeDao.consultarById(Integer.parseInt(request.getParameter("id")));
              }
          }
        %>
        
        <h1>Modificar los datos del usuario</h1>
        
       
        <form name="registroprofe" action="Controlador" method="POST">
            <label for="txtNombre">Nombre completo</label>
            <input type="text" name="txtNombre" id="txtNombre" value="<%if(profeDto !=null){out.print(profeDto.getNombreCompleto());}%>" size="40" />
            <br>
            <label for="txtCorreo">Correo Electrónico</label>
            <input type="text" name="txtCorreo" id="txtCorreo" value="<%if(profeDto !=null){out.print(profeDto.getCorreoElectronico());}%>" size="40" />
            <br>
            <label for="txtUserName">UserName</label>
            <input type="text" name="txtUserName" id="txtUserName" value="<%if(profeDto !=null){out.print(profeDto.getUserName());}%>" size="10" />
            <br>
            <input type="hidden" name="mProfesor" id="rProfesor" value="" />
            <input type="submit" value="Actualizar" name="btnActualizarProfe" />
            <br>
        </form>
        
    </body>
</html>
