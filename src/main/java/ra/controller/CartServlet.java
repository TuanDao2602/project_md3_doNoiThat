package ra.controller;

import ra.model.entity.Cart;
import ra.model.entity.Product;
import ra.model.service.ProductService;
import ra.model.serviceImp.ProductServiceImp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CartServlet", value = "/CartServlet")
public class CartServlet extends HttpServlet {
    private ProductService<Product, String> productService = new ProductServiceImp<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action !=null && action.equals("addCart")) {
            //Lay thong tin chi tiet cua san pham theo id
            int productId = (Integer.parseInt(request.getParameter("productID")));
            Product productAdd = new Product();
            for (Product pro : productService.findAll()){
                if (pro.getProductID() == productId) {
                    productAdd = pro;
                }
        }
            HttpSession session=request.getSession();
            List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");

            if (listCart==null){
                //khác hàng chưa mua hàng
                // khởi tạo giỏ hàng
                listCart=new ArrayList<>();
                //add cart vào List cart
                Cart cart = new Cart(productAdd,1);
                listCart.add(cart);
            }else {
//            khách hàng đã mua hàng
//            kiểm tra sản phẩm đã tồn tại tỏng giỏ hàng chưa

                boolean checkExist=false;
                for (Cart cart:listCart){
                    if (cart.getProduct().getProductID()==productId){
                        cart.setQuantity(cart.getQuantity()+1);
                        checkExist=true;
                        break;

                    }

                }
                if (!checkExist){
                    // sản phẩm thêm ko có trong giỏ hàng
                    Cart cart = new Cart(productAdd,1);
                    listCart.add(cart);
                }
                //4 add listcart vào session
            }
            session.setAttribute("listCart",listCart);
            session.setAttribute("totalAmount",calTotalAmount(listCart));
            //5 chuyển sang trang shopping cart
            request.getRequestDispatcher("views/user/cart.jsp").forward(request,response);
        }else  if (action.equals("Update")){
            List<Cart> listCart = (List<Cart>) request.getSession().getAttribute("listCart");
            //2. Lay mang quantity cua gio hang
            String[] arrQuantity = request.getParameterValues("quantity");
            //3. Cap nhat quantity cho tat ca gio hang
            for (int i = 0; i < listCart.size(); i++) {
                listCart.get(i).setQuantity(Integer.parseInt(arrQuantity[i]));
            }
            // add listCart vào seesion
            request.getSession().setAttribute("listCart",listCart);
            // tính lại tổng tiền và add vào session
            request.getSession().setAttribute("totalAmount",calTotalAmount(listCart));
            // chuyển lại trang cart
            request.getRequestDispatcher("views/user/cart.jsp").forward(request,response);
        }else if (action.equals("Delete")){
            List<Cart> listCart = (List<Cart>) request.getSession().getAttribute("listCart");
            int productID = Integer.parseInt(request.getParameter("productID"));
            for (int i = 0; i <listCart.size() ; i++) {
                if (listCart.get(i).getProduct().getProductID()==productID){
                    listCart.remove(i);
                }

            }
            request.getSession().setAttribute("listCart",listCart);
            request.getSession().setAttribute("totalAmount",calTotalAmount(listCart));
            request.getRequestDispatcher("views/user/cart.jsp").forward(request,response);



        }

        }
    public static float calTotalAmount(List<Cart> listCart){
        float totalAmount =0;
        for (Cart cart: listCart) {
            totalAmount += cart.getQuantity()*cart.getProduct().getPrice();
        }
        return totalAmount;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");


    }
}
