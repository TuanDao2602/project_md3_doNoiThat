package ra.model.service;

import ra.model.entity.Product;

import java.util.List;

public interface ProductService<T,V> extends AppService<T,V>{
    Product findById(Integer id);

    List<T> searchByName(String name);

    boolean updateProductStatus(int id);
    public List<Product> findAllProduct(Integer cataID);
    List<T> homeProduct();



}
