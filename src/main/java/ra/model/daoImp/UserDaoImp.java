package ra.model.daoImp;

import ra.model.dao.UserDao;
import ra.model.entity.Product;
import ra.model.entity.User;
import ra.model.util.ConnectionDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImp implements UserDao {
    @Override
    public boolean register(User user) {
        Connection conn = null;
        CallableStatement calSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            calSt = conn.prepareCall("{call proc_register(?,?,?)}");
            calSt.setString(1,user.getUserName());
            calSt.setString(2,user.getPassword());
            calSt.setString(3,user.getFullName());
            calSt.executeUpdate();
        }catch (Exception e){
            result = false;
            e.printStackTrace();
        }
        finally {
            ConnectionDB.closeConnection(conn,calSt);
        }
        return result;
    }

    @Override
    public User login(String userName, String pass) {
        Connection conn = null;
        CallableStatement calSt = null;
        User user= null;
        try {
            conn = ConnectionDB.openConnection();
            calSt = conn.prepareCall("{call proc_login(?,?)}");
            calSt.setString(1,userName);
            calSt.setString(2,pass);
            ResultSet rs = calSt.executeQuery();
            user = new User();
            if (rs.next()){
                user.setUserId(rs.getInt("userID"));
                user.setUserName(rs.getString("userName"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setAddress(rs.getString("address"));
                user.setPhoneNumber(rs.getString("phoneNumber"));
                user.setDateOfBirth(rs.getDate("dateOfBirth"));
                user.setUserStatus(rs.getBoolean("statususer"));
                user.setFullName(rs.getString("fullName"));
                user.setPermisson(rs.getBoolean("permisson"));


            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            ConnectionDB.closeConnection(conn,calSt);
        }
        return user;
    }

    @Override
    public List searchByName(String name) {
        Connection conn = null;
        CallableStatement callSt = null;
        List<User> listUser = null;
        try {
            //1. Thuc hien ket noi den CSDL
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call proc_SearchUserByName(?)}");
            callSt.setString(1,name);

            ResultSet rs = callSt.executeQuery();
            listUser = new ArrayList<>();
            //4. Duyet resultset day du lieu ra listStudent
            while (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("userID"));
                user.setUserName(rs.getString("userName"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setAddress(rs.getString("address"));
                user.setPhoneNumber(rs.getString("phoneNumber"));
                user.setDateOfBirth(rs.getDate("dateOfBirth"));
                user.setUserStatus(rs.getBoolean("statususer"));
                user.setFullName(rs.getString("fullName"));
                user.setPermisson(rs.getBoolean("permisson"));
                //add vao list
                listUser.add(user);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listUser;

    }

    @Override
    public boolean updateUserStatus(int id) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call deleteUser(?)}");
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

    @Override
    public boolean trueUserStatus(int id) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean result = true;
        try {
            conn = ConnectionDB.openConnection();
            callSt = conn.prepareCall("{call addStatus(?)}");
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


    @Override
    public List findAll() {

        Connection conn = null;
        CallableStatement callSt = null;
        List<User> listUser = null;
        try {
            //1. Thuc hien ket noi den CSDL
            conn = ConnectionDB.openConnection();
            //2. Khoi tao doi tuon CallableStatement de goi procedure
            callSt = conn.prepareCall("{call proc_proc_getAllUser()}");
            //3. Thuc hien callSt va nhan ResultSet
            //--proc la cau select thi thuc hien phuong thuc executeQuery()
            //--proc la cau lenh thuc hien insert, update, delete ma chi co tham so vao - executeUpdate()
            //--proc la cau lenh thuc hien insert, update, delete ma co tham so ra - execute()
            ResultSet rs = callSt.executeQuery();
            listUser = new ArrayList<>();
            //4. Duyet resultset day du lieu ra listStudent
            while (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("userID"));
                user.setUserName(rs.getString("userName"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setAddress(rs.getString("address"));
                user.setPhoneNumber(rs.getString("phoneNumber"));
                user.setDateOfBirth(rs.getDate("dateOfBirth"));
                user.setUserStatus(rs.getBoolean("statususer"));
                user.setFullName(rs.getString("fullName"));
                user.setPermisson(rs.getBoolean("permisson"));
                //add vao list
                listUser.add(user);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionDB.closeConnection(conn, callSt);
        }
        return listUser;

    }



    @Override
    public Object findById(Integer id) {
        Connection conn = null;
        CallableStatement callSt = null;
        List<User> listUser = null;
        try {
            conn=ConnectionDB.openConnection();
            callSt=conn.prepareCall("{call proc_proc_findUserById(?)}");
            callSt.setInt(1,id);
            ResultSet rs = callSt.executeQuery();
            listUser=new ArrayList<>();
            while (rs.next()){
                    User user = new User();
                    user.setUserId(rs.getInt("userID"));
                    user.setUserName(rs.getString("userName"));
                    user.setPassword(rs.getString("password"));
                    user.setEmail(rs.getString("email"));
                    user.setAddress(rs.getString("address"));
                    user.setPhoneNumber(rs.getString("phoneNumber"));
                    user.setDateOfBirth(rs.getDate("dateOfBirth"));
                    user.setUserStatus(rs.getBoolean("statususer"));
                    user.setFullName(rs.getString("fullName"));
                    user.setPermisson(rs.getBoolean("permisson"));
                    //add vao list
                    listUser.add(user);
            }
        }catch (SQLException ex){
            ex.printStackTrace();
        }
        finally {
            ConnectionDB.closeConnection(conn,callSt);
        }
        return null;
    }


    @Override
    public boolean save(Object o) {
        return false;
    }

    @Override
    public boolean update(Object o) {
        return false;
    }
}
