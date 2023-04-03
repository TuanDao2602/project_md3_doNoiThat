package ra.model.daoImp;

import ra.model.dao.ProductDao;
import ra.model.entity.Product;
import ra.model.util.ConnectionDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAOImp<T,V> implements ProductDao<Product,String > {


    public List<Product> findAllProduct(Integer cataID) {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Product> listProduct = null;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_productByCatalogID(?)}");
            callSt.setInt(1, cataID);
            ResultSet rs = callSt.executeQuery();
            listProduct = new ArrayList<>();
            while (rs.next()) {
                Product pro = new Product();
                pro.setProductID(rs.getInt("productID"));
                pro.setProductName(rs.getString("productName"));
                pro.setPrice(rs.getFloat("price"));
                pro.setQuantity(rs.getInt("quantity"));
                pro.setTitle(rs.getString("title"));
                pro.setProductImages(rs.getString("productImages"));
                pro.setProductStatus(rs.getBoolean("productStatus"));
                pro.setCatagoriesID(rs.getInt("catagoriesID"));
                //add vao list
                listProduct.add(pro);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listProduct;
    }

    @Override
    public List<Product> homeProduct() {
        Connection conn = null;
        CallableStatement callSt=null;
        List<Product> listproduct =null;
        try {
            conn = ConnectionDB.openConnection();
            callSt=conn.prepareCall("{call proc_likeProduct()}");
            ResultSet rs =callSt.executeQuery();
            listproduct=new ArrayList<>();
            while (rs.next()){
                Product pro=new Product();
                pro.setProductID(rs.getInt("productID"));
                pro.setProductName(rs.getString("productName"));
                pro.setPrice(rs.getFloat("price"));
                pro.setQuantity(rs.getInt("quantity"));
                pro.setTitle(rs.getString("title"));
                pro.setProductImages(rs.getString("productImages"));
                pro.setProductStatus(rs.getBoolean("productStatus"));
                pro.setCatagoriesID(rs.getInt("catagoriesID"));
                listproduct.add(pro);
            }

        }catch (SQLException ex){
            ex.printStackTrace();
        }finally {
            ConnectionDB.closeConnection(conn,callSt);
        }
        return listproduct;
    }


    @Override
    public List<Product> findAll() {

        Connection conn = null;
        CallableStatement callSt = null;
        List<Product> listProduct = null;
        try {
            //1. Thuc hien ket noi den CSDL
            conn = ConnectionDB.openConnection();
            //2. Khoi tao doi tuon CallableStatement de goi procedure
            callSt = conn.prepareCall("{call proc_getAllproduct()}");
            //3. Thuc hien callSt va nhan ResultSet
            //--proc la cau select thi thuc hien phuong thuc executeQuery()
            //--proc la cau lenh thuc hien insert, update, delete ma chi co tham so vao - executeUpdate()
            //--proc la cau lenh thuc hien insert, update, delete ma co tham so ra - execute()
            ResultSet rs = callSt.executeQuery();
            listProduct = new ArrayList<>();
            //4. Duyet resultset day du lieu ra listStudent
            while (rs.next()) {
                Product pro = new Product();
                pro.setProductID(rs.getInt("productID"));
                pro.setProductName(rs.getString("productName"));
                pro.setPrice(rs.getFloat("price"));
                pro.setQuantity(rs.getInt("quantity"));
                pro.setTitle(rs.getString("title"));
                pro.setProductImages(rs.getString("productImages"));
                pro.setProductStatus(rs.getBoolean("productStatus"));
                pro.setCatagoriesID(rs.getInt("catagoriesID"));
                //add vao list
               listProduct.add(pro);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listProduct;

    }

    @Override
    public Product findById(Integer id) {
        Connection conn = null;
        CallableStatement callSt = null;
        Product pro = null;
        try {
            conn= ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_GetproductbyId(?)}");
            callSt.setInt(1,id);
            ResultSet rs =callSt.executeQuery();
            pro=new Product();
            if (rs.next()){
                pro.setProductID(rs.getInt("ProductID"));
                pro.setProductName(rs.getString("ProductName"));
                pro.setPrice(rs.getFloat("Price"));
                pro.setQuantity(rs.getInt("Quantity"));
                pro.setTitle(rs.getString("Title"));
                pro.setProductImages(rs.getString("ProductImages"));
                pro.setProductStatus(rs.getBoolean("ProductStatus"));
                pro.setCatagoriesID(rs.getInt("CatagoriesID"));
                CallableStatement callSt2= conn.prepareCall("{call proc_getImageByProductId(?)}");
                callSt2.setInt(1,id);
                ResultSet rs2 = callSt2.executeQuery();
                while (rs2.next()){
                    pro.getListImage().add(rs2.getString("ImageURL"));
                }
                callSt2.close();
            }

        }catch (SQLException ex){
            ex.printStackTrace();
        }finally {
            ConnectionDB.closeConnection(conn,callSt);
        }

        return pro;
    }

    @Override
    public Product findById(String id) {
       return null;
    }

    @Override
    public boolean save(Product product) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_insertproduct(?,?,?,?,?,?,?,?,?)}");
            callSt.setInt(1, product.getProductID());
            callSt.setString(2, product.getProductName());
            callSt.setFloat(3, product.getPrice());
            callSt.setInt(4,product.getQuantity());
            callSt.setString(5,product.getTitle());
            callSt.setString(6,product.getProductImages());
            callSt.setBoolean(7,product.isProductStatus());
            callSt.setInt(8,product.getCatagoriesID());
            callSt.registerOutParameter(9, Types.INTEGER);
            callSt.execute();
            int productId = callSt.getInt(9);
            for (String ImageURL : product.getListImage()) {
                CallableStatement callSt2 = conn.prepareCall("{call proc_insertImage(?,?)}");
                callSt2.setString(1,ImageURL);
                callSt2.setInt(2, product.getProductID());
                callSt2.executeUpdate();
                callSt2.close();
            }
        } catch (SQLException ex) {
            result = false;
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return result ;
    }

    @Override
    public boolean update(Product product) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_updateproduct(?,?,?,?,?,?,?,?)}");
            callSt.setInt(1, product.getProductID());
            callSt.setString(2, product.getProductName());
            callSt.setFloat(3, product.getPrice());
            callSt.setInt(4,product.getQuantity());
            callSt.setString(5,product.getTitle());
            callSt.setString(6,product.getProductImages());
            callSt.setBoolean(7,product.isProductStatus());
            callSt.setInt(8,product.getCatagoriesID());
            callSt.executeUpdate();
            CallableStatement callSt3 = conn.prepareCall("{call proc_updateImage(?)}");
            callSt3.setInt(1,product.getProductID());
            callSt3.executeUpdate();
            callSt3.close();
            for (String ImageURL : product.getListImage()) {
                CallableStatement callSt2 = conn.prepareCall("{call proc_insertImage(?,?)}");
                callSt2.setString(1,ImageURL);
                callSt2.setInt(2, product.getProductID());
                callSt2.executeUpdate();
                callSt2.close();
            }
        } catch (SQLException ex) {
            result = false;
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return result ;
    }

    @Override
    public List<Product> searchByName(String name) {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Product> listProduct = null;
        try {
            conn= ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_SearchByName(?)}");
            callSt.setString(1,name);
            ResultSet rs =callSt.executeQuery();
            listProduct =new ArrayList<>();
            while (rs.next()){
                Product pro = new Product();
                pro.setProductID(rs.getInt("ProductID"));
                pro.setProductName(rs.getString("ProductName"));
                pro.setPrice(rs.getFloat("Price"));
                pro.setQuantity(rs.getInt("Quantity"));
                pro.setTitle(rs.getString("Title"));
                pro.setProductImages(rs.getString("ProductImages"));
                pro.setProductStatus(rs.getBoolean("ProductStatus"));
                pro.setCatagoriesID(rs.getInt("CatagoriesID"));
                listProduct.add(pro);
            }
        }catch (SQLException ex){
            ex.printStackTrace();
        }

        return listProduct;
    }

    @Override
    public boolean updateProductStatus(int id) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_Deleteproduct(?)}");
            //THuc hien set gia tri cho cac tham so vao
            callSt.setInt(1,id);
            callSt.executeUpdate();
        } catch (Exception ex) {
            result = false;
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return result;
    }
    }



