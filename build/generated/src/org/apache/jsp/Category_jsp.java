package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Product;
import java.util.List;
import dao.ProductDAO;

public final class Category_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_if_test.release();
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("        <title>Aroma Shop - Category</title>\n");
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
      out.write("                            <h1>Shop Category</h1>\n");
      out.write("                            <nav aria-label=\"breadcrumb\" class=\"banner-breadcrumb\">\n");
      out.write("                                <ol class=\"breadcrumb\">\n");
      out.write("                                    <li class=\"breadcrumb-item\"><a href=\"#\">Home</a></li>\n");
      out.write("                                    <li class=\"breadcrumb-item active\">Shop Category</li>\n");
      out.write("                                </ol>\n");
      out.write("                            </nav>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <!-- ================ end banner area ================= -->\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- ================ category section start ================= -->\t\t  \n");
      out.write("            <section class=\"section-margin--small mb-5\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-xl-3 col-lg-4 col-md-5\">\n");
      out.write("                            <div class=\"sidebar-categories\">\n");
      out.write("                                <div class=\"head\">Browse Categories</div>\n");
      out.write("                                <ul class=\"main-categories\">\n");
      out.write("                                    <li class=\"common-filter\">\n");
      out.write("                                        <ul>\n");
      out.write("                                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                        <!--                        <div class=\"sidebar-filter\">\n");
      out.write("                                                    <div class=\"top-filter-head\">Product Filters</div>\n");
      out.write("                                                    <div class=\"common-filter\">\n");
      out.write("                                                        <div class=\"head\">Brands</div>\n");
      out.write("                                                        <form action=\"#\">\n");
      out.write("                                                            <ul>\n");
      out.write("                                                                <li class=\"filter-list\"><input class=\"pixel-radio\" type=\"radio\" id=\"apple\" name=\"brand\"><label for=\"apple\">Apple<span>(29)</span></label></li>\n");
      out.write("                                                                <li class=\"filter-list\"><input class=\"pixel-radio\" type=\"radio\" id=\"asus\" name=\"brand\"><label for=\"asus\">Asus<span>(29)</span></label></li>\n");
      out.write("                                                                <li class=\"filter-list\"><input class=\"pixel-radio\" type=\"radio\" id=\"gionee\" name=\"brand\"><label for=\"gionee\">Gionee<span>(19)</span></label></li>\n");
      out.write("                                                                <li class=\"filter-list\"><input class=\"pixel-radio\" type=\"radio\" id=\"micromax\" name=\"brand\"><label for=\"micromax\">Micromax<span>(19)</span></label></li>\n");
      out.write("                                                                <li class=\"filter-list\"><input class=\"pixel-radio\" type=\"radio\" id=\"samsung\" name=\"brand\"><label for=\"samsung\">Samsung<span>(19)</span></label></li>\n");
      out.write("                                                            </ul>\n");
      out.write("                                                        </form>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"common-filter\">\n");
      out.write("                                                        <div class=\"head\">Color</div>\n");
      out.write("                                                        <form action=\"#\">\n");
      out.write("                                                            <ul>\n");
      out.write("                                                                <li class=\"filter-list\"><input class=\"pixel-radio\" type=\"radio\" id=\"black\" name=\"color\"><label for=\"black\">Black<span>(29)</span></label></li>\n");
      out.write("                                                                <li class=\"filter-list\"><input class=\"pixel-radio\" type=\"radio\" id=\"balckleather\" name=\"color\"><label for=\"balckleather\">Black\n");
      out.write("                                                                        Leather<span>(29)</span></label></li>\n");
      out.write("                                                                <li class=\"filter-list\"><input class=\"pixel-radio\" type=\"radio\" id=\"blackred\" name=\"color\"><label for=\"blackred\">Black\n");
      out.write("                                                                        with red<span>(19)</span></label></li>\n");
      out.write("                                                                <li class=\"filter-list\"><input class=\"pixel-radio\" type=\"radio\" id=\"gold\" name=\"color\"><label for=\"gold\">Gold<span>(19)</span></label></li>\n");
      out.write("                                                                <li class=\"filter-list\"><input class=\"pixel-radio\" type=\"radio\" id=\"spacegrey\" name=\"color\"><label for=\"spacegrey\">Spacegrey<span>(19)</span></label></li>\n");
      out.write("                                                            </ul>\n");
      out.write("                                                        </form>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"common-filter\">\n");
      out.write("                                                        <div class=\"head\">Price</div>\n");
      out.write("                                                        <div class=\"price-range-area\">\n");
      out.write("                                                            <div id=\"price-range\"></div>\n");
      out.write("                                                            <div class=\"value-wrapper d-flex\">\n");
      out.write("                                                                <div class=\"price\">Price:</div>\n");
      out.write("                                                                <span>$</span>\n");
      out.write("                                                                <div id=\"lower-value\"></div>\n");
      out.write("                                                                <div class=\"to\">to</div>\n");
      out.write("                                                                <span>$</span>\n");
      out.write("                                                                <div id=\"upper-value\"></div>\n");
      out.write("                                                            </div>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>-->\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-xl-9 col-lg-8 col-md-7\">\n");
      out.write("                        <!-- Start Filter Bar -->\n");
      out.write("                        <div class=\"filter-bar d-flex flex-wrap align-items-center\">\n");
      out.write("                            <div class=\"sorting\">\n");
      out.write("                                <select name=\"sorting\" id=\"sorting\" onchange=\"sortList1(this)\">\n");
      out.write("                                    <option>Choosing</option>\n");
      out.write("                                    <option value=\"1\">Price: High to Low</option>\n");
      out.write("                                    <option value=\"2\">Price: Low to High</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                            <script>\n");
      out.write("                                function sortList1(obj) {\n");
      out.write("                                    var value = obj.value;\n");
      out.write("                                    if (value === '1') {\n");
      out.write("                                        window.location.href(\"category?sort=1\");\n");
      out.write("                                    } else if (value === '2') {\n");
      out.write("                                        window.location.href(\"category?sort=2\");\n");
      out.write("                                    }\n");
      out.write("                                }\n");
      out.write("                            </script>\n");
      out.write("                            <div class=\"sorting mr-auto\">\n");
      out.write("                                <select id=\"paging\" onchange=\"paging()\">\n");
      out.write("                                    <option value=\"0\">Show 6</option>\n");
      out.write("                                    <option value=\"1\">Show 12</option>\n");
      out.write("                                    <option value=\"2\">Show 18</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                            <script>\n");
      out.write("                                function paging(obj) {\n");
      out.write("                                    var value = obj.value;\n");
      out.write("                                    if (value === '') {\n");
      out.write("                                        \n");
      out.write("                                    } else if (value === '1') {\n");
      out.write("                                        \n");
      out.write("                                    } else if (value === '2') {\n");
      out.write("                                        \n");
      out.write("                                    }\n");
      out.write("                                }\n");
      out.write("                            </script>\n");
      out.write("                            <form action=\"search-txt\" method=\"get\">\n");
      out.write("                                <div>\n");
      out.write("                                    <div class=\"input-group filter-bar-search\">\n");
      out.write("                                        <input type=\"text\" name=\"txt\" placeholder=\"Search\">\n");
      out.write("                                        <div class=\"input-group-append\">\n");
      out.write("                                            <button type=\"submit\"><i class=\"ti-search\"></i></button>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- End Filter Bar -->\n");
      out.write("                        <!-- Start Best Seller -->\n");
      out.write("                        <section class=\"lattest-product-area pb-40 category-list\">\n");
      out.write("                            <div class=\"row\" id=\"id01\">\n");
      out.write("                                ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </section>\n");
      out.write("                        <!-- End Best Seller -->\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- ================ category section end ================= -->\t\t  \n");
      out.write("\n");
      out.write("        <!--         ================ top product area start ================= \t\n");
      out.write("                <section class=\"related-product-area\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"section-intro pb-60px\">\n");
      out.write("                            <p>Popular Item in the market</p>\n");
      out.write("                            <h2>Top <span class=\"section-intro__style\">Product</span></h2>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row mt-30\">\n");
      out.write("                            <div class=\"col-sm-6 col-xl-3 mb-4 mb-xl-0\">\n");
      out.write("                                <div class=\"single-search-product-wrapper\">\n");
      out.write("                                    <div class=\"single-search-product d-flex\">\n");
      out.write("                                        <a href=\"#\"><img src=\"img/product/product-sm-1.png\" alt=\"\"></a>\n");
      out.write("                                        <div class=\"desc\">\n");
      out.write("                                            <a href=\"#\" class=\"title\">Gray Coffee Cup</a>\n");
      out.write("                                            <div class=\"price\">$170.00</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"single-search-product d-flex\">\n");
      out.write("                                        <a href=\"#\"><img src=\"img/product/product-sm-2.png\" alt=\"\"></a>\n");
      out.write("                                        <div class=\"desc\">\n");
      out.write("                                            <a href=\"#\" class=\"title\">Gray Coffee Cup</a>\n");
      out.write("                                            <div class=\"price\">$170.00</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"single-search-product d-flex\">\n");
      out.write("                                        <a href=\"#\"><img src=\"img/product/product-sm-3.png\" alt=\"\"></a>\n");
      out.write("                                        <div class=\"desc\">\n");
      out.write("                                            <a href=\"#\" class=\"title\">Gray Coffee Cup</a>\n");
      out.write("                                            <div class=\"price\">$170.00</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("        \n");
      out.write("                            <div class=\"col-sm-6 col-xl-3 mb-4 mb-xl-0\">\n");
      out.write("                                <div class=\"single-search-product-wrapper\">\n");
      out.write("                                    <div class=\"single-search-product d-flex\">\n");
      out.write("                                        <a href=\"#\"><img src=\"img/product/product-sm-4.png\" alt=\"\"></a>\n");
      out.write("                                        <div class=\"desc\">\n");
      out.write("                                            <a href=\"#\" class=\"title\">Gray Coffee Cup</a>\n");
      out.write("                                            <div class=\"price\">$170.00</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"single-search-product d-flex\">\n");
      out.write("                                        <a href=\"#\"><img src=\"img/product/product-sm-5.png\" alt=\"\"></a>\n");
      out.write("                                        <div class=\"desc\">\n");
      out.write("                                            <a href=\"#\" class=\"title\">Gray Coffee Cup</a>\n");
      out.write("                                            <div class=\"price\">$170.00</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"single-search-product d-flex\">\n");
      out.write("                                        <a href=\"#\"><img src=\"img/product/product-sm-6.png\" alt=\"\"></a>\n");
      out.write("                                        <div class=\"desc\">\n");
      out.write("                                            <a href=\"#\" class=\"title\">Gray Coffee Cup</a>\n");
      out.write("                                            <div class=\"price\">$170.00</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("        \n");
      out.write("                            <div class=\"col-sm-6 col-xl-3 mb-4 mb-xl-0\">\n");
      out.write("                                <div class=\"single-search-product-wrapper\">\n");
      out.write("                                    <div class=\"single-search-product d-flex\">\n");
      out.write("                                        <a href=\"#\"><img src=\"img/product/product-sm-7.png\" alt=\"\"></a>\n");
      out.write("                                        <div class=\"desc\">\n");
      out.write("                                            <a href=\"#\" class=\"title\">Gray Coffee Cup</a>\n");
      out.write("                                            <div class=\"price\">$170.00</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"single-search-product d-flex\">\n");
      out.write("                                        <a href=\"#\"><img src=\"img/product/product-sm-8.png\" alt=\"\"></a>\n");
      out.write("                                        <div class=\"desc\">\n");
      out.write("                                            <a href=\"#\" class=\"title\">Gray Coffee Cup</a>\n");
      out.write("                                            <div class=\"price\">$170.00</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"single-search-product d-flex\">\n");
      out.write("                                        <a href=\"#\"><img src=\"img/product/product-sm-9.png\" alt=\"\"></a>\n");
      out.write("                                        <div class=\"desc\">\n");
      out.write("                                            <a href=\"#\" class=\"title\">Gray Coffee Cup</a>\n");
      out.write("                                            <div class=\"price\">$170.00</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("        \n");
      out.write("                            <div class=\"col-sm-6 col-xl-3 mb-4 mb-xl-0\">\n");
      out.write("                                <div class=\"single-search-product-wrapper\">\n");
      out.write("                                    <div class=\"single-search-product d-flex\">\n");
      out.write("                                        <a href=\"#\"><img src=\"img/product/product-sm-1.png\" alt=\"\"></a>\n");
      out.write("                                        <div class=\"desc\">\n");
      out.write("                                            <a href=\"#\" class=\"title\">Gray Coffee Cup</a>\n");
      out.write("                                            <div class=\"price\">$170.00</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"single-search-product d-flex\">\n");
      out.write("                                        <a href=\"#\"><img src=\"img/product/product-sm-2.png\" alt=\"\"></a>\n");
      out.write("                                        <div class=\"desc\">\n");
      out.write("                                            <a href=\"#\" class=\"title\">Gray Coffee Cup</a>\n");
      out.write("                                            <div class=\"price\">$170.00</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"single-search-product d-flex\">\n");
      out.write("                                        <a href=\"#\"><img src=\"img/product/product-sm-3.png\" alt=\"\"></a>\n");
      out.write("                                        <div class=\"desc\">\n");
      out.write("                                            <a href=\"#\" class=\"title\">Gray Coffee Cup</a>\n");
      out.write("                                            <div class=\"price\">$170.00</div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </section>\n");
      out.write("                 ================ top product area end ================= \t\t-->\n");
      out.write("\n");
      out.write("        <!-- ================ Subscribe section start ================= -->\t\t  \n");
      out.write("        <section class=\"subscribe-position\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"subscribe text-center\">\n");
      out.write("                    <h3 class=\"subscribe__title\">Get Update From Anywhere</h3>\n");
      out.write("                    <p>Bearing Void gathering light light his eavening unto dont afraid</p>\n");
      out.write("                    <div id=\"mc_embed_signup\">\n");
      out.write("                        <form target=\"_blank\" action=\"https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01\" method=\"get\" class=\"subscribe-form form-inline mt-5 pt-1\">\n");
      out.write("                            <div class=\"form-group ml-sm-auto\">\n");
      out.write("                                <input class=\"form-control mb-1\" type=\"email\" name=\"EMAIL\" placeholder=\"Enter your email\" onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'Your Email Address '\" >\n");
      out.write("                                <div class=\"info\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            <button class=\"button button-subscribe mr-auto mb-1\" type=\"submit\">Subscribe Now</button>\n");
      out.write("                            <div style=\"position: absolute; left: -5000px;\">\n");
      out.write("                                <input name=\"b_36c4fd991d266f23781ded980_aefe40901a\" tabindex=\"-1\" value=\"\" type=\"text\">\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- ================ Subscribe section end ================= -->\t\t  \n");
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
      out.write("        <script src=\"vendors/nouislider/nouislider.min.js\"></script>\n");
      out.write("        <script src=\"vendors/jquery.ajaxchimp.min.js\"></script>\n");
      out.write("        <script src=\"vendors/mail-script.js\"></script>\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
    _jspx_th_c_forEach_0.setVar("c");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                            <li class=\"filter-list\">\n");
          out.write("                                                <a href=\"search-category?id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">\n");
          out.write("                                                    <label for=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.name.toLowerCase()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("<span> (");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.volume}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(")</span>\n");
          out.write("                                                    </label>\n");
          out.write("                                                </a>\n");
          out.write("                                            </li>\n");
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

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listP}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("p");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                    <div class=\"col-md-6 col-lg-4\">\n");
          out.write("                                        <div class=\"card text-center card-product\">\n");
          out.write("                                            <div class=\"card-product__img\">\n");
          out.write("                                                <img class=\"card-img\" src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.images.get(0)}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"\">\n");
          out.write("                                                <ul class=\"card-product__imgOverlay\">\n");
          out.write("                                                    <li><button><a href=\"single-product?id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"><i class=\"ti-search\"></i></button></li>\n");
          out.write("                                                            ");
          if (_jspx_meth_c_if_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("\n");
          out.write("                                                </ul>\n");
          out.write("                                            </div>\n");
          out.write("                                            <div class=\"card-body\">\n");
          out.write("                                                <p>Watch</p>\n");
          out.write("                                                <h4 class=\"card-product__title\"><a href=\"single-product?id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></h4>\n");
          out.write("                                                <p class=\"card-product__price\">$");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p>\n");
          out.write("                                            </div>\n");
          out.write("                                        </div>\n");
          out.write("                                    </div>\n");
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

  private boolean _jspx_meth_c_if_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.acc != null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                                        <li>\n");
        out.write("                                                            <button><a href=\"add-to-cart?id=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\"><i class=\"ti-shopping-cart\"></i></a></button>\n");
        out.write("                                                        </li>\n");
        out.write("                                                        <li>\n");
        out.write("                                                            <button><i class=\"ti-heart\"></i></button>\n");
        out.write("                                                        </li>\n");
        out.write("                                                    ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }
}
