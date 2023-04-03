package ra.model.serviceImp;

import ra.model.dao.UserDao;
import ra.model.daoImp.UserDaoImp;
import ra.model.entity.User;
import ra.model.service.UserServices;

import java.util.List;

public class UserSevicesImp<T,V> implements UserServices<User,Integer> {
    private static UserDao<User,Integer> userDao = new UserDaoImp();

    @Override
    public boolean register(User user) {
        return userDao.register(user);
    }

    @Override
    public User login(String userName, String pass) {
        return userDao.login(userName,pass);
    }

    @Override
    public List<User> searchByName(String name) {
        return userDao.searchByName(name);
    }

    @Override
    public boolean updateUserStatus(int id) {
        return userDao.updateUserStatus(id);
    }

    @Override
    public boolean trueUserStatus(int id) {
        return userDao.trueUserStatus(id);
    }

    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }

    @Override
    public User findById(Integer t) {
        return userDao.findById(t);
    }

    @Override
    public boolean save(User user) {
        return userDao.save(user);
    }

    @Override
    public boolean update(User user) {
        return userDao.update(user);
    }
}
