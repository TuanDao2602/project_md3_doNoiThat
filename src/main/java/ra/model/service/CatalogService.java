package ra.model.service;

import java.util.List;

public interface CatalogService<T,V> extends AppService<T,V>{
    List<T> searchByName(String name);

    boolean updateCatalogStatus(int id);
}
