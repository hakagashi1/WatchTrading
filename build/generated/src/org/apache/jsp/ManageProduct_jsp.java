package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ManageProduct_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("        <title>Aroma Shop - Manage Products</title>\n");
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
      out.write("                            <h1>Manage Products</h1>\n");
      out.write("                            <nav aria-label=\"breadcrumb\" class=\"banner-breadcrumb\">\n");
      out.write("                                <ol class=\"breadcrumb\">\n");
      out.write("                                    <li class=\"breadcrumb-item\"><a href=\"home\">Home</a></li>\n");
      out.write("                                    <li class=\"breadcrumb-item active\" aria-current=\"page\">Manage Products</li>\n");
      out.write("                                </ol>\n");
      out.write("                            </nav>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <!-- ================ end banner area ================= -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!--================Cart Area =================-->\n");
      out.write("            <section class=\"cart_area\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"cart_inner\">\n");
      out.write("                        <div class=\"table-responsive\">\n");
      out.write("                            <table class=\"table\">\n");
      out.write("                                <thead>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th scope=\"col\">\n");
      out.write("                                            Product\n");
      out.write("                                        </th>\n");
      out.write("                                        <th scope=\"col\">\n");
      out.write("                                            Price\n");
      out.write("                                        </th>\n");
      out.write("                                        <th scope=\"col\">\n");
      out.write("                                            <!-- Button trigger modal -->\n");
      out.write("                                            <button type=\"button\" class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#exampleModalLong\">\n");
      out.write("                                                Add New Product\n");
      out.write("                                            </button>\n");
      out.write("\n");
      out.write("                                            <!-- Modal -->\n");
      out.write("                                            <div class=\"modal fade\" id=\"exampleModalLong\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLongTitle\" aria-hidden=\"true\">\n");
      out.write("                                                <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("                                                    <div class=\"modal-content\">\n");
      out.write("                                                        <div class=\"modal-header\">\n");
      out.write("                                                            <h5 class=\"modal-title\" id=\"exampleModalLabel\">\n");
      out.write("                                                                Add New Product\n");
      out.write("                                                            </h5>\n");
      out.write("                                                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                                                                <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                                            </button>\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        <form action=\"add-product\" method=\"post\">\n");
      out.write("                                                            <div class=\"modal-body\">\n");
      out.write("                                                                <div class=\"form-group\">\n");
      out.write("                                                                    <label for=\"recipient-name\" class=\"col-form-label\">\n");
      out.write("                                                                        Name:\n");
      out.write("                                                                    </label>\n");
      out.write("                                                                    <input type=\"text\" class=\"form-control\" id=\"product-name\" name=\"name\">\n");
      out.write("                                                                </div>\n");
      out.write("                                                                <div class=\"form-group\">\n");
      out.write("                                                                    <label for=\"recipient-name\" class=\"col-form-label\">\n");
      out.write("                                                                        Images:\n");
      out.write("                                                                    </label>\n");
      out.write("                                                                    <input type=\"text\" class=\"form-control\" id=\"product-images\" name=\"image\">\n");
      out.write("                                                                </div>\n");
      out.write("                                                                <div class=\"form-group\">\n");
      out.write("                                                                    <label for=\"recipient-name\" class=\"col-form-label\">\n");
      out.write("                                                                        Price:\n");
      out.write("                                                                    </label>\n");
      out.write("                                                                    <input type=\"text\" class=\"form-control\" id=\"product-price\" name=\"price\">\n");
      out.write("                                                                </div>\n");
      out.write("                                                                <div class=\"form-group\">\n");
      out.write("                                                                    <label for=\"recipient-name\" class=\"col-form-label\">Category:</label>\n");
      out.write("                                                                    <div class=\"category-list\">\n");
      out.write("                                                                        <select name=\"category\">\n");
      out.write("                                                                            <option value=\"\">Choose Category</option>\n");
      out.write("                                                                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                                                    </select>\n");
      out.write("                                                                </div>\n");
      out.write("                                                            </div>\n");
      out.write("                                                            <br>\n");
      out.write("                                                            <div class=\"form-group\">\n");
      out.write("                                                                <label for=\"recipient-name\" class=\"col-form-label\">\n");
      out.write("                                                                    Quantity:\n");
      out.write("                                                                </label>\n");
      out.write("                                                                <input type=\"text\" class=\"form-control\" id=\"product-quantity\" name=\"quantity\">\n");
      out.write("                                                            </div>\n");
      out.write("                                                            <div class=\"form-group\">\n");
      out.write("                                                                <label for=\"message-text\" class=\"col-form-label\">\n");
      out.write("                                                                    Details:\n");
      out.write("                                                                </label>\n");
      out.write("                                                                <textarea class=\"form-control\" id=\"product-details\" name=\"details\"></textarea>\n");
      out.write("                                                            </div>\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div class=\"modal-footer\">  \n");
      out.write("                                                            <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\" value=\"Cancel\">\n");
      out.write("                                                                Cancel\n");
      out.write("                                                            </button>\n");
      out.write("                                                            <button type=\"submit\" class=\"btn btn-primary\" value=\"Add\">\n");
      out.write("                                                                Add\n");
      out.write("                                                            </button>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </form>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </th>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                                ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!--================End Cart Area =================-->\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listC}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("i");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                                            <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("                                                                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listP}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("i");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                    <tr>\n");
          out.write("                                        <td>\n");
          out.write("                                            <div class=\"media\">\n");
          out.write("                                                <div class=\"d-flex\" style=\"height: 100px;\">\n");
          out.write("                                                    <img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.images.get(0)}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"\">\n");
          out.write("                                                </div>\n");
          out.write("                                                <div class=\"media-body\">\n");
          out.write("                                                    <p>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p>\n");
          out.write("                                                </div>\n");
          out.write("                                            </div>\n");
          out.write("                                        </td>\n");
          out.write("                                        <td>\n");
          out.write("                                            <h5>$");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h5>\n");
          out.write("                                        </td>\n");
          out.write("                                        <td>\n");
          out.write("                                            \n");
          out.write("                                            <a class=\"button\" href=\"load-product?id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">Update</a>\n");
          out.write("                                            <a class=\"button\" href=\"delete-product?id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">Delete</a>\n");
          out.write("                                        </td>\n");
          out.write("                                    </tr>\n");
          out.write("                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }
}
