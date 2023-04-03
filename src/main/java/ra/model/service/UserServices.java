package ra.model.service;

import ra.model.entity.User;

import java.util.List;

public interface UserServices<T,V> extends AppService<T,V> {
    boolean register(User user);
    User login(String userName, String pass);
    List<T> searchByName (String name);
    boolean updateUserStatus (int id);
    boolean trueUserStatus (int id);


}
