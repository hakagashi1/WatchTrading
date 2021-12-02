package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Checkout_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Aroma Shop - Checkout</title>\n");
      out.write("        <link rel=\"icon\" href=\"images/Fevicon.png\" type=\"image/png\">\n");
      out.write("\n");
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
      out.write("                            <h1>Product Checkout</h1>\n");
      out.write("                            <nav aria-label=\"breadcrumb\" class=\"banner-breadcrumb\">\n");
      out.write("                                <ol class=\"breadcrumb\">\n");
      out.write("                                    <li class=\"breadcrumb-item\"><a href=\"#\">Home</a></li>\n");
      out.write("                                    <li class=\"breadcrumb-item active\" aria-current=\"page\">Checkout</li>\n");
      out.write("                                </ol>\n");
      out.write("                            </nav>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <!-- ================ end banner area ================= -->\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!--================Checkout Area =================-->\n");
      out.write("            <section class=\"checkout_area section-margin--small\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <!--                <div class=\"returning_customer\">\n");
      out.write("                                        <div class=\"check_title\">\n");
      out.write("                                            <h2>Returning Customer? <a href=\"#\">Click here to login</a></h2>\n");
      out.write("                                        </div>\n");
      out.write("                                        <p>If you have shopped with us before, please enter your details in the boxes below. If you are a new\n");
      out.write("                                            customer, please proceed to the Billing & Shipping section.</p>\n");
      out.write("                                        <form class=\"row contact_form\" action=\"#\" method=\"post\" novalidate=\"novalidate\">\n");
      out.write("                                            <div class=\"col-md-6 form-group p_star\">\n");
      out.write("                                                <input type=\"text\" class=\"form-control\" placeholder=\"Username or Email*\" onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'Username or Email*'\" id=\"name\" name=\"name\">\n");
      out.write("                                                 <span class=\"placeholder\" data-placeholder=\"Username or Email\"></span> \n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-md-6 form-group p_star\">\n");
      out.write("                                                <input type=\"password\" class=\"form-control\" placeholder=\"Password*\" onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'Password*'\" id=\"password\" name=\"password\">\n");
      out.write("                                                 <span class=\"placeholder\" data-placeholder=\"Password\"></span> \n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-md-12 form-group\">\n");
      out.write("                                                <button type=\"submit\" value=\"submit\" class=\"button button-login\">login</button>\n");
      out.write("                                                <div class=\"creat_account\">\n");
      out.write("                                                    <input type=\"checkbox\" id=\"f-option\" name=\"selector\">\n");
      out.write("                                                    <label for=\"f-option\">Remember me</label>\n");
      out.write("                                                </div>\n");
      out.write("                                                <a class=\"lost_pass\" href=\"#\">Lost your password?</a>\n");
      out.write("                                            </div>\n");
      out.write("                                        </form>\n");
      out.write("                                    </div>-->\n");
      out.write("                    <div class=\"cupon_area\">\n");
      out.write("                        <div class=\"check_title\">\n");
      out.write("                            <h2>Have a coupon? <a href=\"#\">Click here to enter your code</a></h2>\n");
      out.write("                        </div>\n");
      out.write("                        <input type=\"text\" placeholder=\"Enter coupon code\">\n");
      out.write("                        <a class=\"button button-coupon\" href=\"#\">Apply Coupon</a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"billing_details\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-lg-8\">\n");
      out.write("                                <h3>Billing Details</h3>\n");
      out.write("                                <form class=\"row contact_form\" action=\"#\" method=\"post\" novalidate=\"novalidate\">\n");
      out.write("                                    <div class=\"col-md-6 form-group p_star\">\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" id=\"first\" name=\"first\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.first_name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                        <span class=\"placeholder\" data-placeholder=\"First name\"></span>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-6 form-group p_star\">\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" id=\"last\" name=\"last\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.last_name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                        <span class=\"placeholder\" data-placeholder=\"Last name\"></span>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-12 form-group\">\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" id=\"company\" name=\"company\" placeholder=\"Company name\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-6 form-group p_star\">\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" id=\"number\" name=\"number\">\n");
      out.write("                                        <span class=\"placeholder\" data-placeholder=\"Phone number\"></span>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-6 form-group p_star\">\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" id=\"email\" name=\"compemailany\">\n");
      out.write("                                        <span class=\"placeholder\" data-placeholder=\"Email Address\"></span>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-12 form-group p_star\">\n");
      out.write("                                        <select class=\"country_select\">\n");
      out.write("                                            <option value=\"1\">Country</option>\n");
      out.write("                                            <option value=\"2\">Country</option>\n");
      out.write("                                            <option value=\"4\">Country</option>\n");
      out.write("                                        </select>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-12 form-group p_star\">\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" id=\"add1\" name=\"add1\">\n");
      out.write("                                        <span class=\"placeholder\" data-placeholder=\"Address line 01\"></span>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-12 form-group p_star\">\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" id=\"add2\" name=\"add2\">\n");
      out.write("                                        <span class=\"placeholder\" data-placeholder=\"Address line 02\"></span>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-12 form-group p_star\">\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" id=\"city\" name=\"city\">\n");
      out.write("                                        <span class=\"placeholder\" data-placeholder=\"Town/City\"></span>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-12 form-group p_star\">\n");
      out.write("                                        <select class=\"country_select\">\n");
      out.write("                                            <option value=\"1\">District</option>\n");
      out.write("                                            <option value=\"2\">District</option>\n");
      out.write("                                            <option value=\"4\">District</option>\n");
      out.write("                                        </select>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-12 form-group\">\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" id=\"zip\" name=\"zip\" placeholder=\"Postcode/ZIP\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-12 form-group mb-0\">\n");
      out.write("                                        <div class=\"creat_account\">\n");
      out.write("                                            <h3>Shipping Details</h3>\n");
      out.write("                                            <input type=\"checkbox\" id=\"f-option3\" name=\"selector\">\n");
      out.write("                                            <label for=\"f-option3\">Ship to a different address?</label>\n");
      out.write("                                        </div>\n");
      out.write("                                        <textarea class=\"form-control\" name=\"message\" id=\"message\" rows=\"1\" placeholder=\"Order Notes\"></textarea>\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-lg-4\">\n");
      out.write("                                <div class=\"order_box\">\n");
      out.write("                                    <h2>Your Order</h2>\n");
      out.write("                                    <ul class=\"list\">\n");
      out.write("                                        <li><a href=\"#\"><h4>Product <span>Total</span></h4></a></li>\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    </ul>\n");
      out.write("                                    <ul class=\"list list_2\">\n");
      out.write("                                        <li><a href=\"#\">Subtotal <span>$");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${subtotal}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span></a></li>\n");
      out.write("                                        <li><a href=\"#\">Shipping <span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ship.getType()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(": $");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ship.getPrice()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span></a></li>\n");
      out.write("                                        <li><a href=\"#\">Total <span>$");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${total}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span></a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                    <div class=\"payment_item\">\n");
      out.write("                                        <div class=\"radion_btn\">\n");
      out.write("                                            <input type=\"radio\" id=\"f-option5\" name=\"selector\">\n");
      out.write("                                            <label for=\"f-option5\">Check payments</label>\n");
      out.write("                                            <div class=\"check\"></div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <p>Please send a check to Store Name, Store Street, Store Town, Store State / County,\n");
      out.write("                                            Store Postcode.</p>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"payment_item active\">\n");
      out.write("                                        <div class=\"radion_btn\">\n");
      out.write("                                            <input type=\"radio\" id=\"f-option6\" name=\"selector\">\n");
      out.write("                                            <label for=\"f-option6\">Paypal </label>\n");
      out.write("                                            <img src=\"img/product/card.jpg\" alt=\"\">\n");
      out.write("                                            <div class=\"check\"></div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <p>Pay via PayPal; you can pay with your credit card if you don’t have a PayPal\n");
      out.write("                                            account.</p>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"creat_account\">\n");
      out.write("                                        <input type=\"checkbox\" id=\"f-option4\" name=\"selector\">\n");
      out.write("                                        <label for=\"f-option4\">I’ve read and accept the </label>\n");
      out.write("                                        <a href=\"#\">terms & conditions*</a>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"text-center\">\n");
      out.write("                                        <a class=\"button button-paypal\" href=\"#\">Proceed to Paypal</a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <!--================End Checkout Area =================-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!--================ Start footer Area  =================-->\t\n");
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
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listItems}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("i");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                            <li><a href=\"#\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getProduct().getName()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" x ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getQuantity()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("<span class=\"last\">$");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i.getQuantity() * i.getPrice()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span></a></li>\n");
          out.write("                                        ");
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
}
