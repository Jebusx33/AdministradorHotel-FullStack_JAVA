package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"description\" content=\"Creative - Bootstrap 3 Responsive Admin Template\">\n");
      out.write("        <meta name=\"author\" content=\"GeeksLabs\">\n");
      out.write("        <meta name=\"keyword\" content=\"Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal\">\n");
      out.write("        <link rel=\"shortcut icon\" href=\"img/favicon.png\">\n");
      out.write("\n");
      out.write("        <title>Login Page 2 | Creative - Bootstrap 3 Responsive Admin Template</title>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- bootstrap theme -->\n");
      out.write("        <link href=\"css/bootstrap-theme.css\" rel=\"stylesheet\">\n");
      out.write("        <!--external css-->\n");
      out.write("        <!-- font icon -->\n");
      out.write("        <link href=\"css/elegant-icons-style.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("        <!-- Custom styles -->\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/style-responsive.css\" rel=\"stylesheet\" />\n");
      out.write("\n");
      out.write("        <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("          <script src=\"js/html5shiv.js\"></script>\n");
      out.write("          <script src=\"js/respond.min.js\"></script>\n");
      out.write("          <![endif]-->\n");
      out.write("\n");
      out.write("        <!-- =======================================================\n");
      out.write("          Theme Name: NiceAdmin\n");
      out.write("          Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/\n");
      out.write("          Author: BootstrapMade\n");
      out.write("          Author URL: https://bootstrapmade.com\n");
      out.write("        ======================================================= -->\n");
      out.write("    </head>\n");
      out.write("   <body class=\"login-img3-body\">\n");
      out.write("\n");
      out.write("  <div class=\"container\">\n");
      out.write("\n");
      out.write("    <form class=\"login-form\" action=\"index.html\">\n");
      out.write("      <div class=\"login-wrap\">\n");
      out.write("        <p class=\"login-img\"><i class=\"icon_lock_alt\"></i></p>\n");
      out.write("        <div class=\"input-group\">\n");
      out.write("          <span class=\"input-group-addon\"><i class=\"icon_profile\"></i></span>\n");
      out.write("          <input type=\"text\" class=\"form-control\" placeholder=\"Username\" autofocus>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"input-group\">\n");
      out.write("          <span class=\"input-group-addon\"><i class=\"icon_key_alt\"></i></span>\n");
      out.write("          <input type=\"password\" class=\"form-control\" placeholder=\"Password\">\n");
      out.write("        </div>\n");
      out.write("        <label class=\"checkbox\">\n");
      out.write("                <input type=\"checkbox\" value=\"remember-me\"> Remember me\n");
      out.write("                <span class=\"pull-right\"> <a href=\"#\"> Forgot Password?</a></span>\n");
      out.write("            </label>\n");
      out.write("        <button class=\"btn btn-primary btn-lg btn-block\" type=\"submit\">Login</button>\n");
      out.write("        <button class=\"btn btn-info btn-lg btn-block\" type=\"submit\">Signup</button>\n");
      out.write("      </div>\n");
      out.write("    </form>\n");
      out.write("    <div class=\"text-right\">\n");
      out.write("      <div class=\"credits\">\n");
      out.write("          <!--\n");
      out.write("            All the links in the footer should remain intact.\n");
      out.write("            You can delete the links only if you purchased the pro version.\n");
      out.write("            Licensing information: https://bootstrapmade.com/license/\n");
      out.write("            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin\n");
      out.write("          -->\n");
      out.write("          Designed by <a href=\"https://bootstrapmade.com/\">BootstrapMade</a>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
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
