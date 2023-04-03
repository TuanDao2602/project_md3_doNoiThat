package ra.model.daoImp;


import ra.model.dao.CatalogDAO;
import ra.model.entity.Catalog;
import ra.model.util.ConnectionDB;

import java.sql.CallableStatement;
import java.sql.Connection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CatalogDAOImp implements CatalogDAO<Catalog,Integer> {
    @Override
    public List<Catalog> findAll() {

        Connection conn = null;
        CallableStatement callSt = null;
        List<Catalog> listCatalog = null;
        try {
            //1. Thuc hien ket noi den CSDL
            conn = ConnectionDB.openConnection();
            //2. Khoi tao doi tuon CallableStatement de goi procedure
            callSt = conn.prepareCall("{call proc_getAllcatalog()}");
            //3. Thuc hien callSt va nhan ResultSet
            //--proc la cau select thi thuc hien phuong thuc executeQuery()
            //--proc la cau lenh thuc hien insert, update, delete ma chi co tham so vao - executeUpdate()
            //--proc la cau lenh thuc hien insert, update, delete ma co tham so ra - execute()
            ResultSet rs = callSt.executeQuery();
            listCatalog = new ArrayList<>();
            //4. Duyet resultset day du lieu ra listStudent
            while (rs.next()) {
                Catalog cat = new Catalog();
                cat.setCatagoriesID(rs.getInt("catagoriesID"));
                cat.setCatagoriesName(rs.getString("catagoriesName"));
                cat.setCatagoriesStatus(rs.getBoolean("catagoriesStatus"));
                //add vao list
                listCatalog.add(cat);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listCatalog;
    }


    @Override
    public Catalog findById(Integer id) {
        Connection conn = null;
        CallableStatement callSt = null;
        Catalog catalogInfo = null;
        try {
            //1. Thuc hien ket noi den CSDL
            conn = ConnectionDB.openConnection();
            //2. Khoi tao doi tuon CallableStatement de goi procedure
            callSt = conn.prepareCall("{call proc_GetcatalogbyId(?)}");
            //set gia tri cho tham so vao
            callSt.setInt(1, id);
            //3. Thuc hien callSt va nhan ResultSet
            ResultSet rs = callSt.executeQuery();
            catalogInfo = new Catalog();
            //4. Duyet resultset day du lieu ra studentInfo
            if (rs.next()) {
                catalogInfo.setCatagoriesID(rs.getInt("catagoriesID"));
                catalogInfo.setCatagoriesName(rs.getString("catagoriesName"));
                catalogInfo.setCatagoriesStatus(rs.getBoolean("catagoriesStatus"));
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return catalogInfo;
    }


    @Override
    public boolean save(Catalog catalog) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_insertcatalog(?)}");
            //THuc hien set gia tri cho cac tham so vao

            callSt.setString(1, catalog.getCatagoriesName());
            callSt.executeUpdate();

        } catch (Exception ex) {
            result = false;
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return result;
    }

    @Override
    public boolean update(Catalog catalog) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_updatecatalog(?,?,?)}");
            //THuc hien set gia tri cho cac tham so vao
            callSt.setInt(1, catalog.getCatagoriesID());
            callSt.setString(2, catalog.getCatagoriesName());
            callSt.setBoolean(3, catalog.isCatagoriesStatus());
            callSt.executeUpdate();
        } catch (Exception ex) {
            result = false;
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return result;

    }

    @Override
    public List<Catalog> searchByName(String name) {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Catalog> listCatalog = null;
        try {
            //1. Thuc hien ket noi den CSDL
            conn = ConnectionDB.openConnection();
            //2. Khoi tao doi tuon CallableStatement de goi procedure
            callSt = conn.prepareCall("{call proc_GetcatalogbyName(?)}");
            callSt.setString(1,name);
            //3. Thuc hien callSt va nhan ResultSet
            //--proc la cau select thi thuc hien phuong thuc executeQuery()
            //--proc la cau lenh thuc hien insert, update, delete ma chi co tham so vao - executeUpdate()
            //--proc la cau lenh thuc hien insert, update, delete ma co tham so ra - execute()
            ResultSet rs = callSt.executeQuery();
            listCatalog = new ArrayList<>();
            //4. Duyet resultset day du lieu ra listStudent
            while (rs.next()) {
                Catalog cat = new Catalog();
                cat.setCatagoriesID(rs.getInt("catagoriesID"));
                cat.setCatagoriesName(rs.getString("catagoriesName"));
                cat.setCatagoriesStatus(rs.getBoolean("catagoriesStatus"));
                //add vao list
                listCatalog.add(cat);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listCatalog;

    }



    @Override
    public boolean updateCatalogStatus(int  id) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_Deletecatalog(?)}");
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
