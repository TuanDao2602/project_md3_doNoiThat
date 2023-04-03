package ra.model.dao;

import java.util.List;

public interface CatalogDAO<T,V> extends AppDao<T,V> {
    List<T> searchByName(String name);
    boolean  updateCatalogStatus(int id);
}
