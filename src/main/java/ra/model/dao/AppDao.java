package ra.model.dao;

import java.util.List;

public interface AppDao<T,V> {
    List<T> findAll();
    T findById(Integer id);
    boolean save(T t);
    boolean update(T t);
}
