package ra.controller;

import ra.model.entity.Catalog;
import ra.model.entity.Product;
import ra.model.service.ProductService;
import ra.model.serviceImp.ProductServiceImp;
import ra.model.util.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/ProductServlet")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1,
        maxFileSize = 1024 * 1024 * 5,
        maxRequestSize = 1024 * 1024 * 10
)
public class ProductServlet extends HttpServlet {
    private ProductService<Product, String> productService = new ProductServiceImp<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        getAllProduct(request,response);
        String action = request.getParameter("action");
        if (action!=null&&action.equals("GetAll")) {
            getAllProduct(request,response);
        } else if (action !=null && action.equals("detail")) {
            //Lay thong tin chi tiet cua san pham theo id
            int productId = (Integer.parseInt(request.getParameter("productId")));
            Product proDetail = productService.findById(productId);
            request.setAttribute("proDetail",proDetail);
            request.getRequestDispatcher("views/admin/detail1.jsp").forward(request,response);
        }
        String action1= request.getParameter("action");
        if (action != null && action.equals("Update")) {
            //Thuc hien lay thong tin sinh vien theo studentId
            int productId = Integer.parseInt((request.getParameter("productID")));
            Product productUpdate = productService.findById(productId);
            //Chuyen du lieu sang trang updateStudent.jsp
            request.setAttribute("productUpdate", productUpdate);
            request.getRequestDispatcher("views/admin/updateProduct.jsp").forward(request, response);
        }

        else if (action != null && action.equalsIgnoreCase("Delete")) {
//            //Thuc hien xoa sinh vien
            int productID = Integer.parseInt((request.getParameter("productID")));
            boolean result = productService.updateProductStatus(productID);
            if (result) {
                getAllProduct(request, response);
            } else {
                request.getRequestDispatcher("../views/admin/error.jsp").forward(request, response);
            }
        } else if (action != null && action.equals("Search")) {
            String searchstring =request.getParameter("searchName");
            List<Product> lishProduct = productService.searchByName(searchstring);
            request.setAttribute("listProduct",lishProduct);
            request.getRequestDispatcher("views/admin/product.jsp").forward(request, response);
        }else if (action !=null && action.equals("chairs")){
            Integer idCata = Integer.parseInt(request.getParameter("catID"));
            List<Product> lishProduct = productService.findAllProduct(idCata);
            request.setAttribute("listProduct",lishProduct);
            request.getRequestDispatcher("views/user/shop.jsp").forward(request,response);
        }
        else if (action !=null && action.equals("beds")){
            Integer idCata = Integer.parseInt(request.getParameter("catID"));
            List<Product> lishProduct = productService.findAllProduct(idCata);
            request.setAttribute("listProduct",lishProduct);
            request.getRequestDispatcher("views/user/shop.jsp").forward(request,response);
        }
        else if (action !=null && action.equals("furniture")){
            Integer idCata = Integer.parseInt(request.getParameter("catID"));
            List<Product> lishProduct = productService.findAllProduct(idCata);
            request.setAttribute("listProduct",lishProduct);
            request.getRequestDispatcher("views/user/shop.jsp").forward(request,response);
        }
        else if (action !=null && action.equals("deco")){
            Integer idCata = Integer.parseInt(request.getParameter("catID"));
            List<Product> lishProduct = productService.findAllProduct(idCata);
            request.setAttribute("listProduct",lishProduct);
            request.getRequestDispatcher("views/user/shop.jsp").forward(request,response);
        }
        else if (action !=null && action.equals("tables")){
            Integer idCata = Integer.parseInt(request.getParameter("catID"));
            List<Product> lishProduct = productService.findAllProduct(idCata);
            request.setAttribute("listProduct",lishProduct);
            request.getRequestDispatcher("views/user/shop.jsp").forward(request,response);
        }
        else {
            getAllProduct(request, response);
        }



    }

    public void getAllProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> listProduct = productService.findAll();
        request.setAttribute("listProduct",listProduct);
        request.getRequestDispatcher("views/admin/product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action.equals("Create")) {
            Product product = new Product();
            String pathFolderImage = "C:/Users/Admin/IdeaProjectst/project_model3/src/main/webapp/images";
            File file = new File(pathFolderImage);
            if (!file.exists()) {
                file.mkdir();
            }
            product.setProductID(Integer.parseInt(request.getParameter("productID")));
            product.setProductName(request.getParameter("productName"));
            product.setPrice(Float.parseFloat(request.getParameter("price")));
            product.setQuantity(Integer.parseInt(request.getParameter("quantity")));
            product.setTitle(request.getParameter("title"));
            product.setProductStatus(Boolean.parseBoolean(request.getParameter("status")));
            product.setCatagoriesID(Integer.parseInt(request.getParameter("Categories")));
            //B2. Lay du lieu anh tu request, add duong dan vao doi tuong proNew, ghi anh vao folder images
            for (Part part : request.getParts()) {
                if (part.getName().equals("proImage")) {
                    product.setProductImages(part.getSubmittedFileName());
                    part.write(pathFolderImage + File.separator + part.getSubmittedFileName());
                } else if (part.getName().equals("subImages")) {
                    product.getListImage().add(part.getSubmittedFileName());
                    part.write(pathFolderImage + File.separator + part.getSubmittedFileName());
                }
            }
            boolean result = productService.save(product);
            if (result) {
                getAllProduct(request, response);
            }
        }else if (action.equals("Update")) {
            String pathFolderImage = "C:/Users/Admin/IdeaProjectst/project_model3/src/main/webapp/images";
            File file = new File(pathFolderImage);
            if (!file.exists()) {
                file.mkdir();
            }
            Product product = new Product();
            product.setProductID(Integer.parseInt(request.getParameter("productID")));
            product.setProductName(request.getParameter("productName"));
            product.setPrice(Float.parseFloat(request.getParameter("price")));
            product.setQuantity(Integer.parseInt(request.getParameter("quantity")));
            product.setTitle(request.getParameter("title"));
            product.setProductStatus(Boolean.parseBoolean(request.getParameter("status")));
            product.setCatagoriesID(Integer.parseInt(request.getParameter("Categories")));
            //B2. Lay du lieu anh tu request, add duong dan vao doi tuong proNew, ghi anh vao folder images
            for (Part part : request.getParts()) {
                if (part.getName().equals("proImage")) {
                    product.setProductImages(part.getSubmittedFileName());
                    part.write(pathFolderImage + File.separator + part.getSubmittedFileName());
                } else if (part.getName().equals("subImages")) {
                    product.getListImage().add(part.getSubmittedFileName());
                    part.write(pathFolderImage + File.separator + part.getSubmittedFileName());
                }
            }
            boolean result = productService.update(product);
            if (result){
                getAllProduct(request,response);
            }
        }
    }
}


















































//        String action = request.getParameter("action");
//        if (action!=null && action.equals("Create")) {
//            Product proNew = new Product();
//            proNew.setProductID(Integer.parseInt(request.getParameter("productID")));
//            proNew.setProductName(request.getParameter("productName"));
//            proNew.setPrice(Float.parseFloat(request.getParameter("price")));
//            proNew.setQuantity(Integer.parseInt(request.getParameter("quantity")));
//            proNew.setTitle(request.getParameter("title"));
//            proNew.setProductStatus(Boolean.parseBoolean(request.getParameter("status")));
//            proNew.setCatagoriesID(Integer.parseInt(request.getParameter("Categories")));
//
//            String pathFolderImage = "C:/Users/Admin/IdeaProjectst/project_model3/src/main/webapp/images";
//
//            File file = new File(pathFolderImage);
//            if (!file.exists()) {
//                file.mkdir();
//            }
//            //B2. Lay du lieu anh tu request, add duong dan vao doi tuong proNew, ghi anh vao folder images
//            for (Part part : request.getParts()) {
//                if (part.getName().equals("proImage")) {
//                    //part nay chua anh chinh cua product
//                    //--set duong dan anh chinh vao doi tuong product can them moi
//                    proNew.setProductImages(part.getSubmittedFileName());
//                    //--ghi anh chinh vao folder images
//                    part.write(pathFolderImage + File.separator + part.getSubmittedFileName());
//                } else if (part.getName().equals("subImages")) {
//                    //part nay chua anh phu cua product
//                    //--set duong dan anh phu vao doi tuong product can them moi
//                    proNew.getListImage().add(part.getSubmittedFileName());
//                    //--Ghi anh phu vao folder images
//                    part.write(pathFolderImage + File.separator + part.getSubmittedFileName() );
//                }
//            }
//            boolean result = productService.save(proNew);
//          if (result){
//              getAllProduct(request,response);
//          }
////
//
