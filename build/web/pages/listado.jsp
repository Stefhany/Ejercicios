<%--
    Document   : listado
    Created on : 25-nov-2014, 21:27:07
    Author     : admin
--%>

<%@page import="Dtos.ProfesorDTO"%>
<%@page import="java.util.LinkedList"%>
<%@page import="modelo.daos.ProfesorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setDateHeader("Expires", 0);
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de profesores</title>
        <script>
            function confirmar() {
                if (confirm('Esta seguro que desea borrar')) {
                    return true;
                } else {
                    return false;
                }
            }

        </script>
    </head>
    <body>
        <%
            HttpSession misesion = request.getSession(false);

            if (misesion.getAttribute("usuarioLogueado") == null) {
                response.sendRedirect("login.jsp?msg= Usuario desconocido");

            } else {
                ProfesorDTO pr = new ProfesorDTO();
                pr = (ProfesorDTO) misesion.getAttribute("usuarioLogueado");
        %>

        <h1>Muestra el listado de profesores</h1>
        <h3> Bienvenido <% out.print(pr.getNombreCompleto());%></h3>
        <h3> <a href="logout.jsp">Cerrar Sesión</a></h3>
        <%
            ProfesorDAO pdao = new ProfesorDAO();
            LinkedList<ProfesorDTO> lista = new LinkedList<ProfesorDTO>();
            lista = (LinkedList<ProfesorDTO>) pdao.getAll();


        %>
        <div class="confirmarOK">
            <%                    if (request.getParameter("sal") != null) {
                    out.print(request.getParameter("sal"));

                }
            %>

        </div>
        <table border="1">
            <thead>
                <tr>
                    <th>Codigo</th>
                    <th>Nombre docente</th>
                    <th>Email</th>
                    <th>user</th>
                        <%
                            if (pr.getClaveProfesor() == 3) {
                        %>   

                    <th>Eliminar</th>
                        <% }%> 
                     <th>Modificar</th>
                </tr>
            </thead>
            <tbody>
                <%                    for (ProfesorDTO p : lista) {

                %>
                <tr>
                    <td><%=p.getClaveProfesor()%></td>
                    <td><%=p.getNombreCompleto()%></td>
                    <td><%=p.getCorreoElectronico()%></td>
                    <td><%=p.getUserName()%></td>
                    <%
                        if (pr.getClaveProfesor() == 3) {
                    %>   
                    <td><a href="../Controlador?id=<%=p.getClaveProfesor()%>" onclick="return confirmar();"><img src="../img/eliminar.png" width="48" height="48" alt="Eliminar Registro"/>
                        </a></td>
                        <% }%> 
                   <td><a href="modificar.jsp?id=<%=p.getClaveProfesor()%>"><img src="../img/Modificar.png" width="48" height="48" alt="Eliminar Registro"/>
                        </a></td>     
                        
                </tr>
                <%
                    }%>

            </tbody>
        </table>

        <br> Actividades:

        <ol type="a">
            <li>Colocar estilo a la tabla</li>
            <li>adicionar las acciones eliminar y modificar a la tabla</li>
            <li> Si un rol solo tiene permiso para modificar, como evitamos la otra columna?</li>
            <li> Realizar una función en la BD que saque el username partiendo de las iniciales de los nombres apellidos</li>

        </ol>
        <%
            }   // Cierra el else que valida la sesión
        %>
    </body>
</html>
