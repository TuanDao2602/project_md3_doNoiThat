package ra.controller;

import ra.model.entity.Catalog;
import ra.model.entity.Product;
import ra.model.entity.User;
import ra.model.service.CatalogService;
import ra.model.service.ProductService;
import ra.model.service.UserServices;
import ra.model.serviceImp.CatalogServiceImp;
import ra.model.serviceImp.ProductServiceImp;
import ra.model.serviceImp.UserSevicesImp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/UserServlet")
public class UserServlet extends HttpServlet {
    private static UserServices userServices = new UserSevicesImp();
    private CatalogService<Catalog,Integer> catalogService =new CatalogServiceImp<>();
    private ProductService<Product,String>productService = new ProductServiceImp<>();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action!=null&&action.equals("GetAll")) {
            getAllUser(request,response);
        }else if(action!=null && action.equals("look")){
            int userId = Integer.parseInt((request.getParameter("userId")));
            boolean result = userServices.updateUserStatus(userId);
            if (result) {
                getAllUser(request, response);
            } else {
                request.getRequestDispatcher("views/admin/user.jsp").forward(request, response);
            }
        }else if(action!=null && action.equals("unlook")){
            int userId = Integer.parseInt((request.getParameter("userId")));
            boolean result = userServices.trueUserStatus(userId);
            if (result) {
                getAllUser(request, response);
            } else {
                request.getRequestDispatcher("views/admin/user.jsp").forward(request, response);
            }
        }else if (action!=null && action.equalsIgnoreCase("search")){
            String uname =request.getParameter("search");
            request.setAttribute("listUser",userServices.searchByName(uname));
            request.getRequestDispatcher("views/admin/user.jsp").forward(request, response);

        }
    }
    public void getAllUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> listUser = userServices.findAll();
        request.setAttribute("listUser",listUser);
        request.getRequestDispatcher("views/admin/user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("register")){
            String userName = request.getParameter("userName");
            String passwood = request.getParameter("passwood");
            String fullName = request.getParameter("fullName");
            String confim = request.getParameter("comfim");
            User user = new User();
            user.setUserName(userName);
            user.setPassword(passwood);
            user.setFullName(fullName);
            if (passwood.equals(confim)){
                boolean checkExit = userServices.register(user);
                if (checkExit){
                    request.getRequestDispatcher("views/user/login.jsp").forward(request, response);
                }
            }

        } else if (action.equalsIgnoreCase("login")) {
            String userName = request.getParameter("userName");
            String password = request.getParameter("password");
            User user = userServices.login(userName,password);
            if (user!=null){
                HttpSession session = request.getSession();
                session.setAttribute("userLogin",user);
                if (user.isPermisson()){
                    request.getRequestDispatcher("/views/admin/index.jsp").forward(request, response);
                }else{
                    if (user.isUserStatus()){
                        List<Product> listProduct = productService.homeProduct();
                        request.setAttribute("listProduct",listProduct);
                        request.getRequestDispatcher("/views/user/index.jsp").forward(request, response);
                    }else {
                        request.setAttribute("errorLogin","Tài khoản tạm khóa");
                        request.getRequestDispatcher("views/user/login.jsp").forward(request,response);
                    }
                }
            }else if (action!=null&&action.equals("logOut")) {
                HttpSession session = request.getSession();
                session.removeAttribute("userLogin");
                request.setAttribute("listProduct", productService.findAll());
                List<Catalog> listCatalog = catalogService.findAll();
                request.setAttribute("listCatalog", listCatalog);
                request.getRequestDispatcher("views/user/login.jsp").forward(request, response);
            }else {
                request.getRequestDispatcher("/views/user/login.jsp").forward(request, response);
            }
        }
//
    }
}