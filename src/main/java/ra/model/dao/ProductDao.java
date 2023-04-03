package ra.model.dao;

import ra.model.entity.Product;

import java.util.List;

public interface ProductDao <T,V> extends AppDao<T,V>{
    Product findById(String id);

    List<T> searchByName(String name);
    boolean  updateProductStatus(int id);
     List<Product> findAllProduct(Integer cataID);
     List<T> homeProduct();
}
