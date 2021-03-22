package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registrarclientevista_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("         <meta charset=\"utf-8\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css\" >\n");
      out.write("    \n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, maximum-scale=1.0\">\n");
      out.write("    <title>Registros de clientes</title>\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Roboto&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"js/scripts.js\"></script>\n");
      out.write("    <script class=\"vali\">\n");
      out.write("        function validarcliente()\n");
      out.write("        {\n");
      out.write("           var todo_correcto=true;\n");
      out.write("            if(document.getElementById('nom').value.length < 2 || document.getElementById('nom').value==\"\"){\n");
      out.write("      todo_correcto = false;\n");
      out.write("      alert(\"El nombre no puede ser vacio y menor a 2.\");\n");
      out.write("      }\n");
      out.write("      if(isNaN(document.getElementById('tel').value) || document.getElementById('tel').value==\"\"){\n");
      out.write("      todo_correcto = false;\n");
      out.write("      alert(\"El telefono no puede ser vacio y numerico.\");\n");
      out.write("      }\n");
      out.write("      if(isNaN(document.getElementById('ced').value) || document.getElementById('ced').value==\"\"){\n");
      out.write("      todo_correcto = false;\n");
      out.write("      alert(\"El documento no puede ser vacio y numerico.\");\n");
      out.write("      }\n");
      out.write("      if(!document.getElementById('est').value==\"soltero\" || !document.getElementById('est').value==\"casado\" || document.getElementById('est').value==\"\"){\n");
      out.write("      todo_correcto = false;\n");
      out.write("      alert(\"Debe de escribir un estado valido.\");\n");
      out.write("      }\n");
      out.write("      if(isNaN(document.getElementById('eda').value) || document.getElementById('eda').value==\"\"){\n");
      out.write("      todo_correcto = false;\n");
      out.write("      alert(\"La edad no puede ser vacio y numerico.\");\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      if(!document.getElementById('terminos').checked){\n");
      out.write("      todo_correcto = false;\n");
      out.write("      \n");
      out.write("      }\n");
      out.write("      if(todo_correcto)\n");
      out.write("      {\n");
      out.write("          f1 = document.getElementById(\"form2\");\n");
      out.write("          f1.submit();\n");
      out.write("      }\n");
      out.write("          \n");
      out.write("      }\n");
      out.write("    </script>\n");
      out.write("        <title>Seguros</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"displey-flex  main-login position-fixed-full\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"formulario contenedor-principal\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("          <div class=\"formulario contenedor-principal\">\n");
      out.write("          <h1 class=\"titulo\">Registro de clientes</h1>\n");
      out.write("          <h3 class=\"titulo\">Digite todo en minusculas</h3>\n");
      out.write("          <form id=\"form2\" action=\"registrarcliente.jsp\" method=\"post\" onsubmit=\"validarcliente(); return false;\">\n");
      out.write("          <input name=\"cedula\" type=\"text\"  placeholder=\"cedula\" id=\"ced\" class=\"input-text\">\n");
      out.write("          <input name=\"nombres\" type=\"text\" placeholder=\"nombre completo\" id=\"nom\" class=\"input-text\">\n");
      out.write("          <input name=\"telefono\" type=\"text\" placeholder=\"telefono\"  id=\"tel\" class=\"input-text\">\n");
      out.write("          <input name=\"direccion\" type=\"text\" placeholder=\"direccion\" id=\"dir\" class=\"input-text\">\n");
      out.write("          <input name=\"estado\" type=\"text\" placeholder=\"estado civil (soltero-casado)\" id=\"est\" class=\"input-text\">\n");
      out.write("          <input name=\"edad\" type=\"text\" placeholder=\"edad\"  id=\"eda\" value=\"\" class=\"input-text\">\n");
      out.write("           <div class=\"displey-flex\">\n");
      out.write("           <!-- INGRESAR -->\n");
      out.write("           <button name=\"Ingresar\" id=\"calc\" type=\"submit\">Registrar</button>\n");
      out.write("           <a href=\"Reportes.jsp\" class=\"btn btn-success\">Reportes</a>\n");
      out.write("           <a href=\"registrarsoatvista.jsp\" class=\"btn btn-success\">soat</a>\n");
      out.write("           <a href=\"registrarptrvista.jsp\" class=\"btn btn-success\">PTR</a>\n");
      out.write("           <a href=\"Buscarcliente.jsp\" class=\"btn btn-success\">buscar cliente</a>\n");
      out.write("          </div>\n");
      out.write("  \t\t\t\n");
      out.write("          </form>\n");
      out.write("          <div class=\"displey-flex contenedor-selector\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"selector\">\n");
      out.write("     \n");
      out.write("\n");
      out.write("      <div class=\"terminos\">\n");
      out.write("        <input type=\"checkbox\" id=\"terminos\" name=\"terminodeuso\" value=\"ter\">\n");
      out.write("        <label for=\"termino1\"> Acepto los terminos</label><br>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("      </div>\n");
      out.write("        </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("          </div>\n");
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
