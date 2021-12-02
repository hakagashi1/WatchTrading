package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("        <title>Aroma Shop - Register</title>\n");
      out.write("        <link rel=\"icon\" href=\"images/Fevicon.png\" type=\"image/png\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/bootstrap/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/fontawesome/css/all.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/themify-icons/themify-icons.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/linericon/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/owl-carousel/owl.theme.default.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/owl-carousel/owl.carousel.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/nice-select/nice-select.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/nouislider/nouislider.min.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--================ Start Header Menu Area =================-->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "HeaderMenu.jsp", out, false);
      out.write("\n");
      out.write("            <!--================ End Header Menu Area =================-->\n");
      out.write("\n");
      out.write("            <!-- ================ start banner area ================= -->\t\n");
      out.write("            <section class=\"blog-banner-area\" id=\"category\">\n");
      out.write("                <div class=\"container h-100\">\n");
      out.write("                    <div class=\"blog-banner\">\n");
      out.write("                        <div class=\"text-center\">\n");
      out.write("                            <h1>Register</h1>\n");
      out.write("                            <nav aria-label=\"breadcrumb\" class=\"banner-breadcrumb\">\n");
      out.write("                                <ol class=\"breadcrumb\">\n");
      out.write("                                    <li class=\"breadcrumb-item\"><a href=\"home\">Home</a></li>\n");
      out.write("                                    <li class=\"breadcrumb-item active\" aria-current=\"page\">Register</li>\n");
      out.write("                                </ol>\n");
      out.write("                            </nav>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <!-- ================ end banner area ================= -->\n");
      out.write("\n");
      out.write("            <!--================Login Box Area =================-->\n");
      out.write("            <section class=\"login_box_area section-margin\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-lg-6\">\n");
      out.write("                            <div class=\"login_box_img\">\n");
      out.write("                                <div class=\"hover\">\n");
      out.write("                                    <h4>Already have an account?</h4>\n");
      out.write("                                    <p>There are advances being made in science and technology everyday, and a good example of this is the</p>\n");
      out.write("                                    <a class=\"button button-account\" href=\"Login.jsp\">Login Now</a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-6\">\n");
      out.write("                            <div class=\"login_form_inner register_form_inner\">\n");
      out.write("                                <h3>Create an account</h3>\n");
      out.write("                                <form class=\"row login_form\" action=\"register\" id=\"register_form\" method=\"post\" >\n");
      out.write("                                    <p class=\"text-danger\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mess}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"user\" name=\"first\" placeholder=\"First Name\" onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'First Name'\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"user\" name=\"last\" placeholder=\"Last Name\" onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'Last Name'\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"user\" name=\"name\" placeholder=\"Username\" onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'Username'\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"email\" name=\"email\" placeholder=\"Email Address\" onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'Email Address'\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" id=\"password\" name=\"password\" placeholder=\"Password\" onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'Password'\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" id=\"confirmPassword\" name=\"confirmPassword\" placeholder=\"Confirm Password\" onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'Confirm Password'\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"user\" name=\"telephone\" placeholder=\"Telephone\" onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'Telephone'\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-12 form-group\" style=\"display: flex\">\n");
      out.write("                                    <div class=\"creat_account\" style=\"padding: 20px;\">\n");
      out.write("                                        <input type=\"checkbox\" id=\"seller\" name=\"seller\">\n");
      out.write("                                        <label for=\"seller\">Seller</label>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"creat_account\" style=\"padding: 20px;\">\n");
      out.write("                                        <input type=\"checkbox\" id=\"admin\" name=\"admin\">\n");
      out.write("                                        <label for=\"admin\">Admin</label>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <!--                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                                                    <div class=\"creat_account\">\n");
      out.write("                                                                        <input type=\"checkbox\" id=\"f-option2\" name=\"selector\">\n");
      out.write("                                                                        <label for=\"f-option2\">Keep me logged in</label>\n");
      out.write("                                                                    </div>\n");
      out.write("                                                                </div>-->\n");
      out.write("                                <div class=\"col-md-12 form-group\">\n");
      out.write("                                    <button type=\"submit\" value=\"submit\" class=\"button button-register w-100\">Register</button>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!--================End Login Box Area =================-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--================ Start footer Area  =================-->\t\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "FooterArea.jsp", out, false);
      out.write("\n");
      out.write("        <!--================ End footer Area  =================-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"vendors/jquery/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script src=\"vendors/bootstrap/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <script src=\"vendors/skrollr.min.js\"></script>\n");
      out.write("        <script src=\"vendors/owl-carousel/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"vendors/nice-select/jquery.nice-select.min.js\"></script>\n");
      out.write("        <script src=\"vendors/jquery.ajaxchimp.min.js\"></script>\n");
      out.write("        <script src=\"vendors/mail-script.js\"></script>\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
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
