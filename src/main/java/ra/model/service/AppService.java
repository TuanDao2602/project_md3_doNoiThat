package ra.model.service;

import java.util.List;

public interface AppService <T,V>{
    List<T> findAll();
    T findById(V t);
    boolean save(T t);
    boolean update(T t);
}
