package ra.controller;

import ra.model.entity.Catalog;
import ra.model.entity.Product;
import ra.model.service.CatalogService;
import ra.model.service.ProductService;
import ra.model.serviceImp.CatalogServiceImp;
import ra.model.serviceImp.ProductServiceImp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", value = "/HomeServlet")
public class HomeServlet extends HttpServlet {
    private ProductService<Product, String> productService = new ProductServiceImp<>();
    private CatalogService<Catalog, Integer> catalogService = new CatalogServiceImp<>();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null && action.equals("Home")) {
            List<Product> listProduct = productService.homeProduct();
            request.setAttribute("listProduct", listProduct);
            request.getRequestDispatcher("views/user/index.jsp").forward(request, response);
        } else if (action != null && action.equals("detail")) {
            //Lay thong tin chi tiet cua san pham theo id
            int productId = (Integer.parseInt(request.getParameter("productId")));
            Product proDetail = productService.findById(productId);
            request.setAttribute("proDetail", proDetail);
            request.getRequestDispatcher("views/user/detail.jsp").forward(request, response);
        } else if (action != null && action.equals("Shop")) {
            //Lay thong tin chi tiet cua san pham theo id
            List<Product> listProduct = productService.findAll();
            request.setAttribute("listProduct", listProduct);
//            request.getRequestDispatcher("views/user/shop.jsp").forward(request, response);
            List<Catalog> listCatalog = catalogService.findAll();
            request.setAttribute("listCatalog", listCatalog);
            request.getRequestDispatcher("views/user/shop.jsp").forward(request, response);
        } else if (action != null && action.equals("Search")) {
            String uname = request.getParameter("search");
            List<Product> listPro = productService.searchByName(uname);
            request.setAttribute("listProduct", listPro);
            request.getRequestDispatcher("views/user/index.jsp").forward(request, response);

        } else if (action != null && action.equals("likeProduct")) {
            //Lay thong tin chi tiet cua san pham theo id+
            int productId = (Integer.parseInt(request.getParameter("productId")));
            Product proLike = productService.findById(productId);
            request.setAttribute("likeProduct", proLike);
            request.getRequestDispatcher("views/user/likeproduct.jsp").forward(request, response);
        }
    }

    public void getAllProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
