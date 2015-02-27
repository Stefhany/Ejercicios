package org.apache.jsp.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Dtos.ProfesorDTO;
import java.util.LinkedList;
import modelo.daos.ProfesorDAO;

public final class listado_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        ");

            response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setDateHeader("Expires", 0);
        
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Listado de profesores</title>\n");
      out.write("        <script>\n");
      out.write("            function confirmar() {\n");
      out.write("                if (confirm('Esta seguro que desea borrar')) {\n");
      out.write("                    return true;\n");
      out.write("                } else {\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            HttpSession misesion = request.getSession(false);

            if (misesion.getAttribute("usuarioLogueado") == null) {
                response.sendRedirect("login.jsp?msg= Usuario desconocido");

            } else {
                ProfesorDTO pr = new ProfesorDTO();
                pr = (ProfesorDTO) misesion.getAttribute("usuarioLogueado");
        
      out.write("\n");
      out.write("\n");
      out.write("        <h1>Muestra el listado de profesores</h1>\n");
      out.write("        <h3> Bienvenido ");
 out.print(pr.getNombreCompleto());
      out.write("</h3>\n");
      out.write("        <h3> <a href=\"logout.jsp\">Cerrar Sesión</a></h3>\n");
      out.write("        ");

            ProfesorDAO pdao = new ProfesorDAO();
            LinkedList<ProfesorDTO> lista = new LinkedList<ProfesorDTO>();
            lista = (LinkedList<ProfesorDTO>) pdao.getAll();


        
      out.write("\n");
      out.write("        <div class=\"confirmarOK\">\n");
      out.write("            ");
                    if (request.getParameter("sal") != null) {
                    out.print(request.getParameter("sal"));

                }
            
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Codigo</th>\n");
      out.write("                    <th>Nombre docente</th>\n");
      out.write("                    <th>Email</th>\n");
      out.write("                    <th>user</th>\n");
      out.write("                        ");

                            if (pr.getClaveProfesor() == 3) {
                        
      out.write("   \n");
      out.write("\n");
      out.write("                    <th>Eliminar</th>\n");
      out.write("                        ");
 }
      out.write(" \n");
      out.write("                     <th>Modificar</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("                ");
                    for (ProfesorDTO p : lista) {

                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(p.getClaveProfesor());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(p.getNombreCompleto());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(p.getCorreoElectronico());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(p.getUserName());
      out.write("</td>\n");
      out.write("                    ");

                        if (pr.getClaveProfesor() == 3) {
                    
      out.write("   \n");
      out.write("                    <td><a href=\"../Controlador?id=");
      out.print(p.getClaveProfesor());
      out.write("\" onclick=\"return confirmar();\"><img src=\"../img/eliminar.png\" width=\"48\" height=\"48\" alt=\"Eliminar Registro\"/>\n");
      out.write("                        </a></td>\n");
      out.write("                        ");
 }
      out.write(" \n");
      out.write("                   <td><a href=\"modificar.jsp?id=");
      out.print(p.getClaveProfesor());
      out.write("\"><img src=\"../img/Modificar.png\" width=\"48\" height=\"48\" alt=\"Eliminar Registro\"/>\n");
      out.write("                        </a></td>     \n");
      out.write("                        \n");
      out.write("                </tr>\n");
      out.write("                ");

                    }
      out.write("\n");
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("        <br> Actividades:\n");
      out.write("\n");
      out.write("        <ol type=\"a\">\n");
      out.write("            <li>Colocar estilo a la tabla</li>\n");
      out.write("            <li>adicionar las acciones eliminar y modificar a la tabla</li>\n");
      out.write("            <li> Si un rol solo tiene permiso para modificar, como evitamos la otra columna?</li>\n");
      out.write("            <li> Realizar una función en la BD que saque el username partiendo de las iniciales de los nombres apellidos</li>\n");
      out.write("\n");
      out.write("        </ol>\n");
      out.write("        ");

            }   // Cierra el else que valida la sesión
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
