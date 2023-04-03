package ra.controller;

import ra.model.entity.Cart;
import ra.model.entity.LikeProduct;
import ra.model.entity.Product;
import ra.model.service.ProductService;
import ra.model.serviceImp.ProductServiceImp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "LikeProductServlet", value = "/LikeProductServlet")
public class LikeProductServlet extends HttpServlet {
    private ProductService<Product,String> productService =new ProductServiceImp<>();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getParameter("action");
//        if (action !=null && action.equals("likeProduct")) {
//            //Lay thong tin chi tiet cua san pham theo id
//            int productId = (Integer.parseInt(request.getParameter("productID")));
//            Product productLike = new Product();
//            for (Product pro : productService.findAll()){
//                if (pro.getProductID() == productId) {
//                    productLike = pro;
////                }
////            }
//            HttpSession session=request.getSession();
//            List<LikeProduct> listLike = (List<LikeProduct>) session.getAttribute("likeProduct");
//
//            if (listLike==null){
//                //khác hàng chưa mua hàng
//                // khởi tạo giỏ hàng
//                listLike=new ArrayList<>();
//                //add cart vào List cart
//                LikeProduct likeProduct = new LikeProduct(productLike,1);
//                listLike.add(likeProduct);
//            }else {
////            khách hàng đã mua hàng
////            kiểm tra sản phẩm đã tồn tại tỏng giỏ hàng chưa
//                boolean checkExist=false;
//                for (LikeProduct like:listLike){
//                    if (like.getProduct().getProductID()==productId){
//                        checkExist=true;
//                        break;
//
//                    }
//
//                }
//                if (!checkExist){
//                    // sản phẩm thêm ko có trong giỏ hàng
//                    LikeProduct likeProduct = new LikeProduct(productLike,1);
//                    listLike.add(likeProduct);
//                }
//                //4 add listcart vào session
//            }
//            session.setAttribute("listLike",listLike);
////            session.setAttribute("totalAmount",calTotalAmount(listCart));
//            //5 chuyển sang trang shopping cart
//            request.getRequestDispatcher("views/user/likeproduct.jsp").forward(request,response);
//        }


        String action = request.getParameter("action");
        if (action != null && action.equals("likeProduct")) {
            //Lay thong tin chi tiet cua san pham theo id
            int productId = (Integer.parseInt(request.getParameter("productID")));
            Product productAdd = new Product();
            for (Product pro : productService.findAll()) {
                if (pro.getProductID() == productId) {
                    productAdd = pro;
                }
            }
            HttpSession session = request.getSession();
            List<LikeProduct> listProduct = (List<LikeProduct>) session.getAttribute("likeProduct");

            if (listProduct == null) {
                //khác hàng chưa mua hàng
                // khởi tạo giỏ hàng
                listProduct = new ArrayList<>();
                //add cart vào List cart
                LikeProduct likeProduct = new LikeProduct(productAdd, 1);
                listProduct.add(likeProduct);
            } else {
//            khách hàng đã mua hàng
//            kiểm tra sản phẩm đã tồn tại tỏng giỏ hàng chưa

                boolean checkExist = false;
                for (LikeProduct likeProduct : listProduct) {
                    if (likeProduct.getProduct().getProductID() == productId) {
//                        likeProduct.setQuantity(likeProduct.getQuantity()+1);
                        checkExist = true;
                        break;

                    }

                }
                if (!checkExist) {
                    // sản phẩm thêm ko có trong giỏ hàng
                    LikeProduct likeProduct = new LikeProduct(productAdd, 1);
                    listProduct.add(likeProduct);
                }
                //4 add listcart vào session
            }
            session.setAttribute("likeProduct", listProduct);
//            session.setAttribute("totalAmount",calTotalAmount(listCart));
            //5 chuyển sang trang shopping cart
            request.getRequestDispatcher("views/user/likeproduct.jsp").forward(request, response);
        } else if (action.equals("Delete")) {
            List<LikeProduct> listLike = (List<LikeProduct>) request.getSession().getAttribute("likeProduct");
            int productID = Integer.parseInt(request.getParameter("productID"));
            for (int i = 0; i < listLike.size(); i++) {
                if (listLike.get(i).getProduct().getProductID() == productID) {
                    listLike.remove(i);
                }

            }
            request.getSession().setAttribute("likeProduct", listLike);

            request.getRequestDispatcher("views/user/likeproduct.jsp").forward(request, response);

//
//
        }
    }
//

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
